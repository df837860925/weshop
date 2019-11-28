package service.core.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.core.form.LoginActionForm;

public class LoginAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		LoginActionForm af = (LoginActionForm)actionForm;
		System.out.println(af);
				return null;
		// TODO Auto-generated method stub
		
	}

}
