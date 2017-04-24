<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Header -->
<%@ include file="/WEB-INF/jspf/head.jspf" %>
</head>
<body>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '812235108955078',
      xfbml      : true,
      version    : 'v2.9'
    });
    FB.AppEvents.logPageView();
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>

	<!-- Navigation -->
	<%@ include file="/WEB-INF/jspf/nav.jspf" %>
	
    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('http://bto.or.kr/data/data/7698a2dce11383294925.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>Clean Blog</h1>
                        <hr class="small">
                        <span class="subheading">A Clean Blog Theme by Start Bootstrap</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            
            <c:forEach var="post" items="${postPage.content}">
                <div class="post-preview">
                    <a href="/post/${post.id}">
                        <h2 class="post-title">
                            <c:out value="${post.title}" escapeXml="true"></c:out>
                        </h2>
                        <h3 class="post-subtitle">
                        	<c:out value="${post.subtitle}" escapeXml="true"></c:out>
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="#">${post.name}</a> on ${post.regDate}</p>
                </div>            
            </c:forEach>
	            <div
				  class="fb-like"
				  data-share="true"
				  data-width="450"
				  data-show-faces="true">
				</div>
   	            <div class="pull-right">
	            	<a href="/post/write">
	            		<button type="button" class="btn btn-primary">Write</button>
	            	</a>
	            </div>
                <hr>

                <!-- Pager -->
                <ul class="pager">
                	<c:if test="${!postPage.first}">
                    <li class="previous">
                        <a href="#">&larr;Newer Posts</a>
                    </li>
                    </c:if>
                    <c:if test="${!postPage.last}">
                    <li class="next">
                        <a href="#">Older Posts &rarr;</a>
                    </li>
                    </c:if>                    
                </ul>
            </div>
        </div>
    </div>

    <hr>

    <!-- Footer -->
	<%@ include file="/WEB-INF/jspf/footer.jspf" %>
</body>
</html>