package JSON;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

public class Imgloadwon {

	public static InputStream getinputstream(String URL)
	{
		URL url;
		try {
			url = new URL(URL);
			URLConnection  conn=   url.openConnection();
			conn.connect();
			HttpURLConnection httpconn   = (HttpURLConnection)conn;
			int code=   httpconn.getResponseCode();
			if (code!=HttpURLConnection.HTTP_OK)
			{System.out.println("不成功");}
			else{
				System.err.println("连接成功");
				return httpconn.getInputStream();
			}	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	
	}
}
