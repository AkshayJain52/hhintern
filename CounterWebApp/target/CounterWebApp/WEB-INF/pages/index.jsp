<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>resume</title>
</head>
<body>
 <div style="width:800px; margin:0 auto;text-align:center;color: blue">
        <h1>Resume Writing</h1>
    </div>
 <form action = "welcome" method="get">
 Name:
*<input style="color: #f00" name = "First_name" type="text" value="Your first name" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'Your first name') {this.style.color='#0f0'; this.value=''}">
*<input style="color: #f00" name = "Family_name" type="text" value="Family_name" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'Family_name') {this.style.color='#0f0'; this.value=''}">
<br><br>
Email_id:
*<input style="color: #f00" name = "email_id" type="text" value="Your email" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'Your email') {this.style.color='#0f0'; this.value=''}">
<br><br>
Phone_no.:
*<input style="color: #f00" name = "phone_no" type="text" value="phone_no" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'phone_no') {this.style.color='#0f0'; this.value=''}">
<br><br>
Address:
<textarea style="color: #f00" name = "address" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'address') {this.style.color='#0f0'; this.value=''}">
address</textarea>
<br><br>
Another contact information :
<br><br> 
Facebook:
<input type = "radio" name = "another_contact_information" value = "Facebook">
Skype:
<input type = "radio" name = "another_contact_information" value = "Skype">
<br><br>
Website:
<input type = "radio" name = "another_contact_information" value = "Website">
Linkedin:
<input type = "radio" name = "another_contact_information" value = "Linkedin">
<br><br>
Github:
<input type = "radio" name = "another_contact_information" value = "Github">
None:
<input type = "radio" name = "another_contact_information" value = "none" checked="checked">
<br><br>
Work_experience:
<input style="color: #f00" name = "work_experience" type="text" value="work_experience" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'work_experience') {this.style.color='#0f0'; this.value=''}">
<br><br>
Work_position:
<input style="color: #f00" name = "work_position" type="text" value="work_position" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'work_position') {this.style.color='#0f0'; this.value=''}">
<br><br>
Company_name:
<input style="color: #f00" name = "company_name" type="text" value="company_name" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'company_name') {this.style.color='#0f0'; this.value=''}">
<br><br>
Work_task:
<input style="color: #f00" name = "work_task" type="text" value="work_task" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'work_task') {this.style.color='#0f0'; this.value=''}">
<br><br>
Projects:
<input style="color: #f00" name = "personal_projects1" type="text" value="personal_projects1" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'personal_projects1') {this.style.color='#0f0'; this.value=''}">

<input style="color: #f00" name = "personal_projects2" type="text" value="personal_projects2" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'personal_projects2') {this.style.color='#0f0'; this.value=''}">

<input style="color: #f00" name = "personal_projects3" type="text" value="personal_projects3" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'personal_projects3') {this.style.color='#0f0'; this.value=''}">

<input style="color: #f00" name = "personal_projects4" type="text" value="personal_projects4" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'personal_projects4') {this.style.color='#0f0'; this.value=''}">
<br><br>
Education:
<input style="color: #f00" name = "education" type="text" value="education" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'education') {this.style.color='#0f0'; this.value=''}">
<br><br>
Education_courses:
<input style="color: #f00" name = "education_courses" type="text" value="education_courses" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'education_courses') {this.style.color='#0f0'; this.value=''}">
<br><br>
Skills:
<input style="color: #f00" name = "skills1" type="text" value="skills1" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'skills1') {this.style.color='#0f0'; this.value=''}">

<input style="color: #f00" name = "skills2" type="text" value="skills2" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'skills2') {this.style.color='#0f0'; this.value=''}">

<input style="color: #f00" name = "skills3" type="text" value="skills3" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'skills3') {this.style.color='#0f0'; this.value=''}">
<br><br>
Achievements:
<input style="color: #f00" name = "achievements" type="text" value="achievements" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'achievements') {this.style.color='#0f0'; this.value=''}">
<br><br>
Certificates:
<input style="color: #f00" name = "certificates" type="text" value="certificates" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'certificates') {this.style.color='#0f0'; this.value=''}">
<br><br>
Interests:
<input style="color: #f00" name = "interests" type="text" value="interests" onblur="if(this.value == '') { this.style.color='#f00'; }" onfocus="if (this.value == 'interests') {this.style.color='#0f0'; this.value=''}">
<br><br>
<input type = "submit" value = "save" > 
</form>
</body>
</html>