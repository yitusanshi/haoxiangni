<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<%@include file="/front/common/common.jsp" %>
<style>
    .banners {
        padding: 130px 0px;
        width: 1240px;
        margin: 0 auto;
    }

    .banners_li {
        width: 33.33%;
        text-align: left;
    }

    .banners ul li {
        box-sizing: border-box;
        float: left;

    }

    .banners_li a {
        display: block;
        text-align: center;
        border-right: 1px solid #E1E1E1;
    }

    a {
        text-decoration: none;
        color: #000000;
    }

    .banners_li a div {
        display: inline-block;
        cursor: pointer;
        zoom: 1;
    }

    .banners_li a h3 {
        font-size: 20px;
        color: #333333;
        line-height: 28px;
        text-align: left;
        cursor: pointer;
    }

    .banners_li a p {
        font-size: 14px;
        color: #939393;
        line-height: 28px;
        text-align: left;
        cursor: pointer;
    }

    .banners_li_last a {
        border-right: none;
    }
</style>

<body>
<%@include file="/front/common/navigation.jsp" %>
<%@include file="/front/common/indexSlide.jsp" %>
<div class="banners">
    <ul>
        <li class="banners_li">
            <a href="<%=path%>/policy/article">
                <div>
                    <h3>政策信息</h3>
                    <p>政策信息，一键了解</p>
                </div>
            </a>
        </li>
        <li class="banners_li">
            <a href="<%=path%>/laws/article">
                <div>
                    <h3>标准法规</h3>
                    <p>标准法规，及时掌握</p>
                </div>
            </a>
        </li>
        <li class="banners_li banners_li_last">
            <a href="<%=path%>/contact">
                <div>
                    <h3>联系我们</h3>
                    <p>联系我们，联系未来</p>
                </div>
            </a>
        </li>
    </ul>
</div>
<h2 style="text-align: center;color: #00B83F;">产品展示列表</h2>
<div class="banners" style="height: 100px;padding: 80px;">
    <ul>
        <li class="banners_li">
            <a href="http://www.haoxiangni.cn">
                <div>
                    <img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/haoxiangni/resource/images/product_1.jpg"
                         alt=""/>
                    <p style="text-align: center">唱歌的果</p>
                </div>
            </a>
        </li>
        <li class="banners_li">
            <a href="http://www.haoxiangni.cn">
                <div>
                    <img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/haoxiangni/resource/images/product_2.jpg"
                         alt=""/>
                    <p style="text-align: center">想菲菲</p>
                </div>
            </a>
        </li>
        <li class="banners_li banners_li_last">
            <a href="http://www.haoxiangni.cn">
                <div>
                    <img src="<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/haoxiangni/resource/images/product_3.jpg"
                         alt=""/>
                    <p style="text-align: center">冻干红枣脆片</p>
                </div>
            </a>
        </li>
    </ul>
</div>
<h2 style="text-align: center;color: #00B83F;">文章列表</h2>
<div class="warp_main">
    <div class="warp_center">
        <div style="overflow: hidden;">
            <c:forEach var="item" items="${pager.list}">
                <div class="article_item">
                    <h2><a href="<%=path%>/article/${item.id}">${item.title}</a></h2>
                    <p class="article_item_message">
                            ${item.createtime} | 分类：${item.catename} | 浏览量：${item.hit}
                    </p>
                    <a href="<%=path%>/article/${item.id}"><span>${item.description}…</span></a>
                </div>
            </c:forEach>
        </div>
        <div style="margin-top: 20px;">
            <%@include file="/front/common/page.jsp" %>
        </div>
    </div>
</div>
<%@include file="/front/common/foot.jsp" %>

