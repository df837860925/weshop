package service.wkr.action;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;

public class ImgAction extends Action {
	private static int WIDTH = 140;
	private static int HEIGHT = 30;

	private String[] str = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
			"K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W",
			"X", "Y", "Z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" };
	private Random r = new Random();

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		System.out.println("画一张验证码");
		ServletOutputStream sos = response.getOutputStream();
		StringBuffer sb = new StringBuffer();
		StringBuffer sbsb = new StringBuffer();
		for (int i = 0; i < 4; i++) {
			int index = r.nextInt(str.length);
			sb.append(str[index]);
			sbsb.append(str[index] + " ");
		}
		String content = sb.toString();
		System.out.println(content);
		request.getSession().setAttribute("code", content);
		BufferedImage bi = new BufferedImage(WIDTH, HEIGHT,
				BufferedImage.TYPE_INT_RGB);
		Graphics g = bi.getGraphics();
		g.setColor(Color.BLACK);
		g.drawRect(0, 0, WIDTH, HEIGHT);
		g.setColor(Color.white);
		g.fillRect(0, 0, WIDTH, HEIGHT);
		char[] zifushuzu = sbsb.toString().toCharArray();
		for (int i = 0; i < zifushuzu.length; i++) {
			g.setColor(new Color(r.nextInt(255), r.nextInt(255), r.nextInt(255)));
			g.setFont(new Font("宋体", Font.BOLD, r.nextInt(15) + 20));
			g.drawString(String.valueOf(zifushuzu[i]), (i + 1) * 15, 22);
		}
		g.setColor(Color.CYAN);
		for (int i = 0; i < 300; i++) {
			int x = r.nextInt(WIDTH);
			int y = r.nextInt(HEIGHT);
			g.drawLine(x, y, x, y);
		}
		g.drawLine(10, 10, r.nextInt(130), 10);
		g.drawLine(10, 15, r.nextInt(130), 20);
		ImageIO.write(bi, "jpg", sos);
		sos.flush();
		sos.close();
		return null;
	}
}
