package service.wkr.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.wkr.form.ZhuceActionForm;

public class ZhuceAction extends Action{
	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		String yanzhengma = (String)request.getSession().getAttribute("code");
		ZhuceActionForm af = (ZhuceActionForm)actionForm;
		if (af.getYanZhengma().toUpperCase().equals(request.getSession().getAttribute("code").toString())) {
			System.out.println("验证码正确");
		}
		else{
			System.out.println("验证码错误");
		}
		System.out.println(af);
		return null;
	}
}
