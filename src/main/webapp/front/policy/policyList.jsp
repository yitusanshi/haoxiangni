<%@ page import="com.enterprise.entity.ArticleCategory" %>
<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="/front/common/common.jsp" %>

<body>
<%@include file="/front/common/navigation.jsp" %>
<div class="banner" style="background-image: url(<%=path%>/resource/images/banner.jpg)">

</div>
<div class="warp_main">
    <div class="warp_left">
        <div class="warp_left_box">
            <h3>政策信息</h3>
            <ul>
                <c:forEach var="item" items="<%=SystemManage.getInstance().getPolicyCategory()%>">
                    <li
                            <c:if test="${!empty secondCode && secondCode eq item.secondCode}">class="active"</c:if> ><a
                            href="<%=path%>/policy/article/${item.secondCode}">${item.catename}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="warp_right">
        <div class="breadcrumb">
            <a href="<%=path%>/index">首页</a>
            >
            <a href="<%=path%>/policy/article">政策信息</a>
            <%
                String secondCode = (String) request.getAttribute("secondCode");
                if (secondCode != null && secondCode.length() != 0) {
                    for (ArticleCategory ac : SystemManage.getInstance().getPolicyCategory()) {
                        if ((ac.getSecondCode()).equals(secondCode)) {
            %>
            ><a href="<%=path%>/policy/article<%=ac.getSecondCode()%>"><%=ac.getCatename()%>
        </a>
            <%
                            break;
                        }
                    }
                }
            %>
        </div>
        <div style="overflow: hidden;">
            <c:forEach var="item" items="${pager.list}">
                <div class="article_item">
                    <h2><a href="<%=path%>/policy/article/${item.id}">${item.title}</a></h2>
                    <p class="article_item_message">
                            ${item.createtime} | 分类：${item.catename} | 浏览量：${item.hit}
                    </p>
                    <a href="policy/article/${item.id}"><span>${item.description}…</span></a>
                </div>
            </c:forEach>
        </div>
        <div style="margin-top: 20px;">
            <%@include file="/front/common/page.jsp" %>
        </div>
    </div>
</div>


<%@include file="/front/common/foot.jsp" %>
