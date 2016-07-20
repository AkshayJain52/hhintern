package com.mkyong.controller;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class indexvalidator {
	@NotNull
	@Size(min=2, max=30)
	private String First_name;
	@NotNull
	private String Family_name;
	@NotEmpty(message = " plz enter the email id")
	@Email
	private String email_id ;
	@NotNull
	private int phone_no ;
	private String address ;
	private String another_contact_information;
	private String work_experience;
	private String work_position;
	private String company_name;
	private String work_task;
	private String personal_projects1;
	private String personal_projects2;
	private String personal_projects3;
	private String personal_projects4;
	private String education;
	private String education_courses;
	private String skills1;
	private String skills2;
	private String skills3;
	private String achievements;
	private String certificates;
	private String interests;
	
	public String getWork_task() {
		return work_task;
	}
	public void setWork_task(String work_task) {
		this.work_task = work_task;
	}
	public String getPersonal_projects1() {
		return personal_projects1;
	}
	public void setPersonal_projects1(String personal_projects1) {
		this.personal_projects1 = personal_projects1;
	}
	public String getPersonal_projects2() {
		return personal_projects2;
	}
	public void setPersonal_projects2(String personal_projects2) {
		this.personal_projects2 = personal_projects2;
	}
	public String getPersonal_projects3() {
		return personal_projects3;
	}
	public void setPersonal_projects3(String personal_projects3) {
		this.personal_projects3 = personal_projects3;
	}
	public String getPersonal_projects4() {
		return personal_projects4;
	}
	public void setPersonal_projects4(String personal_projects4) {
		this.personal_projects4 = personal_projects4;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getEducation_courses() {
		return education_courses;
	}
	public void setEducation_courses(String education_courses) {
		this.education_courses = education_courses;
	}
	public String getSkills1() {
		return skills1;
	}
	public void setSkills1(String skills1) {
		this.skills1 = skills1;
	}
	public String getSkills2() {
		return skills2;
	}
	public void setSkills2(String skills2) {
		this.skills2 = skills2;
	}
	public String getSkills3() {
		return skills3;
	}
	public void setSkills3(String skills3) {
		this.skills3 = skills3;
	}
	public String getAchievements() {
		return achievements;
	}
	public void setAchievements(String achievements) {
		this.achievements = achievements;
	}
	public String getCertificates() {
		return certificates;
	}
	public void setCertificates(String certificates) {
		this.certificates = certificates;
	}
	public String getInterests() {
		return interests;
	}
	public void setInterests(String interests) {
		this.interests = interests;
	}
	public String getFirst_name() {
		return First_name.toUpperCase();
	}
	public void setFirst_name(String first_name) {
		First_name = first_name.toUpperCase();
	}
	public String getFamily_name() {
		return Family_name.toUpperCase();
	}
	public void setFamily_name(String family_name) {
		Family_name = family_name.toUpperCase();
	}
	public String getEmail_id() {
		return email_id.toLowerCase();
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id.toLowerCase();
	}
	public int getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(int phone_no) {
		this.phone_no = phone_no;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAnother_contact_information() {
		return another_contact_information;
	}
	public void setAnother_contact_information(String another_contact_information) {
		this.another_contact_information = another_contact_information;
	}
	public String getWork_experience() {
		return work_experience;
	}
	public void setWork_experience(String work_experience) {
		this.work_experience = work_experience;
	}
	public String getWork_position() {
		return work_position;
	}
	public void setWork_position(String work_position) {
		this.work_position = work_position;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
}
