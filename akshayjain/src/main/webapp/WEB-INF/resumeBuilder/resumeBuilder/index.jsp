<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Navbar Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/summernote-bs3.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/clean-blog.css" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jasny-bootstrap.min.css" />
    <!-- <link href="/resources/css/summernote-bs3.css" rel="stylesheet">
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/clean-blog.css" rel="stylesheet">
    <link href="/resources/css/jasny-bootstrap.min.css" rel="stylesheet"> -->


    <!-- Custom styles for this template -->

    <style type="text/css">
    body {
        padding-top: 80px;
        padding-bottom: 20px;
    }
    @media (min-width: 992px) {
        .navbar {
            padding-right: 15px;
        }
    }
    #myTab li {
        float: none;
    }
    .nav-tabs > li > a {
        margin-right: -5px;
    }
    .nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li > a:hover, .nav-tabs > li.active > a:focus

    {
     background-color: #20A371;
    color: #fff;
    border-radius: 0px;
    border-width: 0px;
     box-shadow: none;
     -webkit-box-shadow: none;
        outline: 0px;
     outline-style: none;
    }
    .note-codable {
        display: none;
    }
    .note-editor {
    background: none repeat scroll 0 0 #e3e3e3;
    border-radius: 2px;
    padding: 0px;
    border: 1px solid #ccc;
}
.note-editable { background: #fff; padding: 7px 5px; outline-style: none; box-shadow: 0 1px 1px rgba(0, 0, 0, 0.34) inset; -moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.34) inset; -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.34) inset;}
.note-toolbar { padding: 5px 3px 7px;}
#myTab-accordion .panel-default > .panel-heading {
    background-color: #20A371;
    border-color: #dddddd;
    color: #fff;
    border-radius: 0px;
}
    </style>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <div class="container">

        <!-- Static navbar -->
        <div class="navbar navbar-fixed-top navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="offcanvas" data-target=".navbar-offcanvas" data-canvas="body">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Project name</a>
                </div>
                <div class="navbar-offcanvas offcanvas">
                    <a class="navmenu-brand" href="#">Project name</a>
                    <ul class="nav navbar-nav">
                        <li><a href="#">Slide in</a>
                        </li>
                        <li><a href="#">Push</a>
                        </li>
                        <li><a href="#">Reveal</a>
                        </li>
                        <li class="active"><a href="./">Off canvas navbar</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a>
                                </li>
                                <li><a href="#">Another action</a>
                                </li>
                                <li><a href="#">Something else here</a>
                                </li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a>
                                </li>
                                <li><a href="#">One more separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>

        <!-- Main component for a primary marketing message or call to action -->
        <div class="jumbotron">
            <h1>Offcanvas Navbar example</h1>
            <p>This example demonstrates using the offcanvas plugin with the navbar.</p>
        </div>

        <p>
            By default the navbar is show on the right side of the screen. You can show it on the left side instead by adding
            <code>.navmenu-fixed-left</code>to the
            <code>.navbar-offcanvas</code>.
        </p>
    </div>
    <!-- /container -->
    <div class="clearfix"></div>

    <div class="container tab-container padding-sm-0">
    <div class="col-xs-12 bg-primary padding-tb-10" style="z-index:9; border-bottom: 2px solid #2676bf;">
        <strong class="lead">Hi, Guest</strong>
    </div>
    <div class="clearfix"></div>
        <ul class="nav nav-tabs hidden-xs col-sm-2 padding-0" id="myTab">
            <li class="active"><a data-toggle="tab" href="#Contact">Contact Information</a>
            </li>
            <li><a data-toggle="tab" href="#Summary">Summary</a>
            </li>
            <li><a data-toggle="tab" href="#Experience">Experience</a>
            </li>
            <li><a data-toggle="tab" href="#Education">Education</a>
            </li>
            <li><a data-toggle="tab" href="#Skills">Skills</a>
            </li>
            <li><a data-toggle="tab" href="#Certifications">Certifications</a>
            </li>
            <li><a data-toggle="tab" href="#Publications">Publications</a>
            </li>
            <li><a data-toggle="tab" href="#Projects">Projects</a>
            </li>
            <li><a data-toggle="tab" href="#Languages">Languages</a>
            </li>
            <li><a data-toggle="tab" href="#Volunteerings">Volunteerings</a>
            </li>
            <li><a data-toggle="tab" href="#Recommendations">Recommendations</a>
            </li>
            <li><a data-toggle="tab" href="#Honors">Honors</a>
            </li>
            <li>
               <p class="well">
                    We will never share, sell or rent your personal information to anyone.
                    <br>
                    <br>Your information is safe and protected by SSL encryption similar to your online banking site.
                </p>

            </li>


        </ul>

        <div id="myTab-accordion" class="panel-group visible-xs"></div>
        <div class="tab-content hidden-xs col-sm-10" id="myTabContent">
            <div id="Contact" class="tab-pane fade in active">
                <div class="col-xs-12 padding-tb-10 padding-xs-0">
                 <form action="" method="" class="form-horizontal">
                    <div class="section-meta">
                        <div class="row">
                            <div class="col-xs-8">
                                <h5>
                                    Contact Information
                                </h5>
                            </div>
                            <div class="col-xs-4 text-right">
                                <button class="btn btn-primary" name="save-now" type="submit">
                                    <span><i class="fa fa-save"></i> Save</span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <hr />
                    <div class="clearfix"></div>
                        <div class="row padding-tb-10">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label for="resume_firstname" class="col-md-3 control-label">First name <sup>*</sup>
                                    </label>
                                    <div class="col-md-9">
                                        <input type="text" size="255" name="resume[firstname]" maxlength="255" id="resume_firstname" class="form-control" autofocus="autofocus">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="resume_lastname" class="col-md-3 control-label">Last name</label>
                                    <div class="col-md-9">
                                        <input type="text" size="255" name="resume[lastname]" maxlength="255" id="resume_lastname" class="form-control">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="resume_phone" class="col-md-3 control-label">Phone</label>
                                    <div class="col-md-9">
                                        <input type="text" size="255" name="resume[phone]" maxlength="255" id="resume_phone" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="resume_website" class="col-md-3 control-label">Website</label>
                                    <div class="col-md-9">
                                        <input type="text" size="255" name="resume[website]" maxlength="255" id="resume_website" class="form-control">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="resume_address" class="col-md-3 control-label">Address</label>

                                    <div class="col-md-9">
                                        <textarea rows="2" name="resume[address]" id="resume_address" cols="40" class="form-control" autocomplete="off"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="resume_email" class="col-md-3 control-label">Email <sup>*</sup>
                                    </label>
                                    <div class="col-md-9">
                                        <input type="email" value="" size="30" name="resume[email]" id="resume_email" class="form-control">
                                    </div>

                                </div>

                            </div>

                            <div class="col-md-3">
                                <div class="well well-sm">
                                    <p>
                                        We will never share, sell or rent your personal information to anyone.
                                        <br>
                                        <br>Your information is safe and protected by SSL encryption similar to your online banking site.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
            <div id="Summary" class="tab-pane fade">
                <form action="" method="" class="form-horizontal">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="resume_designation" class="col-md-2 control-label">Headline</label>
                                <div class="col-md-10">
                                    <input type="text" size="255" name="resume[designation]" maxlength="255" id="resume_designation" class="form-control">
                                    <small class="help-block text-muted">Web Designer, Sales Manager, Preschool Teacher, Administrative Assistant etc</small>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="resume_email" class="col-md-2 control-label">Professional Summary
                                </label>
                                <div class="col-md-9">
                                    <div class="form-control editor">Hello Summernote</div>
                                </div>
                            </div>

                        </div>
                    </div>
                </form>
            </div>
            <div id="Experience" class="tab-pane fade">
                <form action="" method="" class="form-horizontal">
                <fieldset>
                    <legend>
                        <input type="hidden" value="false" name="resume[experiences][0][_destroy]" id="resume_experiences_0__destroy"><a data-confirmify="Are you sure?" class="remove_fields dynamic" href="#">Delete</a>

                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-up" href="#">Move up</a>
                        </span>
                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-down" href="#">Move down</a>
                        </span>
                    </legend>

                    <div class="form-group">
                        <label for="resume_experiences_0_company_name" class="control-label col-sm-2">Company</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="e.g. RM Digital Solutions, Inc." name="resume[experiences][0][company_name]" maxlength="255" id="resume_experiences_0_company_name" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="form-group">
                        <label for="resume_experiences_0_designation" class="control-label col-sm-2">Designation</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="e.g. Marketing Manager" name="resume[experiences][0][designation]" maxlength="255" id="resume_experiences_0_designation" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="resume_experiences_0_start_date" class="control-label col-sm-4">Start date</label>
                                <div class="col-sm-8">
                                    <input type="text" size="30" placeholder="e.g. July 2010" name="resume[experiences][0][start_date]" id="resume_experiences_0_start_date" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group form-block">
                                <label for="resume_experiences_0_end_date" class="control-label col-sm-4">End date</label>
                                <div class="col-sm-8">
                                    <input type="text" size="30" placeholder="e.g. Present" name="resume[experiences][0][end_date]" id="resume_experiences_0_end_date" class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_experiences_0_job_description" class="control-label col-sm-2">Details</label>
                        <div class="col-sm-10">
                            <div class="form-control editor">Detail here</div>

                        </div>
                    </div>
                </fieldset>
                <div class="clearfix"></div>
             </form>
            </div>
            <div id="Education" class="tab-pane fade">
                <form action="" method="" class="form-horizontal">
                <fieldset>
                    <legend>
                        <input type="hidden" value="false" name="resume[educations_attributes][0][_destroy]" id="resume_educations_attributes_0__destroy"><a data-confirmify="Are you sure?" class="remove_fields dynamic" href="#">Delete</a>

                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-up" href="#">Move up</a>
                        </span>
                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-down" href="#">Move down</a>
                        </span>
                    </legend>

                    <div class="form-group">
                        <label for="resume_educations_attributes_0_institute_name" class="control-label col-sm-2">Institute</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="e.g. Boston University" name="resume[educations_attributes][0][institute_name]" maxlength="255" id="resume_educations_attributes_0_institute_name" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="form-group">
                        <label for="resume_educations_attributes_0_degree" class="control-label col-sm-2">Degree</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="e.g. Bachelor of Arts in English" name="resume[educations_attributes][0][degree]" maxlength="255" id="resume_educations_attributes_0_degree" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="resume_educations_attributes_0_start_date" class="control-label col-sm-4">Start date</label>
                                <div class="col-sm-8">
                                    <input type="text" size="30" placeholder="e.g. September 2003" name="resume[educations_attributes][0][start_date]" id="resume_educations_attributes_0_start_date" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group form-block">
                                <label for="resume_educations_attributes_0_end_date" class="control-label col-sm-4">End date</label>
                                <div class="col-sm-8">
                                    <input type="text" size="30" placeholder="e.g. May 2007" name="resume[educations_attributes][0][end_date]" id="resume_educations_attributes_0_end_date" class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="form-group">
                        <label for="resume_educations_attributes_0_description" class="control-label col-sm-2">Details</label>

                        <div class="col-sm-10">
                            <div class="form-control editor">Detail here</div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </fieldset>
                <div class="clearfix"></div>
            </form>

            </div>
            <div id="Skills" class="tab-pane fade">
                <form action="" method="" class="form-horizontal">
                <fieldset class="">
                    <legend>
                        <input type="hidden" value="false" name="resume[skills_attributes][0][_destroy]" id="resume_skills_attributes_0__destroy"><a data-confirmify="Are you sure?" class="remove_fields dynamic" href="#">Delete</a>

                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-up" href="#">Move up</a>
                        </span>
                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-down" href="#">Move down</a>
                        </span>
                    </legend>

                    <div class="form-group">
                        <label for="resume_skills_attributes_0_skill" class="control-label col-sm-2">Skill</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="Your areas of expertise e.g. MS Office, Book-keeping &amp; Accounts Finalization etc" name="resume[skills_attributes][0][skill]" maxlength="255" id="resume_skills_attributes_0_skill" class="form-control">
                            <small class="help-block text-muted">
                                Tip: Add specific keywords as mentioned in the job opening. It would help in getting your resume past the initial screening done by Applicant Tracking Systems and keyword loving recruiters &amp; hiring managers.
                            </small>
                        </div>
                    </div>
                </fieldset>
                <div class="clearfix"></div>
            </form>

            </div>
            <div id="Certifications" class="tab-pane fade">
            <form action="" method="" class="form-horizontal">
                <fieldset>
                    <legend>
                        <input type="hidden" value="false" name="resume[certifications_attributes][0][_destroy]" id="resume_certifications_attributes_0__destroy"><a data-confirmify="Are you sure?" class="remove_fields existing" href="#">Delete</a>

                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-up" href="#">Move up</a>
                        </span>
                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-down" href="#">Move down</a>
                        </span>
                    </legend>

                    <div class="form-group">
                        <label for="resume_certifications_attributes_0_title" class="control-label col-sm-2">Title</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="Name of certification" name="resume[certifications_attributes][0][title]" maxlength="255" id="resume_certifications_attributes_0_title" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_certifications_attributes_0_certifying_authority" class="control-label col-sm-2">Certification authority</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="Name of the organization issuing the certificate" name="resume[certifications_attributes][0][certifying_authority]" maxlength="255" id="resume_certifications_attributes_0_certifying_authority" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_certifications_attributes_0_date" class="control-label col-sm-2">Date</label>
                        <div class="col-sm-10">
                            <input type="text" size="30" placeholder="e.g. September 2013" name="resume[certifications_attributes][0][date]" id="resume_certifications_attributes_0_date" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_certifications_attributes_0_description" class="control-label col-sm-2">Details</label>
                        <div class="col-sm-10">
                            <div class="form-control editor">Detail here</div>

                        </div>
                    </div>


                </fieldset>
                <div class="clearfix"></div>
            </form>
            </div>

            <div id="Publications" class="tab-pane fade">
                <form action="" method="" class="form-horizontal">
                <fieldset>
                    <legend>
                        <input type="hidden" value="false" name="resume[publications_attributes][0][_destroy]" id="resume_publications_attributes_0__destroy"><a data-confirmify="Are you sure?" class="remove_fields existing" href="#">Delete</a>

                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-up" href="#">Move up</a>
                        </span>
                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-down" href="#">Move down</a>
                        </span>
                    </legend>


                    <div class="form-group">
                        <label for="resume_publications_attributes_0_title" class="control-label col-sm-2">Title</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="e.g. Introduction to Interventional Cardiology" name="resume[publications_attributes][0][title]" maxlength="255" id="resume_publications_attributes_0_title" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="form-group">
                        <label for="resume_publications_attributes_0_publisher" class="control-label col-sm-2">Publisher</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="e.g. International Journal of Internal Medicine" name="resume[publications_attributes][0][publisher]" maxlength="255" id="resume_publications_attributes_0_publisher" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="form-group">
                        <label for="resume_publications_attributes_0_date" class="control-label col-sm-2">Date</label>
                        <div class="col-sm-10">
                            <input type="text" size="30" placeholder="November 2012" name="resume[publications_attributes][0][date]" id="resume_publications_attributes_0_date" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="form-group">
                        <label for="resume_publications_attributes_0_description" class="control-label col-sm-2">Details</label>
                        <div class="col-sm-10">
                            <div class="form-control editor">Detail here</div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </fieldset>
                <div class="clearfix"></div>
            </form>
            </div>

            <div id="Projects" class="tab-pane fade">
                <form action="" method="" class="form-horizontal">
                <fieldset>
                    <legend>
                        <input type="hidden" value="false" name="resume[projects_attributes][0][_destroy]" id="resume_projects_attributes_0__destroy"><a data-confirmify="Are you sure?" class="remove_fields existing" href="#">Delete</a>

                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-up" href="#">Move up</a>
                        </span>
                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-down" href="#">Move down</a>
                        </span>
                    </legend>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_projects_attributes_0_project_title" class="control-label col-sm-2">Project title</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" name="resume[projects_attributes][0][project_title]" maxlength="255" id="resume_projects_attributes_0_project_title" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_projects_attributes_0_url" class="control-label col-sm-2">URL</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" name="resume[projects_attributes][0][url]" maxlength="255" id="resume_projects_attributes_0_url" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="resume_projects_attributes_0_start_date" class="control-label col-sm-4">Start date</label>
                                <div class="col-sm-8">
                                    <input type="text" size="30" placeholder="e.g. September 2003" name="resume[projects_attributes][0][start_date]" id="resume_projects_attributes_0_start_date" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group form-block">
                                <label for="resume_projects_attributes_0_end_date" class="control-label col-sm-4">End date</label>
                                <div class="col-sm-8">
                                    <input type="text" size="30" placeholder="e.g.  May 2007" name="resume[projects_attributes][0][end_date]" id="resume_projects_attributes_0_end_date" class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_projects_attributes_0_description" class="control-label col-sm-2">Details</label>
                        <div class="col-sm-10">
                            <div class="form-control editor">Detail here</div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                </fieldset>
                <div class="clearfix"></div>
            </form>

            </div>
            <div class="clearfix"></div>
            <div id="Languages" class="tab-pane fade">
                <form action="" method="" class="form-horizontal">
                <fieldset>
                    <legend>
                        <input type="hidden" value="false" name="resume[languages_attributes][0][_destroy]" id="resume_languages_attributes_0__destroy"><a data-confirmify="Are you sure?" class="remove_fields existing" href="#">Delete</a>

                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-up" href="#">Move up</a>
                        </span>
                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-down" href="#">Move down</a>
                        </span>
                    </legend>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_languages_attributes_0_language" class="control-label col-sm-2">Language</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="eg: Spanish" name="resume[languages_attributes][0][language]" maxlength="255" id="resume_languages_attributes_0_language" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_languages_attributes_0_proficiency" class="control-label col-sm-2">Proficiency</label>
                        <div class="col-sm-10">
                            <select name="resume[languages_attributes][0][proficiency]" id="resume_languages_attributes_0_proficiency" class="form-control">
                                <option value="">Select</option>
                                <option value="Elementary proficiency">Elementary proficiency</option>
                                <option value="Limited working proficiency">Limited working proficiency</option>
                                <option value="Professional working proficiency">Professional working proficiency</option>
                                <option value="Full professional proficiency">Full professional proficiency</option>
                                <option value="Native or bilingual proficiency">Native or bilingual proficiency</option>
                            </select>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                </fieldset>
                <div class="clearfix"></div>
            </form>
            </div>

            <div id="Volunteerings" class="tab-pane fade">
            <form action="" method="" class="form-horizontal">
                <fieldset>
                    <legend>
                        <input type="hidden" value="false" name="resume[volunteerings_attributes][0][_destroy]" id="resume_volunteerings_attributes_0__destroy"><a data-confirmify="Are you sure?" class="remove_fields existing" href="#">Delete</a>

                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-up" href="#">Move up</a>
                        </span>
                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-down" href="#">Move down</a>
                        </span>
                    </legend>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_volunteerings_attributes_0_cause" class="control-label col-sm-2">Cause</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="e.g. Animal Welfare" name="resume[volunteerings_attributes][0][cause]" maxlength="255" id="resume_volunteerings_attributes_0_cause" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_volunteerings_attributes_0_organization" class="control-label col-sm-2">Organization</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="e.g. Animal Welfare League of Arlington" name="resume[volunteerings_attributes][0][organization]" maxlength="255" id="resume_volunteerings_attributes_0_organization" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="resume_volunteerings_attributes_0_start_date" class="control-label col-sm-4">Start date</label>
                                <div class="col-sm-8">
                                    <input type="text" size="30" placeholder="e.g. December 2012" name="resume[volunteerings_attributes][0][start_date]" id="resume_volunteerings_attributes_0_start_date" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group form-block">
                                <label for="resume_volunteerings_attributes_0_end_date" class="control-label col-sm-4">End date</label>
                                <div class="col-sm-8">
                                    <input type="text" size="30" placeholder="e.g. January 2014" name="resume[volunteerings_attributes][0][end_date]" id="resume_volunteerings_attributes_0_end_date" class="form-control">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_volunteerings_attributes_0_description" class="control-label col-sm-2">Details</label>
                        <div class="col-sm-10">
                            <div class="form-control editor">Detail here</div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </fieldset>
                <div class="clearfix"></div>
            </form>
            </div>

            <div id="Recommendations" class="tab-pane fade">
            <form action="" method="" class="form-horizontal">
                <fieldset>
                    <legend>
                        <input type="hidden" value="false" name="resume[recommendations_attributes][0][_destroy]" id="resume_recommendations_attributes_0__destroy"><a data-confirmify="Are you sure?" class="remove_fields existing" href="#">Delete</a>

                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-up" href="#">Move up</a>
                        </span>
                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-down" href="#">Move down</a>
                        </span>
                    </legend>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_recommendations_attributes_0_recommender" class="control-label col-sm-2">Name</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="Name of the recommender e.g. John Smith" name="resume[recommendations_attributes][0][recommender]" maxlength="255" id="resume_recommendations_attributes_0_recommender" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_recommendations_attributes_0_recommender_designation" class="control-label col-sm-2">Designation</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" placeholder="Designation of the recommender e.g. CEO" name="resume[recommendations_attributes][0][recommender_designation]" maxlength="255" id="resume_recommendations_attributes_0_recommender_designation" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_recommendations_attributes_0_date" class="control-label col-sm-2">Date</label>
                        <div class="col-sm-10">
                            <input type="text" size="30" placeholder="e.g. May 2014" name="resume[recommendations_attributes][0][date]" id="resume_recommendations_attributes_0_date" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_recommendations_attributes_0_description" class="recommendation-label control-label col-sm-2">Recommendation</label>
                        <div class="col-sm-10">
                            <div class="form-control editor">Detail here</div>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                </fieldset>
                <div class="clearfix"></div>
            </form>

            </div>

            <div id="Honors" class="tab-pane fade">
                <form action="" method="" class="form-horizontal">
                <fieldset>
                    <legend>
                        <input type="hidden" value="false" name="resume[honors_attributes][0][_destroy]" id="resume_honors_attributes_0__destroy"><a data-confirmify="Are you sure?" class="remove_fields existing" href="#">Delete</a>

                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-up" href="#">Move up</a>
                        </span>
                        <span class="legend-btn"><a class="${pageContext.request.contextPath}/resources/js-move-down" href="#">Move down</a>
                        </span>
                    </legend>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_honors_attributes_0_title" class="control-label col-sm-2">Title</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" name="resume[honors_attributes][0][title]" maxlength="255" id="resume_honors_attributes_0_title" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_honors_attributes_0_issuer" class="control-label col-sm-2">Issuer</label>
                        <div class="col-sm-10">
                            <input type="text" size="255" name="resume[honors_attributes][0][issuer]" maxlength="255" id="resume_honors_attributes_0_issuer" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_honors_attributes_0_date" class="control-label col-sm-2">Date</label>
                        <div class="col-sm-10">
                            <input type="text" size="30" placeholder="May, 2013" name="resume[honors_attributes][0][date]" id="resume_honors_attributes_0_date" class="form-control">
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group">
                        <label for="resume_honors_attributes_0_description" class="control-label col-sm-2">Details</label>
                        <div class="col-sm-10">
                            <div class="form-control editor">Detail here</div>
                        </div>
                    </div>
                </fieldset>
                <div class="clearfix"></div>
            </form>
            </div>
        </div>
          <div class="clearfix"></div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
    
     <script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jasny-bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-tabcollapse.js"></script>


   

    <script src="${pageContext.request.contextPath}/resources/js/summernote.min.js"></script>
    <script>
    $('#myTab').tabCollapse();
    $(function() {
        $("body").on("input propertychange", ".floating-label-form-group", function(a) {
            $(this).toggleClass("floating-label-form-group-with-value", !!$(a.target).val())
        }).on("focus", ".floating-label-form-group", function() {
            $(this).addClass("floating-label-form-group-with-focus")
        }).on("blur", ".floating-label-form-group", function() {
            $(this).removeClass("floating-label-form-group-with-focus")
        })
    });


    $('.editor').summernote({
        toolbar: [
            //[groupname, [button list]]
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough']],
            ['fontsize', ['fontsize']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
        ]
    });
    </script>
</body>

</html>
