<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   request.setCharacterEncoding("UTF-8");
   String loid = request.getParameter("lid");
   String lopw = request.getParameter("lpw");
   String pw ="";
   String id ="";
  
   
   out.println(loid+"<br>");
   out.println(lopw+"<br>");
   // 전페이지 넘어온거 데이터 저장 (바꿔줄부분)
   
   Connection MyConn = null;
   String sUrl = "jdbc:mysql://localhost:3306/honey";
   String sUser = "root";
   String sPwd = "ghdwls74318";
   Class.forName("com.mysql.jdbc.Driver");
   MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
   out.println("데이터베이스 연결이 성공<br>");
   //연결
   
      String sSql = ("select tipid, tippw, tipname from honey.tb_project ;"); //변수 만났을때는 "+  +"를 입력해준다.
      out.println(sSql+"<br>");
   //쿼리문 인설트(바꾸줄부분)
 	  ResultSet rs = null;
      Statement stmt = null;
      
      try{stmt = MyConn.createStatement();
	      rs = stmt.executeQuery(sSql);
	      
	      while(rs.next()){
	    	  id =rs.getString("tipid");
		      pw = rs.getString("tippw");
		    	  if(loid.equals(id)){
		    		  if(lopw.equals(pw)){
		    		  String suname =rs.getString("tipname");
		    		  session.setAttribute("Uid",loid);
		    	      session.setAttribute("Uname",suname);
		    		  
		    		  }
		    	  }
		    	 
	      
	      }
	      /* String sid = rs.getString("tipid");
	      String suname = rs.getString("tipname"); */
	      //session.setAttribute("Uid",sid);
	      //session.setAttribute("Uname",suname);
	 
    	   
    	  
    	   
    	%>   
    	  <%--  <table width="500" border="1">
    	     <tr>
    	        <th>아이디</th>
    	        <th>비번</th>
    	     </tr>
    	<%
    	
    	   while(rs.next()){  //포인터를 맨처음으로 선택되게 하는 것
	    	   String sid = rs.getString("tipid");
	    	   String spw = rs.getString("tippw");
    	%>     
    	     <tr>
    	        <th><%=sid %></th>
    	        <th><%=spw %></th>
    	     </tr>
    	<%
    	     }
    	%>
    	   </table> --%>
    	<%    
    	} catch (SQLException ex) {
    	   out.println("Select Error. <br>");
    	   out.println("SQLException: " + ex.getMessage());
    	 
    	} finally {
    	   if(rs != null)
    	      rs.close();
    	   if (stmt != null) 
    	   stmt.close();
    	   if (MyConn != null) 
    	   MyConn.close();
    	   
           
          
          	
    	}
     
      
    	%>
    		<%
    response.sendRedirect("home1.jsp"); 
%> 
    	 	
			
</body>
</html>