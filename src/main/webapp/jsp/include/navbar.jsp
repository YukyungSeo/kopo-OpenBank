<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container-xxl position-relative p-0">
   <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
       <a href="${ pageContext.request.contextPath }/" class="navbar-brand p-0">
           <h1 class="m-0">
				<img alt="mini-logo" src="${ pageContext.request.contextPath }/img/mini-logo.JPG">
				SEO BANK
			</h1>
           <!-- <img src="img/logo.png" alt="Logo"> -->
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="#" class="nav-item nav-link">금융상품</a>
                <a class="nav-item nav-link" onclick="checkLogin('CreateAccout')">1Q계좌개설</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">게시판</a>
                    <div class="dropdown-menu m-0">
                        <a href="#" class="dropdown-item">공지사항</a>
                        <a href="#" class="dropdown-item">자주묻는질문</a>
                        <a href="${ pageContext.request.contextPath }/board/qna/list.do?page=1" class="dropdown-item">QnA</a>
                    </div>
                </div>
                <c:if test = "${ not empty member }">
	                <a href="#" class="nav-item nav-link">마이페이지</a>
	                <a href="${ pageContext.request.contextPath }/logout.do" class="nav-item nav-link">로그아웃</a>
                </c:if>
            </div>
            <c:if test = "${ empty member }">
            	<a href="${ pageContext.request.contextPath }/login.do" class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5">로그인</a>
            </c:if>
            <c:if test = "${ not empty member }">
            	<a href="${ pageContext.request.contextPath }/account/list.do" class="btn btn-light rounded-pill text-primary py-2 px-4 ms-lg-5">내 계좌</a>
            </c:if>
        </div>
    </nav>
</div>