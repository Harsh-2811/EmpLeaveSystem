package com.dao;

import java.util.List;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;  
import javax.servlet.http.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class addimage
 */
@WebServlet("/addimage")
@MultipartConfig
public class addimage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addimage() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		HttpSession session=request.getSession();
		
		
		int Uid=(Integer)session.getAttribute("Id");
	
		if(Uid!=0)
		{
			try {
				
				ServletFileUpload sf=new ServletFileUpload(new DiskFileItemFactory());
				List<FileItem> items=sf.parseRequest(request);
				
				for(FileItem item:items)
				{
					System.out.println(item.getName());
					File f = new File("C:\\Users\\abc\\eclipse-workspace\\Java_OEP_Final\\WebContent\\image\\"+item.getName()); 
					
			        if (f.exists()) 
			            System.out.println("Exists"); 
			        else
			        {
			        	item.write(new File("C:\\Users\\abc\\eclipse-workspace\\Java_OEP_Final\\WebContent\\image\\"+item.getName()));
						
			        }
			        
			        Class.forName("com.mysql.jdbc.Driver");  
					
					Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/db1","root","");  
					//Statement stmt=con.createStatement();  
					PreparedStatement stmt=con.prepareStatement("UPDATE employee SET  image = ? WHERE Id = ?");  
					stmt.setString(1, item.getName());
					stmt.setInt(2,Uid);
					
					stmt.executeUpdate();
					response.sendRedirect("Home.jsp");
				}
			}catch(Exception e) {System.out.println(e);}
			System.out.println("Success");
		
		
		}  
	}

}
