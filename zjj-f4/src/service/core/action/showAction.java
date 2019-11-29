package service.core.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.json.JsonObject;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JSON.JSONm;
import JSON.Users;
import JSON.UsersDaoImpl;
import JSON.jsonclass;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.core.form.showForm;

public class showAction extends Action{

	@SuppressWarnings("deprecation")
	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		    showForm  s=(showForm)actionForm;
		   String name=  s.getName();
		   String value=s.getValue();
		   System.out.println(name+"======="+value);
		    
		
//		        ServletOutputStream  sos=            response.getOutputStream();
//		  String  aStrin="{a:12,b:11}";
//		  JSONObject object=JSONObject.fromObject(aStrin);
		  UsersDaoImpl ud = new UsersDaoImpl();
			List<Users> list = ud.selectAll();
			
			JSONm  jsoNm=new JSONm(list, response, 0, "获取数据成功");
			jsoNm.result();
//			JSONArray jarr = JSONArray.fromObject(list);
//			jsonclass  c=new jsonclass();
//			c.setList(list);
//			c.setCode(0);
//		    c.setMessage("获取数据成功");
//	
//		
//			JSONObject c1 = JSONObject.fromObject(c);
//			
//		
//			PrintWriter pw = response.getWriter();
////			response.setCharacterEncoding("UTF-8");
////			response.setHeader("Content-Type", "application/json;charset=utf-8");
//			
////			response.setContentType("text/html; charset=UTF-8");
//	
//			System.out.println(c1.toString());
//		  pw.print(c1.toString());
////		  sos.print(URLDecoder.decode(c1.toString()));
//		
//		
		return new ActionForword("succsee");
	}

}
