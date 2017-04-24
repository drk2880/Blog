<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!--  header -->
<%@ include file="/WEB-INF/jspf/head.jspf" %>
</head>
<body>
	<!-- Navigation -->
	<%@ include file="/WEB-INF/jspf/nav.jspf" %>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('http://bto.or.kr/data/data/7698a2dce11383294925.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1><c:out value="${post.title}"></c:out></h1>
                        <h2 class="subheading"><c:out value="${post.subtitle}"></c:out></h2>
                        <span class="meta">Posted by <a href="#">${post.name}</a> on ${post.regDate}</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <article>
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
	            	${post.content}            
	            </div>
	            
	            <div class="pull-right">
	            
	            	<c:if test="${user!=null && user.providerUserid == post.userId}">
	            	<a href="/post/${post.id}/edit">
	            		<button type="button" class="btn btn-warning">Edit</button>
	            	</a>
	            	<a href="/post/${post.id}/delete" onclick="if(!confirm('진짜?')) {return false;}">
	            		<button type="button" class="btn btn-danger">Delete</button>
	            	</a>
	            	</c:if>
	            	
	            	<a href="/post/list">
	            		<button type="button" class="btn btn-primary">List</button>
	            	</a>
	            </div>
	        </div>
	    </div>
    </article>

    <hr>

    <!-- Footer -->
	<%@ include file="/WEB-INF/jspf/footer.jspf" %>

	<script src="/webjars/jquery/2.1.3/dist/jquery.min.js"></script>
	<script src="/webjars/bootstrap/3.3.4/dist/js/bootstrap.min.js"></script>
	<script src="/webjars/origoni-startbootstrap-clean-blog/1.0.3/js/clean-blog.min.js"></script>
</body>
</html>