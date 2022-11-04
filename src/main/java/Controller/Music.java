package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MusicDAO;
import DTO.MusicDTO;


@WebServlet("*.music")
public class Music extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf8"); // post의 한글깨짐현상을 처리하기 위한 로직
		
		String uri = request.getRequestURI();
		try {
			if (uri.equals("/chart.music")) {
				MusicDAO dao = MusicDAO.getInstance();
				List<MusicDTO> musicChartList = dao.musicChartList();
				request.setAttribute("musicChartList", musicChartList);
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
