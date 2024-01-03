package com.conservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//fetching the content from the page
			
			String tiltle = request.getParameter("title");
			String content = request.getParameter("content");
			
			//create a Note object
			Note note = new Note(tiltle, content, new Date());
			
			//create session for connecting the DataBase
		Session session	=FactoryProvider.getFactory().openSession();
		Transaction ts = session.beginTransaction();
		session.save(note);
		ts.commit();
		session.close();
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<h1>Note Added SuccessFully </h1>");
		out.print("<a href='show_all_notes.jsp'>View All Notes</a>");
		
		
			
		} catch (Exception e) {

		
		}
	}

}
