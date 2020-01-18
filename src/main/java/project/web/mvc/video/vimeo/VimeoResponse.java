//package project.web.mvc.video.vimeo;
//
//import lombok.SneakyThrows;
//import org.json.JSONException;
//import org.json.JSONObject;
//
//public class VimeoResponse {
//
//    private JSONObject json;
//    private JSONObject headers;
//    private int statusCode;
//
//    public VimeoResponse(JSONObject json, JSONObject headers, int statusCode) {
//        this.json = json;
//        this.headers = headers;
//        this.statusCode = statusCode;
//    }
//
//    public JSONObject getJson() {
//        return json;
//    }
//
//    public JSONObject getHeaders() {
//        return headers;
//    }
//
//    public int getRateLimit() throws JSONException {
//        return getHeaders().getInt("X-RateLimit-Limit");
//    }
//
//    public int getRateLimitRemaining() throws JSONException {
//        return getHeaders().getInt("X-RateLimit-Remaining");
//    }
//
//    public String getRateLimitReset() throws JSONException {
//        return getHeaders().getString("X-RateLimit-Reset");
//    }
//
//    public int getStatusCode() {
//        return statusCode;
//    }
//
//    @SneakyThrows
//    public String toString() {
//        return new StringBuffer("HTTP Status Code: \n").append(getStatusCode()).append("\nJson: \n").append(getJson().toString(2)).append("\nHeaders: \n").append(getHeaders().toString(2)).toString();
//    }
//}
