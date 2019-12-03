package JSON;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

public class JSONmm {
	 public  paixuOBJ obj;
	    public  HttpServletResponse response;
	      public int  code;
	      public String message;
	  
	      
	      
	      
		public JSONmm(paixuOBJ obj, HttpServletResponse response, int code,
				String message) {
			
			this.obj = obj;
			this.response = response;
			this.code = code;
			this.message = message;
		}




		public  void result() {
			jsonclassM  c=new jsonclassM();
			c.setCode(code);
			c.setObj(obj);
c.setMessage(message);
		
		    
			JSONObject c1 = JSONObject.fromObject(c);
			
		
			PrintWriter pw = null;
			try {
				pw = response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			response.setCharacterEncoding("UTF-8");
//			response.setHeader("Content-Type", "application/json;charset=utf-8");
			
//			response.setContentType("text/html; charset=UTF-8");

			System.out.println(c1.toString());
		  pw.print(c1.toString());
		}
		
}
