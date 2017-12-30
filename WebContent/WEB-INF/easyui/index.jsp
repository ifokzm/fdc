<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/taglibs/taglibs.jsp"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>欢迎</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name=renderer content=webkit>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
        $(function(){
            if (jqueryUtil.isLessThanIe8()) {
                $.messager.show({
                    title : '警告',
                    msg : '您使用的浏览器版本太低！<br/>建议您使用谷歌浏览器来获得更快的页面响应效果！',
                    timeout : 1000 * 30
                });
            }
        });
	</script>
	<style type="text/css">
		#menuAccordion a.l-btn span span.l-btn-text {
			display: inline-block;
			height: 14px;
			line-height: 14px;
			margin: 0px 0px 0px 10px;
			padding: 0px 0px 0px 10px;
			vertical-align: baseline;
			width: 128px;
		}
		#menuAccordion 	a.l-btn span span.l-btn-icon-left {
			background-position: left center;
			padding: 0px 0px 0px 20px;
		}
		#menuAccordion .panel-body {
			padding:5px;
		}
		#menuAccordion span:focus{
			outline: none;
		}
	</style>
</head>
<body class="easyui-layout">
<div data-options="region:'north',border:false" style="height:40px;background:#EEE;padding:10px;overflow: hidden;"  href="${ctx }/north"></div>
<div data-options="region:'west',split:true,title:'功能菜单'" style="width:200px;">
	<div id="menuAccordion" class="easyui-accordion" >
		<div title="商品房信息" data-options="iconCls:'icon-search'" style="overflow: auto; padding: 0px;">
			<div class="well well-small">
				<ul class="easyui-tree">
					<!-- 						<li class="last"><a href="javascript:void(0);" >项目查询</a></li> -->
					<!-- 						<li class="last"><a href="javascript:void(0);" >交易查询</a></li> -->
					<!-- 						<li class="last"><a href="javascript:void(0);" >供应查询</a></li> -->
					<!-- 						<li class="last"><a href="javascript:void(0);" >多点存量</a></li>  -->
					<!-- 						<li class="last"><a href="javascript:void(0);" >单点存量</a></li>  -->
					<!-- 						<li class="last"><a href="javascript:void(0);" >坐标设置</a></li>  -->
					<!-- 						<li class="last"><a href="javascript:void(0);" >项目土地</a></li>  -->
					<c:forEach items="${menuList }" var="menu">
						<c:if test="${menu.parentId == 115}">
							<li class="last"><a href="javascript:void(0);" onclick="addTab('${menu.name }','${ctx}/${menu.url }');">${menu.name }</a></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div title="楼市榜单" data-options="iconCls:'icon-search',selected:false" style="padding: 0px;">
			<div class="well well-small">
				<ul class="easyui-tree">
					<!-- 						 <li class="last"><a href="javascript:void(0);" >成交排行</a></li>  -->
					<!-- 						 <li class="last"><a href="javascript:void(0);" >供应排行</a></li>  -->
					<!-- 						 <li class="last"><a href="javascript:void(0);" >存量排行</a></li>  -->
					<c:forEach items="${menuList }" var="menu">
						<c:if test="${menu.parentId == 123}">
							<li class="last"><a href="javascript:void(0);" onclick="addTab('${menu.name }','${ctx}/${menu.url }');">${menu.name }</a></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div title="土地查询" data-options="iconCls:'icon-search',selected:false" style="padding: 0px;">
			<div class="well well-small">
				<ul class="easyui-tree">
					<!-- 						 <li class="last"><a href="javascript:void(0);" >土地查询</a></li>  -->
					<!-- 						 <li class="last"><a href="javascript:void(0);" >土地录入</a></li>  -->
					<!-- 						 <li class="last"><a href="javascript:void(0);" >土地整理</a></li>  -->
					<!-- 						 <li class="last"><a href="javascript:void(0);" >坐标检查</a></li>  -->
					<!-- 						 <li class="last"><a href="javascript:void(0);" >信息采集</a></li>  -->
					<c:forEach items="${menuList }" var="menu">
						<c:if test="${menu.parentId == 127}">
							<li class="last"><a href="javascript:void(0);" onclick="addTab('${menu.name }','${ctx}/${menu.url }');">${menu.name }</a></li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div>

		<shiro:hasRole name="admin">
			<div title="个性设置" data-options="iconCls:'icon-search',selected:false" style="padding: 0px;">
				<div class="well well-small">
					<ul class="easyui-tree">
						<!-- 							 <li class="last"><a href="javascript:void(0);" >面积段定义</a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >单价段定义</a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >总价段定义</a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >楼盘组群</a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >小微板块</a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >所属板块</a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >户型定义 </a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >交付标准 </a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >物业定义 </a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >销售状态 </a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >交易状态 </a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >所属区域 </a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >地图设置</a></li>  -->
						<!-- 							 <li class="last"><a href="javascript:void(0);" >建筑类型 </a></li>  -->
						<c:forEach items="${menuList }" var="menu">
							<c:if test="${menu.parentId == 133}">
								<li class="last"><a href="javascript:void(0);" onclick="addTab('${menu.name }','${ctx}/${menu.url }');">${menu.name }</a></li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>

			<div title="系统设置" data-options="iconCls:'icon-search',selected:false" style="padding: 0px;">
				<div class="well well-small">
					<ul class="easyui-tree">
						<c:forEach items="${menuList }" var="menu">
							<c:if test="${menu.parentId == 148}">
								<li class="last"><a href="javascript:void(0);" onclick="addTab('${menu.name }','${ctx}/${menu.url }');">${menu.name }</a></li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>
		</shiro:hasRole>

		<%-- 					<div title="${menu.name}" data-options="iconCls:'icon-search',selected:false" style="padding: 0px;"> --%>
		<!-- 						<div class="well well-small"> -->
		<!-- 							<ul class="easyui-tree"> -->
		<!-- 								<li> -->
		<%-- 									<shiro:hasRole name="user"> --%>
		<!-- 										<span>用户功能</span> -->
		<%-- 									</shiro:hasRole> --%>
		<%-- 									<shiro:hasRole name="admin"> --%>
		<!-- 										<span>管理员功能</span> -->
		<%-- 									</shiro:hasRole> --%>
		<!-- 									<ul> -->
		<%-- 										<c:forEach items="${menuList }" var="menu"> --%>
		<%-- 											<li class="last"><a href="javascript:void(0);" onclick="addTab('${menu.name }','${ctx}/${menu.url }');">${menu.name }</a></li> --%>
		<%-- 										</c:forEach> --%>
		<!-- 									</ul> -->
		<!-- 								</li> -->
		<!-- 							</ul> -->
		<!-- 						</div> -->
		<!-- 					</div> -->
	</div>
</div>
<div data-options="region:'south',border:false" style="height:25px;background:#EEE;padding:5px;" href="${ctx }/south"></div>
<div data-options="region:'center',plain:true,title:'欢迎使用'" style="overflow: hidden;"  href="${ctx }/center"></div>
<%--	<jsp:include page="user/loginAndReg.jsp"></jsp:include>--%>
</body>
</html>
