package service.core;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public  class ActionForword {
     public String path=null;  //Ҫ��ת��ҳ�棻
     public boolean redirect=false; //�Ƿ��ض���
     
    public ActionForword(String path) {
		
    this(path,false);
    	// TODO Auto-generated constructor stub
	}

	public ActionForword(String path, boolean redirect) {
		
		this.path = path;
		this.redirect = redirect;
	}
	
	public void forword(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{	
		//���Ƿ�����Ҫ��ʾ
		String tishi = (String) request.getAttribute("tishi");
		if (tishi != null) {
			System.out.println("����ʾ:" + tishi);
			response.getWriter().print(tishi);
			request.setAttribute("tishi", tishi);
		} else {
			System.out.println("û����ʾ");
		}
		//�����Ҫ���ʱ��˵�ҳ��Ӧ��Ҫ�Ⱦ�������action ����Ҫȥ.do
		if(this.path.indexOf(".do")<0){//���û��.do
			Properties config=(Properties)request.getSession().getServletContext().getAttribute("config");
			//�����Ϊ�Լ���ҳ�� ���� д����Ӧ��ַ�ľ���
			if (redirect) {
				System.out.println("�������ض���");
				response.sendRedirect(config.getProperty(path));//Ҫ�þ���·�� ��Ϊ���ﲻ��servlet;Ҫ�������ļ��Ӷ�Ӧ����ת��
				
			}
			else {
				request.getRequestDispatcher(config.getProperty(path)).forward(request, response);
			}
		}else{//û��ѡ���ַ
				if(redirect){
					response.sendRedirect(this.path);
				}else{
					request.getRequestDispatcher(this.path).forward(request, response);
					}
			}
		
		
	}

	
}
