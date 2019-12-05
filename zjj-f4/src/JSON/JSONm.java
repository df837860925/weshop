package JSON;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

public class JSONm {
	public List list;
	public HttpServletResponse response;
	public int code;
	public String message;

	private static Logger log = Logger.getLogger(JSONm.class);

	public JSONm(List list, HttpServletResponse response, int code,
			String message) {

		this.list = list;
		this.response = response;
		this.code = code;
		this.message = message;
	}

	public void result() {
		jsonclass c = new jsonclass();
		c.setList(list);
		c.setCode(code);
		c.setMessage(message);

		JSONObject c1 = JSONObject.fromObject(c);

		PrintWriter pw = null;
		try {
			pw = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// response.setCharacterEncoding("UTF-8");
		// response.setHeader("Content-Type", "application/json;charset=utf-8");

		// response.setContentType("text/html; charset=UTF-8");

		log.debug(c1.toString());
		pw.print(c1.toString());
	}

}
