package kr.gudi;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Main extends HttpServlet {

	/* override _  해서 doGet/doPost 갖고오기 _ 상속받은 걸 재구성하겟당!!
	 * thows ServletException, IOException -자동으로 예외처리 해주겠다.
	 * 서블릿과, 입출력 관한 예외처리!!
	 * 
	 *1)servlet -톰캣 아래에 추가
	 *2)web.xml -> <servlet> / <servlet-mapping> 추가하기
	 */
	 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet");
	}
	
	/* post방식을 쓰려면?
	 * -post라는 메소드를 쓸 수 있는 화면이 필요하다!!
	 * 별개의 화면이 필요하다. 화면이 있어야 버튼이든!! 뭐든!!!! 
	 *  
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost");
	}
	

}
