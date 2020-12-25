<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>과제</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<style>
.fakeimg {
  height: 200px;
  background: #aaa;
}
.subReply {
    padding-left: 50px;
}
</style>
<script>
 var IDX = getQueryStringObject().idx;
 function getQueryStringObject() {
    var a = window.location.search.substr(1).split('&');
    if (a == "") return {};
    var b = {};
    for (var i = 0; i < a.length; ++i) {
        var p = a[i].split('=', 2);
        if (p.length == 1)
            b[p[0]] = "";
        else
            b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
    }
    return b;
}
function drawReply(replys) {
	$("#cnt").text("등록된 댓글 - " + replys.length)
	var html = '';
	html += '<form class="form-inline" action="writeReply" method="post"><input type="hidden" name="idx" value = "' + IDX + '"><input type="hidden" name="replyIdx" value = "0"><input type="text" class="form-control mb-2 mr-sm-2" id="contents" placeholder="답글" name="contents"><button type="submit" class="btn btn-primary mb-2">등록</button></form>';

	replys.forEach(function(reply){ 
		if (reply.replyIdx == 0) {
			var rc = 0;
			replys.forEach(function(i){
				if (reply.idx == i.replyIdx) rc++;
			})
			html += '<div class="row"><div class="col-sm-12">';
			html += '<form class="form-inline" action="writeReply" method="post"><label for="pwd" class="mr-sm-2">' + reply.contents + '(' + rc + ')' + '</label>'
			html += '<input type="hidden" name="idx" value = "' + IDX + '"><input type="hidden" name="replyIdx" value = "' + reply.idx + '"><input type="text" class="form-control mb-2 mr-sm-2" id="contents" placeholder="답글" name="contents"><button type="submit" class="btn btn-primary mb-2">등록</button></form>';
			html += '<div class="row"><div class="col-sm-12 sub' + reply.idx + '"></div></div></div></div>';
		}
	})
	$("#replyArea").append(html);
	replys.forEach(function(reply){ 
		if (reply.replyIdx != 0) {
			var rc = 0;
			replys.forEach(function(i){
				if (reply.idx == i.replyIdx) rc++;
			})
			var subHtml = '';
			subHtml = '<div class="row"><div class="col-sm-12 subReply">';
			subHtml += '<form class="form-inline" action="writeReply" method="post"><label for="pwd" class="mr-sm-2">' + reply.contents + '(' + rc + ')' + '</label>'
			subHtml += '<input type="hidden" name="idx" value = "' + IDX + '"><input type="hidden" name="replyIdx" value = "' + reply.idx + '"><input type="text" class="form-control mb-2 mr-sm-2" id="contents" placeholder="답글" name="contents"><button type="submit" class="btn btn-primary mb-2">등록</button></form>';
			subHtml += '<div class="row"><div class="col-sm-12 sub' + reply.idx + '"></div></div></div></div>';
			$(".sub" + reply.replyIdx).append(subHtml);
		}
	})
}
  $.ajax({url: "boardView?idx="+IDX, success: function(result){
	  $("#image").append('<img src="resources/'+ result.image + '" style="width: 100%;">');
	  $("#title").text(result.title);
	  $("#contents").text(result.contents);
   }});

  $.ajax({url: "replyList?idx="+IDX, success: function(replys){
	  drawReply(replys)
   }});
  
  </script>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>과제</h1>
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="index">홈</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="board">게시판</a>
      </li>
    </ul>
  </div>  
</nav>

<div class="container" style="margin-top:30px">
	<div class="row">
		<div class="col-sm-12">
	      <h2>본문</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6">
	      <div id = "image"></div>
		</div>
		<div class="col-sm-6">
			<div class="row">
				<div class="col-sm-12">
			      <h2 id = "title"></h2>
				</div>
				<div class="col-sm-12">
			      <pre id = "contents"></pre>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
	      <h2 id = "cnt"></h2>
	      <div id = "replyArea"></div>
		</div>
	</div>
</div>
</body>
</html>
