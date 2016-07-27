<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--  <form action = "index.jsp" method="get"> -->
<!-- getting the parameter from index page  -->

		<%
		String First_name=request.getParameter("First_name");
		String Family_name=request.getParameter("Family_name");
		String email_id=request.getParameter("email_id");
		String phone_no=request.getParameter("phone_no");
		String address=request.getParameter("address");
		String another_contact_information=request.getParameter("another_contact_information");
		String work_experience=request.getParameter("work_experience");
		String work_position=request.getParameter("work_position");
		String company_name=request.getParameter("company_name");
		String work_task=request.getParameter("work_task");
		String personal_projects1=request.getParameter("personal_projects1");
		String personal_projects2=request.getParameter("personal_projects2");
		String personal_projects3=request.getParameter("personal_projects3");
		String personal_projects4=request.getParameter("personal_projects4");
		String education=request.getParameter("education");
		String education_courses=request.getParameter("education_courses");
		String skills1=request.getParameter("skills1");
		String skills2=request.getParameter("skills2");
		String skills3=request.getParameter("skills3");
		String achievements=request.getParameter("achievements");
		String certificates=request.getParameter("certificates");
		String interests=request.getParameter("interests");
		%>
		<!-- printing the name and other personal details  -->
		<%
		out.println(First_name.toUpperCase());
		out.println(Family_name.toUpperCase()+"<br>");
		out.println(email_id.toLowerCase()+"<br>");
		out.println(phone_no+"<br>");
		out.println(address+"<br>");
		out.println("<b>Another_contact_information<br></b>");
		%>
		<!-- printing the professional details  -->
		<%
		out.println(another_contact_information+"<br><br>");
		out.println("<b>Work_experience<br></b>");
		out.println(work_experience+"<br>");
		out.println(work_position+"<br>");
		out.println(company_name+"<br>");
		out.println(work_task+"<br><br>");
		out.println("<b>Personal_projects<br></b>");
		out.println(personal_projects1+"<br>");
		out.println(personal_projects2+"<br>");
		out.println(personal_projects3+"<br>");
		out.println(personal_projects4+"<br><br>");
		out.println("<b>Education<br></b>");
		out.println(education+"<br>");
		out.println(education_courses+"<br><br>");
		out.println("<b>Skills<br></b>");
		out.println(skills1+"<br>");
		out.println(skills2+"<br>");
		out.println(skills3+"<br><br>");
		out.println("<b>Achievements<br></b>");
		out.println(achievements+"<br>");
		out.println("<b>Certificates<br></b>");
		out.println(certificates+"<br>");
		out.println("<b>Interests<br></b>");
		out.println(interests+"<br>");
%>
 
<!-- link to download the page in pdf and docx  -->
        <a href="download_pdf">downloadpdf</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <a href="download_docx">downloaddocx</a>
</body>
</html>