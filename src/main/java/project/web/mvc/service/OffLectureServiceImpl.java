package project.web.mvc.service;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.common.collect.Lists;

import project.web.mvc.domain.OffLecture;
import project.web.mvc.repository.OffLectureRepository;
import project.web.mvc.util.FileUtils;

@Service
public class OffLectureServiceImpl implements OffLectureService {
	@Resource(name="fileUtils") 
	private FileUtils fileUtils; 
	
	@Autowired
	private OffLectureRepository offLectureRepository;

	@Override
	public void offLecInsert(OffLecture offLecture, HttpServletRequest request) throws Exception {
		OffLecture result = offLectureRepository.save(offLecture);
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		
		while(iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if(multipartFile.isEmpty()==false) {
				System.out.println("----file start----");
				System.out.println("name : "+multipartFile.getName());
				System.out.println("filename : "+multipartFile.getOriginalFilename());
				System.out.println("size : "+multipartFile.getSize());
				System.out.println("----file end----");
			}
		}
		
		//List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);

	}
	
	@Transactional
	@Override
	public void offLecUpdate(OffLecture inoffLecture) {
		OffLecture offLecture = offLectureRepository.findByOffLectureNo(inoffLecture.getOffLectureNo());
		offLecture.setCategory(inoffLecture.getCategory());
		offLecture.setOffDetail(inoffLecture.getOffDetail());
		offLecture.setOffLectureDate(inoffLecture.getOffLectureDate());
		offLecture.setOffLectureName(inoffLecture.getOffLectureName());
		offLecture.setOffLectureSeat(inoffLecture.getOffLectureSeat());
		offLecture.setOffLectureTeacher(inoffLecture.getOffLectureTeacher());
	}

	@Override
	public void offLecDelete(Long offLectureNo) {
		offLectureRepository.deleteById(offLectureNo);
		
	}

	@Override
	public List<OffLecture> selectAll() {
		List<OffLecture> list = Lists.newArrayList(offLectureRepository.findAll());
		System.out.println(list);
		for(OffLecture offLecture: list) {
			System.out.println(offLecture);
		}
		return list;
	}

	@Override
	public OffLecture selectByOffNo(Long offLectureNo) {
		OffLecture offLecture = offLectureRepository.findById(offLectureNo).orElse(null);
		return offLecture;
	}
	
	@Transactional
	@Override
	public OffLecture findByOffLectureNo(Long offLectureNo) {
		OffLecture result = offLectureRepository.findById(offLectureNo).orElse(null);
		return result;
	}

	@Override
	public Page<OffLecture> selectAll(int pageNum) {
		return offLectureRepository.findByOrderByOffLectureNo(PageRequest.of(pageNum - 1, 9));
	}
	
}
