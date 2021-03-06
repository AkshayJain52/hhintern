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
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/jasny-bootstrap.min.css" rel="stylesheet">

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
    }</style>
   
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  
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
            <li><a href="#">Slide in</a></li>
            <li><a href="#">Push</a></li>
            <li><a href="#">Reveal</a></li>
            <li class="active"><a href="./">Off canvas navbar</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
        </div>
      </div>

      <div class="container header-clearence" style="margin-top:100px;">
        <div class="row margin-top-15">
            <!-- left panel start -->
            <div class="col-sm-12 padding-0 profile-box">
                <!-- profile summary detail -->
                <div class="col-xs-12 panel panel-default paper-shadow-top-z-1">
                    <div class="row">
                        <div class="col-xs-12 panel-heading">
                            <h4 class="pull-left">Summary</h4>
                            <h4 class="pull-right">
                                <a onclick="editInfo(this, 'top')" href="javascript:void(0)" class="editlink"><i class="fa fa-pencil-square"></i> Edit</a>
                            </h4>
                        </div>

                        <div class="col-xs-12 padding-top-10" title="s1">
                            <!--  <h5 class="strong">Caption</h5> -->
                            <div class="desc-box">
                                <p>Smart interactivity is my type of work: edgy and completely unforgiving, the kind of stuff that makes me love sitting in front of a computer with a sketchbook until the sun comes up.</p>
                                <h5 class="strong">Skills/Competencies</h5>
                                <p class="margin-top-7">
                                    Honest and Reliable, Proactive, Self Motivated, Javascript, Adaptable, Exposure to many technologies
                                </p>
                            </div>
                            <div class="clearfix"></div>
                            <div class="bg-pale col-xs-12 padding-top-10 padding-bottom-10 margin-bottom-10 margin-top-7 edit-form hide">
                                <form action="#" method="" name="" id="" class="edit-form">
                                    <p class="strong"><i class="fa fa-pencil"></i> Edit</p>

                                    <div class="form-group">
                                        <label>Caption</label>
                                        <textarea class="form-control" placeholder="Your caption.." rows="3">Smart interactivity is my type of work: edgy and completely unforgiving, the kind of stuff that makes me love sitting in front of a computer with a sketchbook until the sun comes up.</textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Skills/Competencies</label>
                                        <textarea class="form-control" placeholder="Skills and Competencies.." rows="3">Honest and Reliable, Proactive, Self Motivated, Javascript, Adaptable, Exposure to many technologies</textarea>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <input type="submit" class="btn btn-primary" role="button" value="Save" />&nbsp;
                                        <a href="javascript:void(0)" class="btn btn-default" onclick="editCancel(this)" role="button">Cancel</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-xs-12 light-grey-bg padding-top-10 padding-bottom-10 text-right">
                            3 days ago
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <!-- profile Employment detail -->
                <div class="col-xs-12 panel panel-default margin-top-15 paper-shadow-top-z-1">
                    <div class="row">
                        <div class="col-xs-12  border-bottom-gray">
                            <h4 class="pull-left">Work Experience</h4>
                        </div>

                        <div class="col-xs-12 tile">
                            <div class="desc-box">
                                <dl class="col-sm-10 col-xs-12 padding-left-0">
                                    <dd class="h5">
                                        <strong>Front-end Web Developer</strong>&nbsp;<i class="fa fa-at strong text-muted"></i>&nbsp; ABC Group</dd>
                                    <dd class="h5">&nbsp;<i class="fa fa-map-marker text-muted"></i> &nbsp;&nbsp; Mumbai, India</dd>
                                    <dd class="h5"><i class="fa fa-calendar text-muted"></i> &nbsp; Aug 2011 - present (3.2 years)</dd>
                                    <dd>
                                        <strong>Job Profile :</strong>Honest and Reliable, Proactive, Self Motivated, Javascript, Adaptable, Exposure to many technologies</dd>
                                </dl>
                                <dl class="col-sm-2 col-xs-12">
                                    <dd class="text-right h5">
                                        <a onclick="editInfo(this)" href="javascript:void(0)" class="editlink"><i class="fa fa-pencil-square"></i> Edit</a>
                                    </dd>
                                </dl>
                            </div>
                            <div class="clearfix"></div>
                            <div class="bg-pale col-xs-12 padding-top-10 padding-bottom-10 margin-bottom-10 margin-top-7 edit-form hide">
                                <form action="#" method="" name="" id="" class="edit-form">
                                    <p class="strong"><i class="fa fa-pencil"></i> Edit</p>

                                    <div class="form-group">
                                        <label>Organisation</label>
                                        <br />
                                        <div class="col-xs-10 padding-left-0">
                                            <input type="text" class="form-control" placeholder="Organisation Name" value="ABC Group">
                                        </div>
                                        <div class="col-xs-2"><a href="#"><i class="fa fa-ban"></i>&nbsp;Mask</a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Designation</label>
                                        <br />
                                        <div class="col-xs-10 padding-left-0">
                                            <input type="text" class="form-control" placeholder="Designation">
                                        </div>
                                        <div class="col-xs-2"><a href="#"><i class="fa fa-ban"></i>&nbsp;Mask</a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Employment period</label>
                                        <br />
                                        <div class="col-xs-5 col-sm-3 padding-left-0">
                                            <select class="form-control" name="">
                                                <option value="0">-Month-</option>
                                                <option selected="selected" value="2014">Jan</option>
                                                <option value="2013">Feb</option>
                                                <option value="2012">Mar</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-5 col-sm-2 padding-left-0">
                                            <select class="form-control" name="">
                                                <option value="0">-</option>
                                                <option selected="selected" value="2014">2014</option>
                                                <option value="2013">2013</option>
                                                <option value="2012">2012</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-2 text-center">To</div>
                                         <div class="col-xs-5 col-sm-3 padding-left-0 padding-top-xs-15">
                                            <select class="form-control" name="">
                                                <option value="0">-Month-</option>
                                                <option selected="selected" value="2014">Jan</option>
                                                <option value="2013">Feb</option>
                                                <option value="2012">Mar</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-5 col-sm-2 padding-left-0 padding-right-0 padding-top-xs-15">
                                            <select class="form-control" name="">
                                                <option value="0">-</option>
                                                <option value="2014">2014</option>
                                                <option selected="selected" value="2013">2013</option>
                                                <option value="2012">2012</option>
                                                <option value="2011">2011</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-12 padding-left-0">
                                            <input type="checkbox" name="current-employment" /> &nbsp; I am currently working here.
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7">
                                        <label>Job profile/Skill-sets</label>
                                        <textarea class="form-control" placeholder="About your profile and skill set"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Industry</label>
                                        <br />
                                        <div class="col-xs-10 padding-left-0">
                                            <select id="master_industry_id" class="form-control" name="">
                                                <option value="0">-Industry-</option>
                                                <option value="2">Accounting/ Taxation/ Audit</option>
                                                <option value="3">Advertising/ PR/ Market Research/ Events</option>
                                                <option value="10">Aerospace/ Defence</option>
                                                <option value="4">Agriculture/ Horticulture</option>
                                                <option value="5">Aviation/ Airlines</option>
                                                <option value="12">Banking - Corporate</option>
                                                <option value="11">Banking - Retail</option>
                                                <option value="14">Bio - Tech</option>
                                                <option value="15">BPO/ ITES/ Call Centers</option>
                                                <option value="75">Capital Goods/Machinery</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-2"><a href="#"><i class="fa fa-ban"></i>&nbsp;Mask</a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Function</label>
                                        <br />
                                        <div class="col-xs-10 padding-left-0">
                                            <select id="master_industry_id" class="form-control" name="">
                                                <option selected="selected" value="0">-Function-</option>
                                                <option value="2">Actuarial</option>
                                                <option value="3">Administration/ Facilities</option>
                                                <option value="4">Advisory</option>
                                                <option value="5">After Sales Service - Product</option>
                                                <option value="6">Audit and Assurance</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-2"><a href="#"><i class="fa fa-ban"></i>&nbsp;Mask</a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Sub-Function</label>
                                        <br />
                                        <div class="col-xs-10 padding-left-0">
                                            <select id="master_industry_id" class="form-control" name="">
                                                <option selected="selected" value="0">-Sub Functional Area-</option>
                                                <option value="1">Others</option>
                                                <option value="610">Visual arts</option>
                                                <option value="611">Multimedia design</option>
                                                <option value="612">Interactive design</option>
                                                <option value="613">Interface design</option>
                                                <option value="614">Chromatics</option>
                                                <option value="615">Analog computer animation</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-2"><a href="#"><i class="fa fa-ban"></i>&nbsp;Mask</a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Salary</label>
                                        <br />
                                        <div class="col-xs-5 col-sm-3 padding-left-0">
                                            <select id="master_lakh_id" class="form-control" name="">
                                                <option value="0">-Lakh-</option>
                                                <option value="1">1 Lakh</option>
                                                <option value="2">2 Lakh</option>
                                                <option value="3">3 Lakh</option>
                                                <option selected="selected" value="4">4 Lakh</option>
                                                <option value="5">5 Lakh</option>
                                                <option value="6">6 Lakh</option>
                                                <option value="7">7 Lakh</option>
                                                <option value="99">99 + Lakh</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-2 col-sm-1 text-center">To</div>
                                        <div class="col-xs-5 col-sm-3 padding-left-0 padding-right-0">
                                            <select id="master_lakh_id" class="form-control" name="">
                                                <option value="0">-Lakh-</option>
                                                <option value="1">1 Lakh</option>
                                                <option value="2">2 Lakh</option>
                                                <option value="3">3 Lakh</option>
                                                <option selected="selected" value="4">4 Lakh</option>
                                                <option value="5">5 Lakh</option>
                                                <option value="6">6 Lakh</option>
                                                <option value="7">7 Lakh</option>
                                                <option value="99">99 + Lakh</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-12 col-sm-5">
                                            <a href="#"><i class="fa fa-ban"></i>&nbsp; Mask</a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <input type="submit" class="btn btn-primary" role="button" value="Save" />&nbsp;
                                        <a href="javascript:void(0)" class="btn btn-default" onclick="editCancel(this)" role="button">Cancel</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-xs-12 light-grey-bg padding-top-10 padding-bottom-10 text-right">
                            <a href="#">+ Add More Work Experience</a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <!-- profile Education detail -->
                <div class="col-xs-12 panel panel-default margin-top-15 paper-shadow-top-z-1">
                    <div class="row">
                        <div class="col-xs-12  border-bottom-gray">
                            <h4 class="pull-left">Education</h4>
                        </div>

                        <div class="col-xs-12 tile">
                            <div class="desc-box">
                                <dl class="col-sm-10 col-xs-12 padding-left-0">
                                    <dd class="h5"><i class="fa fa-bank text-muted"></i>&nbsp; National Institute of Technology</dd>
                                    <dd class="h5"><i class="fa fa fa-graduation-cap text-muted"></i> &nbsp; M.E, Computer Science & Engg</dd>
                                    <dd class="h5"><i class="fa fa-calendar text-muted"></i> &nbsp; 2007 – 2009</dd>
                                </dl>
                                <dl class="col-sm-2 col-xs-12">
                                    <dd class="text-right h5">
                                        <a onclick="editInfo(this)" href="javascript:void(0)" class="editlink"><i class="fa fa-pencil-square"></i> Edit</a>
                                    </dd>
                                </dl>
                            </div>
                            <div class="clearfix"></div>
                            <div class="bg-pale col-xs-12 padding-top-10 padding-bottom-10 margin-bottom-10 margin-top-7 edit-form hide">
                                <form action="#" method="" name="" id="" class="edit-form">
                                    <p class="strong"><i class="fa fa-pencil"></i> Edit</p>
                                    <div class="form-group">
                                        <label>Institution</label>
                                        <input type="text" class="form-control" placeholder="Institute Name" value="National Institute of Technology">
                                    </div>
                                    <div class="form-group">
                                        <label>University</label>
                                        <input type="text" class="form-control" placeholder="University Name">
                                    </div>
                                    <div class="form-group">
                                        <label>Dates Attended</label>
                                        <br />
                                        <div class="col-xs-5 padding-left-0">
                                            <select class="form-control" name="">
                                                <option value="0">-</option>
                                                <option selected="selected" value="2014">2014</option>
                                                <option value="2013">2013</option>
                                                <option value="2012">2012</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-2 text-center">To</div>
                                        <div class="col-xs-5 padding-left-0 padding-right-0">
                                            <select class="form-control" name="">
                                                <option value="0">-</option>
                                                <option value="2014">2014</option>
                                                <option selected="selected" value="2013">2013</option>
                                                <option value="2012">2012</option>
                                                <option value="2011">2011</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Qualification</label>
                                        <input type="text" class="form-control" placeholder="University Name">
                                    </div>
                                    <div class="form-group">
                                        <label>Specialisation</label>
                                        <input type="text" class="form-control" placeholder="University Name">
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <input type="submit" class="btn btn-primary" role="button" value="Save" />&nbsp;
                                        <a href="javascript:void(0)" class="btn btn-default" onclick="editCancel(this)" role="button">Cancel</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-xs-12 light-grey-bg padding-top-10 padding-bottom-10 text-right">
                            <a href="#">+ Add More Education detail</a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <!-- profile Certification detail -->
                <div class="col-xs-12 panel panel-default margin-top-15 paper-shadow-top-z-1">
                    <div class="row">
                        <div class="col-xs-12  border-bottom-gray">
                            <h4 class="pull-left">Certification</h4>
                        </div>

                        <div class="col-xs-12 tile">
                            <div class="desc-box">
                                <dl class="col-sm-10 col-xs-12 padding-left-0">
                                    <dd class="h5" title="Certification And It Provider"><i class="fa fa-file-text text-muted"></i>&nbsp; SCJP, Sun MicroSystem</dd>
                                    <dd class="h5" title="Grade score"><i class="fa fa-bar-chart text-muted"></i> &nbsp; 96%</dd>
                                    <dd class="h5"><i class="fa fa-calendar text-muted"></i> &nbsp; 2010</dd>
                                </dl>
                                <dl class="col-sm-2 col-xs-12">
                                    <dd class="text-right h5">
                                        <a onclick="editInfo(this)" href="javascript:void(0)" class="editlink">
                                            <i class="fa fa-pencil-square"></i> Edit
                                        </a>
                                    </dd>
                                </dl>
                            </div>
                            <div class="clearfix"></div>
                            <div class="bg-pale col-xs-12 padding-top-10 padding-bottom-10 margin-bottom-10 margin-top-7 edit-form hide">
                                <form action="#" method="" name="" id="" class="edit-form">
                                    <p class="strong"><i class="fa fa-pencil"></i> Edit</p>
                                    <div class="form-group">
                                        <label>Certification Name</label>
                                        <input type="text" class="form-control" placeholder="Certification Name" value="SCJP">
                                    </div>
                                    <div class="form-group">
                                        <label>Provider</label>
                                        <input type="text" class="form-control" placeholder="Provider" value="Sun MicroSystem">
                                    </div>
                                    <div class="form-group">
                                        <label>Dates Attended</label>
                                        <br />
                                        <div class="col-xs-5 padding-left-0">
                                            <select class="form-control" name="">
                                                <option value="0">-</option>
                                                <option selected="selected" value="2014">2014</option>
                                                <option value="2013">2013</option>
                                                <option value="2012">2012</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-2 text-center">To</div>
                                        <div class="col-xs-5 padding-left-0 padding-right-0">
                                            <select class="form-control" name="">
                                                <option value="0">-</option>
                                                <option value="2014">2014</option>
                                                <option selected="selected" value="2013">2013</option>
                                                <option value="2012">2012</option>
                                                <option value="2011">2011</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Grade</label>
                                        <input type="text" class="form-control" placeholder="University Name">
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <input type="submit" class="btn btn-primary" role="button" value="Save" />&nbsp;
                                        <a href="javascript:void(0)" class="btn btn-default" onclick="editCancel(this)" role="button">Cancel</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-xs-12 light-grey-bg padding-top-10 padding-bottom-10 text-right">
                            <a href="#">+ Add More Certification detail</a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <!-- profile Preferences detail -->
                <div class="col-xs-12 panel panel-default margin-top-15 paper-shadow-top-z-1">
                    <div class="row">
                        <div class="col-xs-12  border-bottom-gray">
                            <h4 class="pull-left">Preferences</h4>
                            <h4 class="pull-right">
                                <a onclick="editInfo(this, 'top')" href="javascript:void(0)" class="editlink"><i class="fa fa-pencil-square"></i> Edit</a>
                            </h4>
                        </div>

                        <div class="col-xs-12 tile">
                            <div class="desc-box">
                                <dl>
                                    <dd class="h5" title="Location">&nbsp;<i class="fa fa-map-marker text-muted" title="Location"></i> &nbsp;&nbsp; Mumbai, India</dd>
                                    <dd class="h5" title="Industry"><i class="fa fa-briefcase text-muted" title="Industry"></i> &nbsp; Design, IT/ Technology - Education</dd>
                                    <dd class="h5" title="Function"><i class="fa fa-anchor text-muted" title="Function"></i> &nbsp; Design, IT/ Information Technology</dd>
                                </dl>
                            </div>
                            <div class="clearfix"></div>
                            <div class="bg-pale col-xs-12 padding-top-10 padding-bottom-10 margin-bottom-10 margin-top-7 edit-form hide">
                                <form action="#" method="" name="" id="prefrence_form" class="edit-form">
                                    <p class="strong"><i class="fa fa-pencil"></i> Edit</p>
                                    <div class="form-group">
                                        <label>Location</label>
                                        <br />
                                        <div class="col-xs-5 padding-left-0">
                                            <select multiple size="5" class="col-xs-12 padding-left-0" name="" id="pr_location">
                                                <option value="1">Ahmedabad</option>
                                                <option value="2">Bangalore / Bengaluru</option>
                                                <option value="3">Chennai/ Madras</option>
                                                <option value="5">Hyderabad</option>
                                                <option value="6">Kolkata/ Calcutta</option>
                                                <option value="7">Mumbai/ Bombay</option>
                                                <option value="8">Pune</option>
                                                <option value="593">Aba</option>
                                                <option value="1715">Aberdeen</option>
                                                <option value="441">Abu Dhabi</option>
                                            </select>
                                            <br />
                                            <small class="text-muted">Press Ctrl to select upto 8 Locations.</small>
                                        </div>
                                        <div class="col-xs-2 text-center">
                                            <br />
                                            <a href="javascript:void(0)" onclick="javascript:moveOptions(document.getElementById('pr_location'),document.getElementById('updatelocation'),1,'location');"><i class="fa fa-hand-o-right font-20 strong"></i></a>
                                            <br />
                                            <br />
                                            <a href="javascript:void(0)" onclick="javascript:moveOptions(document.getElementById('updatelocation'),document.getElementById('pr_location'),2,'location');">
                                                <i class="fa fa-hand-o-left font-20 strong"></i>
                                            </a>
                                        </div>
                                        <div class="col-xs-5 padding-left-0">
                                            <select multiple class="col-xs-12 padding-left-0" size="5" name="" id="updatelocation">
                                                <option value="7">Mumbai/ Bombay</option>
                                                <option value="8">Pune</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Function</label>
                                        <br />
                                        <div class="col-xs-5 padding-left-0">
                                            <select multiple size="5" class="col-xs-12 padding-left-0" name="" id="pr_functionalArea">
                                                <option value="2">Actuarial</option>
                                                <option value="3">Administration/ Facilities</option>
                                                <option value="4">Advisory</option>
                                                <option value="5">After Sales Service - Product</option>
                                                <option value="6">Audit and Assurance</option>
                                                <option value="7">Business Analytics</option>
                                                <option value="8">Circulation/ Distribution</option>
                                                <option value="9">Client Servicing</option>
                                                <option value="10">Collections/ Recovery</option>
                                            </select>
                                            <br />
                                            <small class="text-muted">Press Ctrl to select upto 8 Locations.</small>
                                        </div>
                                        <div class="col-xs-2 text-center">
                                            <br />
                                            <a href="javascript:void(0)" onclick="javascript:moveOptions(document.getElementById('pr_functionalArea'),document.getElementById('updatefunctionalArea'),1,'pr_functional_Area');"><i class="fa fa-hand-o-right font-20 strong"></i></a>
                                            <br />
                                            <br />
                                            <a href="javascript:void(0)" onclick="javascript:moveOptions(document.getElementById('updatefunctionalArea'), document.getElementById('pr_functionalArea'),2,'pr_functional_Area');">
                                                <i class="fa fa-hand-o-left font-20 strong"></i>
                                            </a>
                                        </div>
                                        <div class="col-xs-5 padding-left-0">
                                            <select multiple class="col-xs-12 padding-left-0" size="5" name="" id="updatefunctionalArea">
                                                <option value="4">Advisory</option>
                                                <option value="5">After Sales Service - Product</option>
                                                <option value="6">Audit and Assurance</option>
                                                <option value="7">Business Analytics</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Industry</label>
                                        <br />
                                        <div class="col-xs-5 padding-left-0">
                                            <select multiple size="5" class="col-xs-12 padding-left-0" name="" id="pr_industry">
                                                <option value="2">Accounting/ Taxation/ Audit</option>
                                                <option value="3">Advertising/ PR/ Market Research/ Events</option>
                                                <option value="10">Aerospace/ Defence</option>
                                                <option value="6">Animation/ Multimedia</option>
                                                <option value="7">Apparel/ Garments/ Textiles/ Fashion</option>
                                                <option value="8">Architectural Services/ Interior Design</option>
                                                <option value="9">Automobile/ Auto Components</option>
                                                <option value="5">Aviation/ Airlines</option>
                                                <option value="12">Banking - Corporate</option>
                                                <option value="11">Banking - Retail</option>
                                                <option value="14">Bio - Tech</option>
                                                <option value="15">BPO/ ITES/ Call Centers</option>
                                                <option value="75">Capital Goods/Machinery</option>
                                            </select>
                                            <br />
                                            <small class="text-muted">Press Ctrl to select upto 8 Locations.</small>
                                        </div>
                                        <div class="col-xs-2 text-center">
                                            <br />
                                            <a href="javascript:void(0)" onclick="javascript:moveOptions(document.getElementById('pr_industry'),document.getElementById('updateindustry'),1,'industry');"><i class="fa fa-hand-o-right font-20 strong"></i></a>
                                            <br />
                                            <br />
                                            <a href="javascript:void(0)" onclick="javascript:moveOptions(document.getElementById('updateindustry'),document.getElementById('pr_industry'),2,'pr_industry');">
                                                <i class="fa fa-hand-o-left font-20 strong"></i>
                                            </a>
                                        </div>
                                        <div class="col-xs-5 padding-left-0">
                                            <select multiple class="col-xs-12 padding-left-0" size="5" name="" id="updateindustry">
                                                <option value="8">Architectural Services/ Interior Design</option>
                                                <option value="9">Automobile/ Auto Components</option>
                                                <option value="5">Aviation/ Airlines</option>
                                                <option value="12">Banking - Corporate</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <input type="submit" class="btn btn-primary" role="button" value="Save" />&nbsp;
                                        <a href="javascript:void(0)" class="btn btn-default" onclick="editCancel(this)" role="button">Cancel</a>
                                    </div>
                                </form>
                            </div>

                        </div>
                        <div class="clearfix"></div>
                        <div class="col-xs-12 light-grey-bg padding-top-10 padding-bottom-10 text-right">
                            <a href="#">+ Add More Preferences detail</a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <!-- profile Preferences detail -->
                <div class="col-xs-12 panel panel-default margin-top-15 paper-shadow-top-z-1">
                    <div class="row">
                        <div class="col-xs-12  border-bottom-gray">
                            <h4 class="pull-left">Personal</h4>
                            <h4 class="pull-right">
                                <a onclick="editInfo(this, 'top')" href="javascript:void(0)" class="editlink"><i class="fa fa-pencil-square"></i> Edit</a>
                            </h4>
                        </div>

                        <div class="col-xs-12 tile padding-top-10">
                            <div class="desc-box">
                                <table>
                                    <tr>
                                        <td class="col-xs-5 col-sm-3 text-muted padding-left-0">Birthday</td>
                                        <td class="col-xs-7 col-sm-9 h5">December 9</td>
                                    </tr>
                                    <tr>
                                        <td class="col-xs-5 col-sm-3 text-muted padding-left-0">Gender</td>
                                        <td class="col-xs-7 col-sm-9 h5">Male</td>
                                    </tr>
                                    <tr>
                                        <td class="col-xs-5 col-sm-3 text-muted padding-left-0">Marital Status</td>
                                        <td class="col-xs-7 col-sm-9 h5">Single</td>
                                    </tr>
                                    <tr>
                                        <td class="col-xs-5 col-sm-3 text-muted padding-left-0">Nationality</td>
                                        <td class="col-xs-7 col-sm-9 h5">Indian</td>
                                    </tr>
                                    <tr>
                                        <td class="col-xs-5 col-sm-3 text-muted padding-left-0">Language Known</td>
                                        <td class="col-xs-7 col-sm-9 h5">English, Hindi</td>
                                    </tr>
                                    <tr>
                                        <td class="col-xs-5 col-sm-3 text-muted padding-left-0">Achievement</td>
                                        <td class="col-xs-7 col-sm-9 h5">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</td>
                                    </tr>
                                    <tr>
                                        <td class="col-xs-5 col-sm-3 text-muted padding-left-0">Address</td>
                                        <td class="col-xs-7 col-sm-9 h5">
                                            <address>
                                                795 Folsom Ave, Suite 600
                                                <br>South Delhi, 110006
                                            </address>
                                        </td>
                                    </tr>

                                </table>
                            </div>
                            <div class="clearfix"></div>
                            <div class="bg-pale col-xs-12 padding-top-10 padding-bottom-10 margin-bottom-10 margin-top-7 edit-form hide">
                                <form action="#" method="" name="" id="" class="edit-form">
                                    <p class="strong"><i class="fa fa-pencil"></i> Edit</p>
                                    <div class="form-group">
                                        <label>Name</label>
                                        <br />
                                        <div class="col-xs-3 col-sm-2 padding-left-0">

                                            <select class="form-control" name="">
                                                <option selected="selected" value="0">Title</option>
                                                <option value="1">Mr.</option>
                                                <option value="2">Ms.</option>
                                                <option value="3">Dr.</option>
                                            </select>

                                        </div>
                                        <div class="col-xs-4 col-sm-4 padding-left-0">
                                            <input type="text" class="form-control" placeholder="First Name" value="">
                                        </div>
                                        <div class="col-xs-4 col-sm-4 padding-xs-0">
                                            <input type="text" class="form-control" placeholder="Last Name" value="">
                                        </div>
                                        <div class="col-xs-1 col-sm-2 padding-right-0">
                                            <a href="#"><i class="fa fa-ban hidden-xs strong"></i> Mask</a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Email ID</label>
                                        <br />
                                        <div class="col-xs-10 padding-left-0">
                                            <input type="text" class="form-control" placeholder="emailid">
                                        </div>
                                        <div class="col-xs-2">
                                            <a href="#"><i class="fa fa-ban hidden-xs strong"></i> Mask</a>
                                        </div>

                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Mobile</label>
                                        <br />
                                        <div class="col-xs-10 padding-left-0">
                                            <input type="text" class="form-control" placeholder="Mobile">
                                        </div>
                                        <div class="col-xs-2">
                                            <a href="#"><i class="fa fa-ban hidden-xs strong"></i> Mask</a>
                                        </div>

                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Landline</label>
                                        <br />
                                        <div class="col-xs-10 padding-left-0">
                                            <input type="text" class="form-control" placeholder="emailid">
                                        </div>
                                        <div class="col-xs-2">
                                            <a href="#"><i class="fa fa-ban hidden-xs strong"></i> Mask</a>
                                        </div>

                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Date of birth</label>
                                        <br />
                                        <div class="col-xs-2 padding-left-0">
                                            <select class="form-control" name="">
                                                <option value="0">- day -</option>
                                                <option selected="selected" value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-4 padding-left-0">
                                            <select class="form-control" name="">
                                                <option value="0">-Month-</option>
                                                <option value="1">January</option>
                                                <option value="2">February</option>
                                                <option value="3">March</option>
                                                <option value="4">April</option>
                                                <option value="5">May</option>
                                                <option value="6">June</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-4 padding-left-0 padding-right-0">
                                            <select class="form-control" name="">
                                                <option value="0">- year-</option>
                                                <option value="2014">2014</option>
                                                <option selected="selected" value="2013">2013</option>
                                                <option value="2012">2012</option>
                                                <option value="2011">2011</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Location</label>
                                        <br />
                                        <div class="col-xs-5 padding-left-0">
                                            <select class="form-control" name="">
                                                <option value="0">- Country -</option>
                                                <option value="170">Afghanistan</option>
                                                <option value="174">Algeria</option>
                                                <option value="175">Algeria - Other</option>
                                                <option value="51">Angola</option>
                                                <option value="165">Argentina</option>
                                                <option value="45">Australia</option>
                                                <option value="172">Austria</option>
                                                <option value="184">Azerbaijan</option>
                                                <option value="2">Bahrain</option>
                                                <option value="3">Bangladesh</option>
                                            </select>
                                        </div>

                                        <div class="col-xs-5 padding-left-0 padding-right-0">
                                            <select class="form-control" name="">
                                                <option value="0">- City -</option>
                                                <option value="2042">Achalpur</option>
                                                <option value="1611">Adilabad</option>
                                                <option value="9">Agartala</option>
                                                <option value="10">Agra</option>
                                                <option value="1">Ahmedabad</option>
                                                <option value="11">Ahmednagar</option>
                                                <option value="1785">Airoli</option>
                                                <option value="12">Aizawal</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Nationality</label>
                                        <br />
                                        <div class="col-xs-10 padding-left-0">
                                            <input type="text" class="form-control" placeholder="Nationality">
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Languages</label>
                                        <br />
                                        <div class="col-xs-10 padding-left-0">
                                            <input type="text" class="form-control" placeholder="Language">
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Gender</label>
                                        <br />
                                        <label class="radio-inline">
                                            <input type="radio" name="" id="" value="option1">Male
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="" id="" value="">Female
                                        </label>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="form-group margin-top-7 padding-top-10">
                                        <label>Upload Photo</label>
                                        <br />
                                        <input type="file" placeholder="Upload your photo" name="" />
                                    </div>
                                    <div class="clearfix"></div>

                                    <div class="form-group margin-top-7 padding-top-10">
                                        <input type="submit" class="btn btn-primary" role="button" value="Save" />&nbsp;
                                        <a href="javascript:void(0)" class="btn btn-default" onclick="editCancel(this)" role="button">Cancel</a>
                                    </div>

                                </form>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-xs-12 light-grey-bg padding-top-10 padding-bottom-10 text-right">
                            <a href="#">+ Add More Personal detail</a>
                        </div>
                    </div>
                </div>
            </div>

            
        </div>
    </div>
   

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <script src="/resources/js/jasny-bootstrap.min.js"></script>
    <script type="text/JavaScript">
    function editInfo(control, from) {
        var prsueClick = $(control).is("[disabled]");
        if (!prsueClick) {
            if (from == 'top') {
                $(control).parent().parent().siblings().children('.desc-box').removeClass('show').addClass('hide').siblings('.edit-form').removeClass('hide').addClass('show');
            } else {
                $(control).parents('div.desc-box').siblings('.edit-form').addClass('show').siblings('.desc-box').removeClass('show').addClass('hide');
            }
            $(".profile-box").each(function() {
                $('a.editlink').attr('disabled', 'disabled');
                $('a.editlink').addClass('text-muted');
            });
        }
    }

    function editCancel(control) {
        $(control).parents('div.edit-form').siblings('.desc-box').addClass('show').siblings('.edit-form').removeClass('show').addClass('hide');
        $(".profile-box").each(function() {
            $('a.editlink').removeAttr('disabled');
            $('a.editlink').removeClass('text-muted');
        });
    }


    </script>
  </body>
</html>
