<!DOCTYPE html>
<html lang="zh-CN">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
  <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
  <title>达内软件外包解决方案</title>
  <!-- <link rel="shortcut icon" href="" type="image/x-icon"> -->
  <#assign ctx = request.contextPath />
  <script src="${ctx}/view/common/assets/pc/js/jquery-1.9.1.min.js"></script>
  <link rel="stylesheet" href="${ctx}/view/common/assets/pc/css/common_c60c328.css">
  <link rel="stylesheet" href="${ctx}/view/common/assets/pc/css/index.css">
  <link rel="stylesheet" href="${ctx}/view/common/assets/pc/css/contactMy.css">
  <#include "pc/common/base.ftl">
</head>

<body>

  <header>
    <h1>
      <img src="${ctx}/view/common/assets/pc/img/logo.png" alt="logo,tedu,达内">
      <span>达内教育</span>
    </h1>
   <div class="nav">
      <div>
        <a href="http://www.tsoftware.cn/#service">服务内容</a>
      </div>
      <div>
        <a href="http://www.tsoftware.cn/#team">开发团队</a>
      </div>
      <div>
        <a href="http://www.tsoftware.cn/#product">平台产品</a>
      </div>
      <div>
        <a href="http://www.tsoftware.cn/#develop">开发过程</a>
      </div>
      <div>
        <a href="http://www.tsoftware.cn/#manage">项目管理</a>
      </div>
      <div class="last">
        <a href="http://www.tsoftware.cn/#culture">企业文化</a>
      </div>
    </div>

  </header>

  <div class="header-mb">
    <h1>
      <img src="${ctx}/view/common/assets/pc/img/logo.png" alt="logo,tedu,达内,外包">
      <span>达内教育</span>
    </h1>
    <div class="btn" id="listBtn"></div>
    <div class="nav" id="list">
      <div>
        <a href="http://www.tsoftware.cn/#service">服务内容</a>
      </div>
      <div>
        <a href="http://www.tsoftware.cn/#team">开发团队</a>
      </div>
      <div>
        <a href="http://www.tsoftware.cn/#product">平台产品</a>
      </div>
      <div>
        <a href="http://www.tsoftware.cn/#develop">开发过程</a>
      </div>
      <div>
        <a href="http://www.tsoftware.cn/#manage">项目管理</a>
      </div>
      <div class="last">
        <a href="http://www.tsoftware.cn/#culture">企业文化</a>
      </div>
    </div>
  </div>
  <div class="contact-my">
      <div>联系我们</div>
      <div>Contact   us</div>
  </div>
  <div class="detail-contact-my">
      <div>
          <span>项目名称</span><input class="detail-ipnut1" id="proname"type="text"><a id="proname1" class="none">该内容不能为空</a>
      </div>
      <div>
        <span class="position">项目概述</span><textarea name="" id="content" cols="80" rows="5"></textarea><a id="content1" class="none">该内容不能为空</a>
      </div>
      <div>
        <span>公司名称</span><input class="detail-ipnut1" id="company"type="text"><a id="company1" class="none">该内容不能为空</a>
      </div>
      <div>
        <span>&nbsp;&nbsp;&nbsp;联系人</span><input class="detail-ipnut1"id="initName" type="text"><a id="initName1" class="none">该内容不能为空</a>
      </div>
      <div class="detail-bottom">
        <span>联系方式</span><input class="detail-ipnut1" id="initPhone" type="text"><a id="initPhone1" class="none">格式不正确</a>
      </div>
  </div>
  <div class="detail-contact-my">
    <div>
        <span>&nbsp;&nbsp;&nbsp;报备人</span><input class="detail-ipnut1" id="reportor" type="text"><a id="reportor1" class="none">该内容不能为空</a>
    </div>

    <div>
      <span>报备人单位</span><input class="detail-ipnut1" id="reportorg" type="text"><a id="reportorg1" class="none">该内容不能为空</a>
    </div>
    <div>
      <span>联系方式</span><input class="detail-ipnut1" id="reportContact" type="text"><a id="reportContact1" class="none">格式不正确</a>
    </div>
</div>
<div class="detail-contact-mysubmit">
		<div class="check-text none">所有内容都为必填项</div>
        <button class="submit-ok" onclick="submitSales()">确认提交</button>
        <button class="cehck-return">查看反馈</button>
</div>
<div class="submit-psd none">
    <div class="submit-freek">
        <div class="submit-img1 none">提交成功</div>
        <div class="submit-img none">提交失败</div>
    </div>
</div> 
<div  class="feed none">
    <div class="feedback">
     <div class="feedback-close"></div>
      <div class="in-short">
        <span>请输入手机号</span>  <br> 
        <input type="text" id="phone" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" ><br>
        <div class="check-phone none">手机号格式错误，请重新输入</div><br>
        <button class="short-ok"onclick="findByPhone()">确定</button>
      </div>
      <div class="feed-picture none">
        <div class="feedback-picture"><img src="${ctx}/view/common/assets/pc/img/feedback.png" alt=""><div>反馈</div></div>
       	<div class="feedback-table">
	       	<table cellspacing="0px"id="feedback">
	          <tr border="1px solid #b7b7b7">
	            <td class="feedback-project-name" height="5%">项目名称</td>
	            <td class="feedback-project-state" height="5%">项目状态</td>
	            <td height="78px" align="center">当前进度</td>
	          </tr>
	        </table>
       	</div>
      </div>
    </div>

</div>
 
  <script src="${ctx}/view/common/assets/pc/js/contactMy.js"></script>
<script>


	function submitSales(){
			var ctlProName = $('#proname').val();
			var ctlContent = $('#content').val();
			var ctlCustomerName = $('#company').val();
			var ctlInitName = $('#initName').val();
			var ctlInitPhone = $('#initPhone').val();
			var ctlReportName = $('#reportor').val();
			var ctlReportContact = $('#reportContact').val();
			var reportOrgName = $('#reportorg').val();
	  		//合并正则
	  		var regtell = /(^[1][3,4,5,7,8][0-9]{9}$)|(^(0\d{2,3}-\d{7,8})(-\d{1,4})?$)/;
			if(ctlProName==""){
			$(".detail-contact-my>div>a").addClass("none");
				  $("#proname1").removeClass("none");
				  window.location.hash = "#proname";
			}
			else if(ctlContent==""){
					$(".detail-contact-my>div>a").addClass("none");
				    $("#content1").removeClass("none");
				    window.location.hash = "#content";
			}
			else if(ctlCustomerName==""){
					$(".detail-contact-my>div>a").addClass("none");
					 $("#company1").removeClass("none");
				     window.location.hash = "#company";
			}
			else if(ctlInitName==""){
					$(".detail-contact-my>div>a").addClass("none");
					$("#initName1").removeClass("none");
				    window.location.hash = "#initName";
			}
				else if(!regtell.test(ctlInitPhone)){
					$(".detail-contact-my>div>a").addClass("none");
				    $("#initPhone1").removeClass("none");
				    window.location.hash = "#initPhone";
			
			}
				else if(ctlReportName==""){
					$(".detail-contact-my>div>a").addClass("none");
				    $("#reportor1").removeClass("none");
				    window.location.hash = "#reportor";
				}
				else if(reportOrgName==""){
					$(".detail-contact-my>div>a").addClass("none");
				    $("#reportorg1").removeClass("none");
				    window.location.hash = "#reportorg";
			}
				else if(!regtell.test(ctlReportContact)){
				  $(".detail-contact-my>div>a").addClass("none");
				  $("#reportContact1").removeClass("none");
				  window.location.hash = "#reportContact";
			}
				else{
				$(".detail-contact-my>div>a").addClass("none");
				console.log("个人工作台");
				$.ajax({
					   	url :"/sales/saveBusiness",
					    type : "POST",
					    contentType:"application/json",
					    data:JSON.stringify({"proName":ctlProName,"content":ctlContent,"customerName":ctlCustomerName,   	
						"initName":ctlInitName,"initPhone":ctlInitPhone,"reportName":ctlReportName,"reportContact":ctlReportContact,"reportOrgName":reportOrgName}),
					    dataType : "json",
					    success : function(result) {
					    		if(result.status==200){
					    			$(".submit-psd").removeClass("none");
									$(".submit-img1").removeClass("none");
			                		setTimeout(function () {
			                    	window.location.reload();
			                    	$(".submit-psd").delay(2000).addClass("none");
			               			}, 2000);
					    		}else{
					    			$(".submit-psd").removeClass("none");
									$(".submit-img").removeClass("none");
		                    		setTimeout(function () {
		                   		 	$(".submit-psd").delay(2000).addClass("none");
		                   		 	window.location.reload();
		                			}, 2000);
		                    	}
					                
					          }
					 });}
				/* ajaxPost(APIS.frmSaleBusinessAdd.save,{
				Mode:"Add",
				cltStageName:"potentialbusiness",
				ctlCustomerName:ctlCustomerName,
				ctlInitName:ctlInitName,
				ctlInitPhone:ctlInitPhone,
				ctlProName:ctlProName,
				ctlReportContact:ctlReportContact,
				ctlReportName:ctlReportName,
				reportOrgName:reportOrgName,
				ctlContent:ctlContent
				},function(data){
					console.log(data);
					if(data.code!=0){
						//错误的
						$(".submit-psd").removeClass("none");
						$(".submit-img").removeClass("none");
                    	setTimeout(function () {
                   		 $(".submit-psd").delay(2000).addClass("none");
                   		 window.location.reload();
                	}, 2000);
					}else{
					//正确
						$(".submit-psd").removeClass("none");
						$(".submit-img1").removeClass("none");
                		setTimeout(function () {
                    	window.location.reload();
                    	$(".submit-psd").delay(2000).addClass("none");
               		}, 2000);
					}
				});	 */
			}
			
		function findByPhone(){
			var phone = $('#phone').val();
			var reg=/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\d{8}$/;
			var r = phone.match(reg);
			console.log(phone);
			console.log(r);
			if(r==null){
			$(".check-phone").removeClass("none");
			}else{
			    $(".feed-picture").removeClass("none");
    			$(".in-short").addClass("none");
    			$(".check-phone").addClass("none");
    			$.ajax({
				   	url :"/sales/find",
				    type : "POST",
				    contentType:"application/json",
				    data:JSON.stringify({phone:phone}),
				    dataType : "json",
				    success : function(result) {
					for(var i=0;i<result.data.length;i++){
						var status='';
						var stage = result.data[i].stage;
						var preSalesUpdate=result.data[i].preSalesUpdate;
						if(preSalesUpdate==null){
							preSalesUpdate='';
							console.log(preSalesUpdate);
						}
						if(result.data[i].status=='abolish'){
							status='项目终止';
						}else{
							if(stage=='potentialbusiness'||stage=='presales'||stage=='bid'||stage=='approve'){
								status='项目跟进';
							}else{
							status='项目签约';
							}
						}
						var html="<tr><td class='feedback-project-name' >"+result.data[i].proName+"</td><td class='feedback-project-state'>"+status+"</td><td class='feedback-project-schedule'>"+preSalesUpdate+"</td></tr>";
						$('#feedback').append(html);
					}
				    }
    			});	
    			}		
		}
</script>
</body>

</html>
