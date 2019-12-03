package service.core;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Mvc_servlet extends HttpServlet {
	Map<String, String[]> map = null;

	/**
	 * Constructor of the object.
	 */
	public Mvc_servlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");

	response.setHeader("Content-Type", "application/json;charset=utf-8");
	//�ӳ�ʼ�����õ�map������Ϣ �Լ����ã� 丁锋
	Properties  map=(Properties)	  this.getServletContext().getAttribute("action");
	Properties  config=(Properties)	  this.getServletContext().getAttribute("config");
	
	//�����Ŀ֮���·��
		    String uri  = request.getRequestURI();
		    //�����ַ�Ĳ�֣��õ���ת������
		    int begin= uri.lastIndexOf("/");
		     int end=uri.indexOf(".");
		     if (begin!=-1&&end!=-1&&end>begin) {
				
		    uri=  uri.substring(begin+1, end);
			}
		    //����ת������ƴ�ӳ���Ҫ���������
		      String  classFormPath=uri+"Form";
		      String  classform=  config.getProperty(classFormPath);
		      //���ظ���
		      
				
			
		      Class class1;
		      ActionForm af = null;
			try {
				class1 = Class.forName(classform);
				 af=   (ActionForm)class1.newInstance();
			// �õ�request������ֵ ��ֵ�����actionform 
			Set<Map.Entry<String, String[]>>	set=   request.getParameterMap().entrySet();
				

			for (Map.Entry<String, String[]> entry : set) {

				Method m=null;
				                        String fuc = entry.getKey();
				                        if (fuc.indexOf("[")>0) {
											
				                        	 m=  class1.getDeclaredMethod("set"+fuc.substring(0,1).toUpperCase()+fuc.substring(1,fuc.length()-2), String.class);
										}
				                        else{
				 m =  class1.getDeclaredMethod("set"+fuc.substring(0,1).toUpperCase()+fuc.substring(1), String.class);}
				 if (entry.getValue().length==1) {
					
					 m.invoke(af, entry.getValue()[0]);
				}
				 else {
					 StringBuffer aBuffer=new StringBuffer();
					 for (int i = 0; i < entry.getValue().length; i++) {
						 if ((entry.getValue().length-1)==i) {
							 aBuffer.append(entry.getValue()[i]);
						}
						 else{aBuffer.append(entry.getValue()[i]+",");}
					}
					 m.invoke(af, aBuffer.toString());
					
				}
					
				

			}
		} catch (Exception e1) {

			e1.printStackTrace();
		}
		      
		// ��request.response �Լ�Ҫ�õ�ֵ�� ���ݵ�ʵ����תҳ�档
		String classForName = config.getProperty(uri);
		Class o;
		try {
			o = Class.forName(classForName);

			Action action=(Action) o.newInstance();
			ActionForword afd = action.execute(request, response,af);
			if (afd!=null) {
				
				afd.forword(request, response);
			}

	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}

	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// ׼��һ����ʵ���MAP����
		Properties action = new Properties();
		String configpath = this.getServletConfig().getInitParameter(
				"configLocaltion");
		String path = this.getServletContext().getRealPath("/") + configpath;

		Properties config = new Properties();
		try {
			config.load(new FileInputStream(path));
			this.getServletContext().setAttribute("action", action);
			this.getServletContext().setAttribute("config", config);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
