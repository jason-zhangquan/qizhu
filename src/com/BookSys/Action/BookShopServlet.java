package com.BookSys.Action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BookSys.Entity.Book;

public class BookShopServlet extends HttpServlet {

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

		doPost(request, response);
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

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		String bno = null;
		String bname = null;
		String bprices = null;
		String bnum = null;
		double price = 0;
		int num = 0;
		// double countPrice=0;

		// book.jsp
		bno = request.getParameter("bno");
		bname = request.getParameter("bname");
		bprices = request.getParameter("price");
		bnum = request.getParameter("num");
		// ת��
		price = Double.parseDouble(bprices);
		num = Integer.parseInt(bnum);
		HttpSession session = request.getSession();

		// �ж��Ƿ��ǵ�һ�ι��򣬼����ǵ�һ�ι���NEW
		// ���ǵ�һ�ι����Ǵ�session�л�ȡ�����޸�����
		Book book = null;
		List<Book> books = null;
		book = new Book();
		book.setBno(bno);
		book.setBname(bname);
		book.setPrice(price);
		book.setNum(num);
		books = (List<Book>) session.getAttribute("books");
		if (books == null) {
			books = new ArrayList<Book>();
			books.add(book);
		} else {
			boolean flag = false;
			for (Book b : books) {
				if (bno.equals(b.getBno())) {// �Ѿ�����Ȿ�飬ֱ�Ӽ������Ϳ�����
					flag = true;
					b.setNum(b.getNum() + num);
					break;
				} else {
					flag = false;
				}
			}
			if(!flag){
				books.add(book);
			}
			// �޸�����
		}

		session.setAttribute("books", books); // �󶨵�session��

		// �ض���
		response.sendRedirect("BookShop.jsp");

		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
