package ch08;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcController
 */
@WebServlet("/CalcController")
public class CalcController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    //controller는 로직을 수행 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int n1 = Integer.parseInt(request.getParameter("n1")); 
		int n2 = Integer.parseInt(request.getParameter("n2"));
		String op = request.getParameter("op"); 

		long result = 0; 

		switch (op) {
		case "+":
			result = n1 + n2;
			break;
		case "-":
			result = n1 - n2;
			break;
		case "*":
			result = n1 * n2;
			break;
		case "/":
			result = n1 / n2;
			break;
		}
		
		//로직 구현이 끝났으니 전달을 해줘야!
		//("키", 결과) -> 데이터를 request 객체에 저장함!
		request.setAttribute("result", result);
		//페이지 호출(저 페이지로 보낸다!) 
		getServletContext().getRequestDispatcher("/ch08/calcResult.jsp")
		.forward(request, response); //리퀘스트, 리스폰스 객체를 포워딩해준다. 보내는 것. result 데이터를 보낸다. 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
