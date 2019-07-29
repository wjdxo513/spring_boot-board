<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<style>
tr {
    cursor: pointer;
}
label {
    text-align: right;
 }
</style>
<div class="container" style="padding-top: 20px;padding-bottom: 20px;">

	<div class="row" style="padding-top: 20px;padding-bottom: 20px;">
		<div class="col-sm-12">
			<h1> 구매(송금)대행 관리</h1>
			<h3></h3>
		</div>
	</div>
	
	<div class="row " style="padding-top: 20px;padding-bottom: 20px;">
		<div class="input-group">
			<div class="col-sm-12">
				<div class="row">
					<div class="input-group">
						<label class="control-label col-sm-2">비트코인</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="btcValue" disabled>
						</div>
						<label class="control-label col-sm-2">이더리움</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="ethValue" disabled>
						</div>
						<label class="control-label col-sm-2">리플</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="xrpValue" disabled>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row" style="padding-top: 20px;padding-bottom: 20px;">
		<div class="col-lg-6">
			<h3> 입금 대기</h3>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>타입</th>
						<th>지급코인</th>
						<th>수수료코인</th>
						<th>금액</th>
						<th>이름</th>
						<th></th>
					</tr>
				</thead>
				<tbody id = "table1">
				</tbody>
			</table>
		</div>
		<div class="col-lg-6">
			<h3> 입금 완료 & 코인 지급 대기</h3>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>타입</th>
						<th>지급코인</th>
						<th>수수료코인</th>
						<th>금액</th>
						<th>이름</th>
						<th></th>
					</tr>
				</thead>
				<tbody id = "table2">
				</tbody>
			</table>
		</div>
	</div>
	<div class="row" style="padding-top: 20px;padding-bottom: 20px;">
		<div class="col-lg-6">
			<h3> 코인 지급 완료</h3>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>타입</th>
						<th>지급코인</th>
						<th>수수료코인</th>
						<th>금액</th>
						<th>이름</th>
						<th></th>
					</tr>
				</thead>
				<tbody id = "table3">
				</tbody>
			</table>
		</div>
		<div class="col-lg-6">
			<h3> 거래 완료</h3>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>타입</th>
						<th>지급코인</th>
						<th>수수료코인</th>
						<th>금액</th>
						<th>이름</th>
						<th></th>
					</tr>
				</thead>
				<tbody id = "table4">
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="modal" id="myModal">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">거래 상세</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
      		<div class="row">
      			<div class="input-group">
					<label class="control-label col-sm-4">코인 타입</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="cointype" readonly>
					</div>
				</div>
      			<div class="input-group">
					<label class="control-label col-sm-4">코인 단가</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="val" readonly>
					</div>
				</div>
      			<div class="input-group">
					<label class="control-label col-sm-4">거래 금액</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="won" readonly>
					</div>
				</div>
      			<div class="input-group">
					<label class="control-label col-sm-4">구입 코인</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="val2" readonly>
					</div>
				</div>
      			<div class="input-group">
					<label class="control-label col-sm-4">수수료</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="val3" readonly>
					</div>
				</div>
      			<div class="input-group">
					<label class="control-label col-sm-4">실 지급 코인</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="val4" readonly>
					</div>
				</div>
      			<div class="input-group">
					<label class="control-label col-sm-4">지갑 주소</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="wallet" readonly>
					</div>
				</div>
      			<div class="input-group">
					<label class="control-label col-sm-4">이름</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="name" readonly>
					</div>
				</div>
      			<div class="input-group">
					<label class="control-label col-sm-4">연락처</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="phone" readonly>
					</div>
				</div>
      			<div class="input-group">
					<label class="control-label col-sm-4">기타내용</label>
					<div class="col-sm-8">
						<textarea class="form-control" id="content" rows="6"></textarea>
					</div>
				</div>
      		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
function drawTable(area, data, status) {
	var btn = {
			"S" : "입금확인",
			"T" : "지급완료",
			"U" : "거래완료"
	}
	var html = '';
	data.forEach(function(item){
		if (item.status == status) {
			html += '<tr class = "modelTr" data = "' + item.id + '">';
				html += '<td>' + item.coinType + '</td>';
				html += '<td>' + item.val4 + '</td>';
				html += '<td>' + item.val3 + '</td>';
				html += '<td>' + item.won + '</td>';
				html += '<td>' + item.name + '</td>';
				var btnHtml = '';
				if (typeof btn[item.status] != "undefined")
					btnHtml = '<input class="btnEve' + item.status + '" type="button" data="' + item.id + '" value="'+btn[item.status]+'">';
				html += '<td>' + btnHtml +'</td>';
			html += '</tr>';
		}
	})
	if (html == '')
		html = '<tr><td colspan="5" style=" text-align: center; ">해당 건수가 없습니다.</td></tr>';
	$("#" + area).empty().append(html);
	event(status);
}

function event(status){
	var ss = {
		"S" : "T",
		"T" : "U",
		"U" : "X"
	}
	$(".btnEve" + status).click(function(){
		var id = $(this).attr("data");
		$.get('../manager/purchase/update/json?status=' + ss[status] + '&id=' + id, function(data) {
			if (data)
				location.href = '../manager/purchase';
		});
	})
}
var PURCHASES = [];
$.get('../manager/purchase/all/json', function(data) {
	PURCHASES = JSON.parse(data);
	drawTable("table1", PURCHASES, "S");
	drawTable("table2", PURCHASES, "T");
	drawTable("table3", PURCHASES, "U");
	drawTable("table4", PURCHASES, "X");
	$(".modelTr").click(function(){
		var id = $(this).attr("data");
		$("#myModal").modal();
		var p;
		PURCHASES.forEach(function(item){
			if (id == item.id) {
				p = item;
			}
		})
		console.log(p)
		$("#cointype").val(p.coinType);
		$("#content").val(p.content);
		$("#name").val(p.name);
		$("#phone").val(p.phone);
		$("#val").val(p.val);
		$("#val2").val(p.val2);
		$("#val3").val(p.val3);
		$("#val4").val(p.val4);
		$("#wallet").val(p.wallet);
		$("#won").val(p.won);
	})
});
var btcValue = 0;
var ethValue = 0;
var xrpValue = 0;
// 천단위 콤마 함수
function numberWithCommas(x) {//.substring(0,10)
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
// 숫자 외 문자열 제거 함수
function numberDeleteChar(x) {
	return x.toString().replace(/[^0-9]+/g, '');
}
function coinone(){
	$.get('https://api.coinone.co.kr/ticker?currency=all', function(data) {
		btcValue = data['btc']['last'];
		$("#btcValue").val(numberWithCommas(parseFloat(btcValue)));
		ethValue = data['eth']['last'];
		$("#ethValue").val(numberWithCommas(parseFloat(ethValue)));
		xrpValue = data['xrp']['last'];
		$("#xrpValue").val(numberWithCommas(parseFloat(xrpValue)));
	});
}
coinone();
</script>