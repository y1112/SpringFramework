<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
  
 <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Advanced Form Components</h3>
        <div class="row mt">
          <!--  DATE PICKERS -->
          <div class="col-lg-12">
            <div class="form-panel">
              <form action="/member/registerOk" method="post" class="form-horizontal style-form">
              
              
              
                <div class="form-group">
                  <label class="control-label col-md-3">id</label>
                  <div class="col-md-3 col-xs-11">
                    <div>
                      <input name="uid" type="text" size="16" class="form-control">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-md-3">pwd</label>
                  <div class="col-md-3 col-xs-11">
                    <div>
                      <input name="pwd" type="password" size="16" class="form-control">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-md-3">username</label>
                  <div class="col-md-3 col-xs-11">
                    <div>
                      <input name="username" type="text" size="16" class="form-control">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-md-3">"email"</label>
                  <div class="col-md-3 col-xs-11">
                    <div>
                      <input name="email" type="text" size="16" class="form-control">
                    </div>
                  </div>
                </div>
                 <div class="form-group">
                  <div class="col-md-3 col-xs-11">
                      <input type="submit" size="16" class="form-control">
                  </div>
                </div>
                
               <!--  <div class="form-group">
                  <label class="control-label col-md-3">email</label>
                  <div class="col-md-3 col-xs-11">
                    <div>
                      <input type="email" size="16" class="form-control">
                    </div>
                  </div>
                </div> -->
                
                <div class="form-group">
                  <label class="control-label col-md-3">Start with years viewMode</label>
                  <div class="col-md-3 col-xs-11">
                    <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="01-01-2014" class="input-append date dpYears">
                      <input type="text" readonly="" value="01-01-2014" size="16" class="form-control">
                      <span class="input-group-btn add-on">
                        <button class="btn btn-theme" type="button"><i class="fa fa-calendar"></i></button>
                        </span>
                    </div>
                    <span class="help-block">Select date</span>
                  </div>
                </div>
                
                
              </form>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
        <!-- DATE TIME PICKERS -->
        <div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <form class="form-horizontal  style-form" action="#">
                <div class="form-group">
                  <label class="control-label col-md-3">Advance Datetimepicker</label>
                  <div class="col-md-4">
                    <div data-date="2014-02-01T10:05:00Z" class="input-group date form_datetime-adv">
                      <input type="text" class="form-control" readonly="" size="16">
                      <div class="input-group-btn">
                        <button type="button" class="btn btn-theme02 date-reset"><i class="fa fa-times"></i></button>
                        <button type="button" class="btn btn-theme date-set"><i class="fa fa-calendar"></i></button>
                      </div>
                    </div>
                  </div>
                </div>
              </form>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- row -->
        <!--  TIME PICKERS -->
        <!-- row -->
        <!--ADVANCED FILE INPUT-->
        <div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <form action="#" class="form-horizontal style-form">
                <div class="form-group last">
                  <label class="control-label col-md-3">Image Upload</label>
                  <div class="col-md-9">
                    <div class="fileupload fileupload-new" data-provides="fileupload">
                      <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image" alt="" />
                      </div>
                      <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                      <div>
                        <span class="btn btn-theme02 btn-file">
                          <span class="fileupload-new"><i class="fa fa-paperclip"></i> Select image</span>
                        <span class="fileupload-exists"><i class="fa fa-undo"></i> Change</span>
                        <input type="file" class="default" />
                        </span>
                        <a href="advanced_form_components.html#" class="btn btn-theme04 fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash-o"></i> Remove</a>
                      </div>
                    </div>
                    <span class="label label-info">NOTE!</span>
                    <span>
                      Attached image thumbnail is
                      supported in Latest Firefox, Chrome, Opera,
                      Safari and Internet Explorer 10 only
                      </span>
                  </div>
                </div>
              </form>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
   

<script>
var result='${result}';
if(result=='success')
alert("게시글이 등록되었습니다.");
</script>
<%@ include file="../include/footer.jsp"%>
</body>
</html>
