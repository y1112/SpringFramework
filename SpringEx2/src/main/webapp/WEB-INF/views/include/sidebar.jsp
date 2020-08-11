<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="<%=request.getContextPath()%>/"><img src="<%=request.getContextPath()%>/resources/img/img3.png" class="img-circle" width="80"></a></p>
          <h5 class="centered">hi</h5>
          
          <li class="mt">
            <a class="active" href="/bbs/write">
              <i class="fa fa-dashboard"></i>
              <span>게시판</span>
              </a>
          </li>
          
           <li class="mt">
            <a class="active" href="/member/register">
              <i class="fa fa-dashboard"></i>
              <span>회원가입</span>
              </a>
          </li>
                 <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-desktop"></i>
              <span>UI Elements</span>
              </a>
            <ul class="sub">
              <li><a href="general.html">General</a></li>
              <li><a href="buttons.html">Buttons</a></li>
              <li><a href="panels.html">Panels</a></li>
              <li><a href="font_awesome.html">Font Awesome</a></li>
            </ul>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->