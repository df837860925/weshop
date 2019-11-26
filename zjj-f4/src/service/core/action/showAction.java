package service.core.action;

import java.io.IOException;
import java.util.List;

import javax.json.JsonObject;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		    showForm  s=(showForm)actionForm;
		   String name=  s.getName();
		   String value=s.getValue();
		   System.out.println(name+"======="+value);
		    
		
		  ServletOutputStream outputStream=    response.getOutputStream();
		  
		  String  aStrin="{a:12,b:11}";
		  JSONObject object=JSONObject.fromObject(aStrin);
		  UsersDaoImpl ud = new UsersDaoImpl();
			List<Users> list = ud.selectAll();
			JSONArray jarr = JSONArray.fromObject(list);
			jsonclass  c=new jsonclass();
			c.setList(list);
			c.setCode(0);
		c.setMessage(new String("获取数据成功".getBytes("ISO-8859-1")));
			
		
		
			JSONObject c1 = JSONObject.fromObject(c);
		  
		  outputStream.print(c1.toString());
		
		
		return new ActionForword("succsee");
	}

}
