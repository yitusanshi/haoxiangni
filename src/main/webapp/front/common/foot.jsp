<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>
<div class="foot">
<%--    <div class="foot_top">
        <div style="width: 1000px;margin: 12px auto 0;overflow: hidden;">
            <ul>
                <li>友情链接：</li>
                <c:forEach var="item" items="<%=SystemManage.getInstance().getFriendLinks()%>">
                    <li><a href="${item.url}" target="${item.target}">${item.name}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>--%>
    <div class="foot_bottom">
       <%-- <p> Copyright
            2016 <%=SystemManage.getInstance().getSystemSetting().getTitle()%> <%=SystemManage.getInstance().getSystemSetting().getIcp()%>
        </p>--%>
        <!--<div class="f_nav">-->
            <p style="text-align: center;color: white">友情链接 : <a href='http://www.haoxiangni.cn' target='_blank' style="color: white">好想你官网</a></p>
            <p style="text-align: center;color: white">版权所有：好想你健康食品股份有限公司</p>
            <p style="text-align: center;color: white">
                地址：河南省新郑市薛店镇S102省道与中华北路交叉口　咨询热线：400-691-9999　官方邮箱：haoxiangni1992@haoxiangni.cn</p>
            <p style="text-align: center;color: white"><a href=http://beian.miit.gov.cn target=_blank rel=nofollow style="color: white;">豫ICP备17001190号</a>　
                <span style="text-align: center;color: white">豫公网安备 41018402000231号</span>　　</p>
       <!-- </div>-->
    </div>
</div>

</body>
</html>
