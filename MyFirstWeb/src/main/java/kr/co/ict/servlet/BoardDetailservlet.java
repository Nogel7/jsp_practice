package kr.co.ict.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.BoardDAO;
import kr.co.ict.BoardVO;

/**
 * Servlet implementation class BoardDetailservlet
 */
@WebServlet("/boarddetail")
public class BoardDetailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDetailservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request.getParameter를 이용해 글번호 부터 가져옵니다.
		// board_num으로 가져옵니다.int로 자료를 바꿔주세요
		String sbNum = request.getParameter("board_num");
		int bNum = Integer.parseInt(sbNum);
		System.out.println(bNum);
		// dao생성
		BoardDAO dao = BoardDAO.getInstance();
		// dao에서 해당 글번호에 대한 정보를 가져오고
		BoardVO board = dao.getBoardDetail(bNum);
		// 정보가 제대로 들어왔는지 디버깅 해보겠습니다.
		System.out.println(board);
		// 디테일페이지로 포워딩(강사 기준 boarddetail.jsp)후 화면에 데이터 나오는지 체크
		request.setAttribute("board",board);
		RequestDispatcher dp = request.getRequestDispatcher("/board/boarddetail.jsp");
        dp.forward(request, response);
		
		
	}

}
