<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">로그인이 필요한 서비스입니다.</h5>
        <button type="button" class="btn-close btn-cancle" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="modal-body">
        <p>로그인하시겠습니까?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary btn-login" onclick="goLogin('${ pageContext.request.contextPath }')">로그인</button>
        <button type="button" class="btn btn-secondary btn-cancle" data-bs-dismiss="modal" >취소</button>
      </div>
    </div>
  </div>
</div>