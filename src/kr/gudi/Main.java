package kr.gudi;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Main extends HttpServlet {

	/*
	 * override _ 해서 doGet/doPost 갖고오기 _ 상속받은 걸 재구성하겟당!! thows ServletException,
	 * IOException -자동으로 예외처리 해주겠다. 서블릿과, 입출력 관한 예외처리!!	 
	 */

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet : Main");
		
		getParam(req);
	}

	/*
	 * post방식을 쓰려면? -post라는 메소드를 쓸 수 있는 화면이 필요하다!! 별개의 화면이 필요하다. 화면이 있어야 버튼이든!!
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost");
		//한글이 깨지지 않도록 request에서 setCharacterEncoding을 설정해준다.
		req.setCharacterEncoding("UTF-8");
		getParam(req);
	}

	// req 값을 받아서 실행해 주는 함수
	void getParam(HttpServletRequest req) {
		Enumeration<?> names = req.getParameterNames();

		while (names.hasMoreElements()) {
			String paramName = (String) names.nextElement();
			String value = req.getParameter(paramName);
			System.out.println(paramName + " : " + value);
		}
	}

}
