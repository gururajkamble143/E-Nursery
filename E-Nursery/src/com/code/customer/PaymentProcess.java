package com.code.customer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.conn.ConnectionProvider;
import com.mail.SendMailSSL;

@WebServlet(name = "PaymentProcess1", urlPatterns = { "/PaymentProcess1" })
public class PaymentProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PaymentProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String totalPrice= request.getParameter("totalPrice");
		String card_no= request.getParameter("card_no");
		String month_year= request.getParameter("month_year");
		String cvv= request.getParameter("cvv");
		
		int id = 0;
        String temp_id = "CH202021";
        int a = id+1;
        System.out.println("Max Id: "+a);
		String OrderNo = temp_id + a;
		System.out.println("Order No. is ="+OrderNo);
		
		HttpSession session=request.getSession();
		String email=session.getAttribute("email").toString();
		
		try 
		{
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps1 = con.prepareStatement("INSERT INTO `payment_details`(`totalPrice`, `card_no`, `month_year`, `cvv`, `payment_by`) VALUES ('"+totalPrice+"','"+card_no+"','"+month_year+"','"+cvv+"','"+email+"')");
			int i=ps1.executeUpdate();
			if (i>0) 
			{
				PreparedStatement ps2 = con.prepareStatement("DELETE FROM `cart_whish_list_products` where request_by='"+email+"'");
				int i2=ps2.executeUpdate();
				System.out.println("Deletion Done");
				
				System.out.println("Payment Done");
				
				SendMailSSL sendmail=new SendMailSSL();
				
				String Sub="Order Conform";
				String Msg="Hello, Your Order is conform and Your Order Number is '"+OrderNo;
		                     
		        sendmail.EmailSending(email, Sub, Msg);
		                    
				response.sendRedirect("RatingFeedback.jsp?Done");
			}
			else 
			{
				System.out.println("Login fail");
				response.sendRedirect("paymentProcess.jsp?fail=done");
			}
		}
		catch (Exception e) 
		{
			System.out.println("Exc "+e);
		}
	}
}
