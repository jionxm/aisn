<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title></title>
		<#assign ctx = request.contextPath />
		<link rel="stylesheet" type="text/css" href="${ctx}/view/common/assets/pc/css/common.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/view/common/assets/pc/css/content.css" />
		<script src="${ctx}/view/common/assets/pc/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${ctx}/view/common/js/base.js" type="text/javascript" charset="utf-8"></script>
		<script src="${ctx}/view/common/js/datagrid.js" type="text/javascript" charset="utf-8"></script>
		<script src="${ctx}/view/common/css/plugins/easyui-1.5.2/jquery.easyui.min.js" type="text/javascript" charset="utf-8"></script>
		<style>
			.noContent{
				width:50%;
				display:block;
				margin:0 auto;
			}
		</style>
	 <#include "pc/common/base.ftl">
	</head>

	<body>
	<input type="hidden" id="from" value="${from}">
	<input type="hidden" id="code" value="${code}">
	<input id="assignee" type="hidden" value="${assignee}">
	<input id="assigneeName" type="hidden" value="${assigneeName}">
		<!--<div class="head">
			<div class="lf">
				欢迎页
				<span>X</span>
			</div>
			<div class="rt">
				<span>
					X
				</span> 关闭全部
			</div>
		</div>-->
		<div id="row1">
			<div class="lf">
				<h5>
					个人工作台
					<!--<img src="img/refresh-2.png" class="rt"/>-->
					<div class="rt" onclick="refresh3()"></div>
				</h5>
				<table border="" cellspacing="" cellpadding="">
					<thead>
						<tr>
							<td></td>
							<td>
								<a href="#">打开</a>
							</td>
							<td>
								<a href="#">重新打开</a>
							</td>
							<td>
								<a href="#">处理中</a>
							</td>
							<td>
								<a href="#">已解决</a>
							</td>
							<td>
								<a href="#">测试中</a>
							</td>
							<td>
								<a href="#">未解决</a>
							</td>
							<td>
								<a href="#">未完成</a>
							</td>
						</tr>
					</thead>
					<tbody>
					<#list work1.list[0] as w1 >
						<tr id="area1">
							<td>
								<a href="#" onclick="check1(this)" value="">分配给我的工作项</a>
							</td>
							<td>
								<a href="#" onclick="check1(this)" value="open">${w1.openc}</a>
							</td>
							<td>
								<a href="#" onclick="check1(this)" value="reopen">${w1.reopenc}</a>
							</td>
							<td>
								<a href="#" onclick="check1(this)" value="workin">${w1.workinc}</a>
							</td>
							<td>
								<a href="#" onclick="check1(this)" value="resolve">${w1.resolvec}</a>
							</td>
							<td>
								<a href="#" onclick="check1(this)" value="test">${w1.testc}</a>
							</td> 
							<td>
								<a href="#" onclick="check1(this)" value="open,reopen,workin">${w1.unresolvec}</a>
							</td>
							<td>
								<a href="#" onclick="check1(this)" value="open,reopen,workin,resolve,test">${w1.total}</a>
							</td>
						</tr>
						<#list work2.list[0] as w2 >
						<tr id="area2">
							<td>
								<a href="#" onclick="check2(this)" value="">我发起的工作项</a>
							</td>
							<td>
								<a href="#" onclick="check2(this)" value="open">${w2.openc}</a>
							</td>
							<td>
								<a href="#" onclick="check2(this)" value="reopen">${w2.reopenc}</a>
							</td>
							<td>
								<a href="#" onclick="check2(this)" value="workin">${w2.workinc}</a>
							</td>
							<td>
								<a href="#" onclick="check2(this)" value="resolve">${w2.resolvec}</a>
							</td>
							<td>
								<a href="#" onclick="check2(this)" value="test">${w2.testc}</a>
							</td>
							<td>
								<a href="#" onclick="check2(this)" value="open,reopen,workin">${w2.unresolvec}</a>
							</td>
							<td>
								<a href="#" onclick="check2(this)" value="open,reopen,workin,resolve,test">${w2.total}</a>
							</td>
						</tr>
						<#list work3.list[0] as w3 >
						<tr id="area3">
							<td>
								<a href="#" onclick="check3(this)" value="">我的测试设计任务</a>
							</td>
							<td>
								<a href="#" onclick="check3(this)" value="open">${w3.openc}</a>
							</td>
							<td>
								<a href="#" onclick="check3(this)" value="reopen">${w3.reopenc}</a>
							</td>
							<td>
								<a href="#" onclick="check3(this)" value="workin">${w3.workinc}</a>
							</td>
							<td>
								<a href="#" onclick="check3(this)" value="resolve">${w3.resolvec}</a>
							</td>
							<td>
								<a href="#" onclick="check3(this)" value="test">${w3.testc}</a>
							</td>
							<td>
								<a href="#" onclick="check3(this)" value="open,reopen,workin">${w3.unresolvec}</a>
							</td>
							<td>
								<a href="#" onclick="check3(this)" value="open,reopen,workin,resolve,test">${w3.total}</a>
							</td>
						</tr>
						<#list work4.list[0] as w4 >
						<tr id="area4">
							<td>
								<a href="#" onclick="check4(this)" value="">分配给我测试的工作项</a>
							</td>
							<td>
								<a href="#" onclick="check4(this)" value="open">${w4.openc}</a>
							</td>
							<td>
								<a href="#" onclick="check4(this)" value="reopen">${w4.reopenc}</a>
							</td>
							<td>
								<a href="#" onclick="check4(this)" value="workin">${w4.workinc}</a>
							</td>
							<td>
								<a href="#" onclick="check4(this)" value="resolve">${w4.resolvec}</a>
							</td>
							<td>
								<a href="#" onclick="check4(this)" value="test">${w4.testc}</a>
							</td>
							<td>
								<a href="#" onclick="check4(this)" value="open,reopen,workin">${w4.unresolvec}</a>
							</td>
							<td>
								<a href="#" onclick="check4(this)" value="open,reopen,workin,resolve,test">${w4.total}</a>
							</td>
						</tr>				
						<tr id="area5">
							<td>
								<a href="#">合计</a>
							</td>
							<td>
								<a href="#" id="openc">${w1.openc+w2.openc+w3.openc+w4.openc}</a>
							</td>
							<td>
								<a href="#" id="reopenc">${w1.reopenc+w2.reopenc+w3.reopenc+w4.reopenc}</a>
							</td>
							<td>
								<a href="#" id="workinc">${w1.workinc+w2.workinc+w3.workinc+w4.workinc}</a>
							</td>
							<td>
								<a href="#" id="resolvec">${w1.resolvec+w2.resolvec+w3.resolvec+w4.resolvec}</a>
							</td>
							<td>
								<a href="#" id="testc">${w1.testc+w2.testc+w3.testc+w4.testc}</a>
							</td>
							<td>
								<a href="#" id="unresolvec">${w1.unresolvec+w2.unresolvec+w3.unresolvec+w4.unresolvec}</a>
							</td>
							<td>
								<a href="#" id="total">${w1.total+w2.total+w3.total+w4.total}</a>
							</td>
						</tr>
						</#list>
					</#list>
				</#list>
			</#list>
					</tbody>
				</table>
			</div>
			<div class="rt">
				<h5>
					工作进展
					<img src="${ctx}/view/common/assets/pc/img/refresh-2.png" class="rt" onclick="refresh4()" />
				</h5>
				<div id="container">

				</div>
			</div>
		</div>
		<div id="row2">
			<div class="lf">
				<h5>
					系统公告
					<div class="rt" onclick="refresh()"></div>
				</h5>
				<ul id="annhtml">
				<#if announcement.list?size=0>
				<img src="${ctx}/view/common/assets/pc/img/nocontent.png" class="noContent">
				<#else>
				<#list announcement.list as ann >
					<li class="li-active">
						<a href="#" class="lf">${ann.title}</a>	
						<span class="rt">${ann.time}</span>
					</li>
					</#list>
				</#if>
				</ul>
			</div>
			<div class="rt">
				<h5>
					我的消息
					
					<!--<img src="img/refresh-2.png" class="rt"/>-->
					<div class="rt"></div>
					<div class="rt"></div>
					<div class="rt"></div>
					
				</h5>
				<ul>
					<!-- <li>
						<a href="#" class="lf"></a>
						<span class="rt"></span>
					</li>
					<li>
						<a href="#" class="lf"></a>
						<span class="rt"></span>
					</li>
					<li>
						<a href="#" class="lf"></a>
						<span class="rt"></span>
					</li>
					<li>
						<a href="#" class="lf"></a>
						<span class="rt"></span>
					</li>
					<li>
						<a href="#" class="lf"></a>
						<span class="rt"></span>
					</li> -->
					<img src="${ctx}/view/common/assets/pc/img/nocontent.png" class="noContent">
				</ul>

			</div>
		</div>

		<div id="row3">
			<div class="lf">
				<h5>
					项目动态
					<!--<img src="img/refresh-2.png" class="rt"/>-->
					<div class="rt" onclick="refresh1()"></div>
				</h5>
				<ul id="projecthtml">
				<#if issueLog.list?size=0>
				<img src="${ctx}/view/common/assets/pc/img/nocontent.png" class="noContent">
				<#else>
				<#list issueLog.list as il >
					<li>
						<a href="#" class="lf" title="工作项标题:${il.title}" >${il.list2}</a>
						<span class="rt">${il.time}</span>
					</li>
					</#list>
					</#if>	
				</ul>
			</div>
			<div class="rt">
				<h5>
					我的待办
					
					<!--<img src="img/refresh-2.png" class="rt"/>
					<img src="img/list-8.png" class="rt"/>
					<img src="img/message.png" class="rt"/>-->
					<div class="rt"></div>
				</h5>
				<ul>
				<img src="${ctx}/view/common/assets/pc/img/nocontent.png" class="noContent">
					<!-- <li>
						<b>
							<b></b>
						</b>
						<a href="#" class="lf"></a>
						<span class="rt red"></span>
					</li>
					<li>
						<b>
							<b></b>
						</b>
						<a href="#" class="lf"></a>
						<span class="rt red"></span>
					</li>
					<li>
						<b>
							<b></b>
						</b>
						<a href="#" class="lf"></a>
						<span class="rt red"></span>
					</li>
					<li>
						<b class="read">
							<b></b>
						</b>
						<a href="#" class="lf"></a>
						<span class="rt"></span>
					</li>
					<li>
						<b class="read">
							<b></b>
						</b>
						<a href="#" class="lf"></a>
						<span class="rt"></span>
					</li> -->
				</ul>

			</div>
		</div>
		<!--<script src="js/echarts.simple.min.js" type="text/javascript" charset="utf-8"></script>-->
		<script src="${ctx}/view/common/assets/pc/js/echarts.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${ctx}/view/common/assets/pc/js/echartsOption.js" type="text/javascript" charset="utf-8"></script>
		<script src="${ctx}/view/common/assets/pc/js/selfTheme.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			var mycharts = echarts.init(document.getElementById("container"), "customed");
			mycharts.setOption(option);
			var createBy=${createBy};
			var status="";
			function refresh(){
				console.log("系统公告");
				var announcement=${announcement.totalRecord?c};
				if(announcement==0){
					console.log("暂无数据");
				}else{
				status="ann";
				ajaxPost(APIS.frmAnnouncementList.query,{
					order:"desc",
					sort:"createTime",
/* 					eq_type:"system", */
					page:1,
					rows:5
					},function(data){
						console.log(data);
						render(data);
					});}
			}
			function refresh1(){
				console.log("项目动态");
				var issueLog=${issueLog.totalRecord?c};
				if(issueLog==0){
					console.log("暂无数据");
				}else{
				status="project";
				ajaxPost(APIS.issueLogList.query,{
					order:"desc",
					sort:"createTime",
					page:1,
					rows:5 
					},function(data){
						console.log(data);
						render(data);
					});
				}
			}
			function render(data) {
				if(status=="ann"){
				console.log("查询系统公告数据");
				var html="";
				for(var i=0;i<data.data.rows.length;i++){
					html+="<li class=\"li-active\">\n\t\t\t\t\t\t<a href=\"#\" class=\"lf\">"+data.data.rows[i].title+"</a>\t\n\t\t\t\t\t\t<span class=\"rt\">"+data.data.rows[i].createTime+"</span>\n\t\t\t\t\t</li>\n";
				}
                $("#annhtml").html(html); 
 				}
				if(status=="project"){
					console.log("查询项目动态数据");
					var html="";
					for(var i=0;i<data.data.rows.length;i++){
						var tl=data.data.rows[i].logContent+"；"+data.data.rows[i].title;
						var tl2=tl.replace("：","");
						 tl2=tl2.replace("<br/>","");
						if(tl2.length<=25){
						html+="<li>\n\t\t\t\t\t\t<a href=\"#\" class=\"lf\" title=\"\u5DE5\u4F5C\u9879\u6807\u9898:" + data.data.rows[i].title + "\" >" +tl2+ "</a>\n\t\t\t\t\t\t<span class=\"rt\">" + data.data.rows[i].createTime + "</span>\n\t\t\t\t\t</li>\n";
						}else{
						var tl3=tl2.substring(0,25);
						html+="<li>\n\t\t\t\t\t\t<a href=\"#\" class=\"lf\" title=\"\u5DE5\u4F5C\u9879\u6807\u9898:" + data.data.rows[i].title + "\" >" +tl3+ "</a>\n\t\t\t\t\t\t<span class=\"rt\">" + data.data.rows[i].createTime + "</span>\n\t\t\t\t\t</li>\n";
						}
					}
	                $("#projecthtml").html(html); 
	 				}
			}
		</script>
		<script type="text/javascript">
		 function Map(){  
		     var struct = function(key, value) {  
		      this.key = key;  
		      this.value = value;  
		     };  
		    // 添加map键值对  
		     var put = function(key, value){  
		       for (var i = 0; i < this.arr.length; i++) {  
		       if ( this.arr[i].key === key ) {  
		        this.arr[i].value = value;  
		        return;  
		       }  
		      };  
		      this.arr[this.arr.length] = new struct(key, value);  
		     };  
		    //  根据key获取value   
		     var get = function(key) {  
		      for (var i = 0; i < this.arr.length; i++) {  
		       if ( this.arr[i].key === key ) {  
		        return this.arr[i].value;  
		       }  
		      }  
		     return null;  
		     };  
		    //   根据key删除  
		     var remove = function(key) {  
		      var v;  
		      for (var i = 0; i < this.arr.length; i++) {  
		       v = this.arr.pop();  
		       if ( v.key === key ) {  
		        continue;  
		       }  
		       this.arr.unshift(v);  
		      }  
		     };  
		    //   获取map键值对个数  
		     var size = function() {  
		      return this.arr.length;  
		     };  
		    // 判断map是否为空    
		     var isEmpty = function() {  
		      return this.arr.length <= 0;  
		     };  
		     this.arr = new Array();  
		     this.get = get;  
		     this.put = put;  
		     this.remove = remove;  
		     this.size = size;  
		     this.isEmpty = isEmpty;  
		    } 
		</script>
		<script>
		var a=0;
		var b=0;
		var m = new Map();
		function refresh3(){
			console.log("个人工作台");
			ajaxPost(APIS.frmMyDashboard.query1,{
				},function(data){
					console.log(data);
					a=1;
					render1(data);
					ajaxPost(APIS.frmMyDashboard.query2,{
					},function(data){
						console.log(data);
						a=2;
						render1(data);
						refreshTotal();
					});
				});			
		}	
		function render1(data) {
			//刷新个人工作台记录
			if(a==1){
				console.log
				var html1="<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check1(this)\" value=\"\">\u5206\u914D\u7ED9\u6211\u7684\u5DE5\u4F5C\u9879</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check1(this)\" value=\"open\">" + data.data.rows[0].openc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check1(this)\" value=\"reopen\">" + data.data.rows[0].reopenc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check1(this)\" value=\"workin\">" + data.data.rows[0].workinc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check1(this)\" value=\"resolve\">" + data.data.rows[0].resolvec + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check1(this)\" value=\"test\">" + data.data.rows[0].testc + "</a>\n\t\t\t\t\t\t\t</td> \n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check1(this)\" value=\"open,reopen,workin\">" + data.data.rows[0].unresolvec + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check1(this)\" value=\"open,reopen,workin,resolve,test\">" + data.data.rows[0].total + "</a>\n\t\t\t\t\t\t\t</td>\n";
				var html2="<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check2(this)\" value=\"\">\u6211\u53D1\u8D77\u7684\u5DE5\u4F5C\u9879</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check2(this)\" value=\"open\">" + data.data.rows[1].openc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check2(this)\" value=\"reopen\">" + data.data.rows[1].reopenc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check2(this)\" value=\"workin\">" + data.data.rows[1].workinc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check2(this)\" value=\"resolve\">" + data.data.rows[1].resolvec + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check2(this)\" value=\"test\">" + data.data.rows[1].testc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check2(this)\" value=\"open,reopen,workin\">" + data.data.rows[1].unresolvec + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check2(this)\" value=\"open,reopen,workin,resolve,test\">" + data.data.rows[1].total + "</a>\n\t\t\t\t\t\t\t</td>\n";
				 $("#area1").html(html1); 
				 $("#area2").html(html2); 
			}
			if(a==2){
				var html3="<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check3(this)\" value=\"\">\u6211\u7684\u6D4B\u8BD5\u8BBE\u8BA1\u4EFB\u52A1</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check3(this)\" value=\"open\">" + data.data.rows[0].openc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check3(this)\" value=\"reopen\">" + data.data.rows[0].reopenc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check3(this)\" value=\"workin\">" + data.data.rows[0].workinc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check3(this)\" value=\"resolve\">" + data.data.rows[0].resolvec + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check3(this)\" value=\"test\">" + data.data.rows[0].testc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check3(this)\" value=\"open,reopen,workin\">" + data.data.rows[0].unresolvec + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check3(this)\" value=\"open,reopen,workin,resolve,test\">" + data.data.rows[0].total + "</a>\n\t\t\t\t\t\t\t</td>\n";
				var html4="<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check4(this)\" value=\"\">\u5206\u914D\u7ED9\u6211\u6D4B\u8BD5\u7684\u5DE5\u4F5C\u9879</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check4(this)\" value=\"open\">" + data.data.rows[1].openc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check4(this)\" value=\"reopen\">" + data.data.rows[1].reopenc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check4(this)\" value=\"workin\">" + data.data.rows[1].workinc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check4(this)\" value=\"resolve\">" + data.data.rows[1].resolvec + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check4(this)\" value=\"test\">" + data.data.rows[1].testc + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check4(this)\" value=\"open,reopen,workin\">" + data.data.rows[1].unresolvec + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" onclick=\"check4(this)\" value=\"open,reopen,workin,resolve,test\">" + data.data.rows[1].total + "</a>\n\t\t\t\t\t\t\t</td>\n";
				 $("#area3").html(html3); 
				 $("#area4").html(html4); 
			}
		}
		function refreshTotal(){
			//刷新个人工作台总计
			for(var j=1;j<=7;j++){
				var area=0;
				for(var i=1;i<=4;i++){				
					area+=Number($("#area"+i).find("td").eq(j).text());				
				}
				m.put("result"+j,area);
			}	
			console.log(m);
			var html5="<td>\n\t\t\t\t\t\t\t\t<a href=\"#\">\u5408\u8BA1</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"openc\">" + m.get("result1") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"reopenc\">" + m.get("result2") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"workinc\">" + m.get("result3") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"resolvec\">" + m.get("result4") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"testc\">" + m.get("result5") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"unresolvec\">" + m.get("result6") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"total\">" + m.get("result7") + "</a>\n\t\t\t\t\t\t\t</td>\n";
			$("#area5").html(html5);
		}
		function refresh4(){
			console.log("先刷新个人工作台")
			ajaxPost(APIS.frmMyDashboard.query1,{
				},function(data){
					console.log(data);
					a=1;
					render1(data);
					ajaxPost(APIS.frmMyDashboard.query2,{
					},function(data){
						console.log(data);
						a=2;
						render1(data);
						refreshTotal1();
					});
				});	
		}
		function refreshTotal1(){
			for(var j=1;j<=7;j++){
				var area=0;
				for(var i=1;i<=4;i++){				
					area+=Number($("#area"+i).find("td").eq(j).text());				
				}
				m.put("result"+j,area);
			
			}	
			console.log(m);
			var html5="<td>\n\t\t\t\t\t\t\t\t<a href=\"#\">\u5408\u8BA1</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"openc\">" + m.get("result1") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"reopenc\">" + m.get("result2") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"workinc\">" + m.get("result3") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"resolvec\">" + m.get("result4") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"testc\">" + m.get("result5") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"unresolvec\">" + m.get("result6") + "</a>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td>\n\t\t\t\t\t\t\t\t<a href=\"#\" id=\"total\">" + m.get("result7") + "</a>\n\t\t\t\t\t\t\t</td>\n";
			$("#area5").html(html5);
			console.log("再刷新饼图");
			for(var i=1;i<=5;i++){
					if(m.get("result"+i)!=null){
						option.series[0].data[i-1].value=m.get(("result"+i));
					}
			
			}
			/* 	option.series[0].data[0].value=
				option.series[0].data[1].value=m.get("result2");
				option.series[0].data[2].value=m.get("result3");
				option.series[0].data[3].value=m.get("result4");
				option.series[0].data[4].value=m.get("result5"); */
				mycharts.setOption(option); 
				/* mycharts = echarts.init(document.getElementById("container"), "customed"); */
			
		}
		</script>
		<script src="${ctx}/view/common/assets/pc/js/content.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>