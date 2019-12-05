package service.core.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;

import JSON.Imgloadwon;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.core.form.DF_loadownForm;

public class DF_loadownAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		 DF_loadownForm  lf=(DF_loadownForm) actionForm;
		   String src=  lf.getSrc();
		  InputStream is=  Imgloadwon.getinputstream(src);
		  BufferedInputStream  bi=new BufferedInputStream(is);
		    int index1= src.lastIndexOf("/");
		    src=src.substring(index1+1);
		  String path=request.getServletContext().getRealPath("/")+"imgloadown/"+src;
		 
		   BufferedOutputStream bo=new BufferedOutputStream(new FileOutputStream(path));  
		  byte [] aa=new byte[1024];
		  
		  int  index=-1;
		  while((index=bi.read(aa))!=-1){
		 bo.write(aa, 0, index);
		 bo.flush();
		  }
		  bi.close();bo.close();
		  
		  
		  System.out.println(path);
		
		return new ActionForword("loadown,"+path);
	}

}
