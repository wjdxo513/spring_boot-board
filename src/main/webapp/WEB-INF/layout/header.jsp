<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<style>
.navbar-toggler {
    background-color: #a7a38e;
}
.navbar-toggler-icon {
	background-color: #90907a;
}
</style>
<nav class="navbar navbar-expand-lg navbar-gold bg-gold fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index" style=" color: rgba(0,0,0,.7); ">Coin Delivery</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index" style=" color: rgba(0,0,0,.7); ">홈</a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="purchase" style=" color: rgba(0,0,0,.7); ">구매대행</a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="sell" style=" color: rgba(0,0,0,.7); ">판매대행</a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="history" style=" color: rgba(0,0,0,.7); ">신청내역</a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="calculator" style=" color: rgba(0,0,0,.7); ">계산기</a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="customer" style=" color: rgba(0,0,0,.7); ">커뮤니티 & 리뷰</a>
          </li>
        </ul>
      </div>
    </div>
</nav>