<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>pagination</title>
        <link
            rel="stylesheet"
            href="${pageContext.request.contextPath}/resources/css/common/pagination/pagination.css"
        />
        <script defer src="${pageContext.request.contextPath}/resources/js/pagination/pagination.js"></script>
    </head>
    <body>

        <nav class="pagination-container">
            <ul class="pagination">
                <%-- 첫 페이지 --%>
                <li><a href="#" class="page-btn" data-page="1" ${pagination.page > 1 ? '' : 'disabled'}>&laquo;&laquo;</a></li>
    <%--            <button class="button ${pagination.startPage != 1 ? '': 'disabled'}" id="startBtn" data-page="1">&laquo;&laquo;</button>--%>

                <%--이전 페이지 버튼--%>
                <li>
                    <a href="#" class="page-btn" data-page="${pagination.page > 1 ? pagination.page - 1 : 1}" ${pagination.page > 1 ? '' : 'disabled'}>&laquo;</a>
                </li>

                <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="p">
                    <div class="page-btns" id="paginationLinks">
                        <li>
                            <a href="#" class="page-btn ${pagination.page == p ? 'active' : ''}" data-page="${p}">${p}</a>
                        </li>
                    </div>
                </c:forEach>

                <%--다음 페이지 버튼--%>
                <li>
                    <a href="#" class="page-btn" data-page="${pagination.page + 1}" ${pagination.page < pagination.totalPageCnt ? '' : 'disabled'}>&raquo;</a>
                </li>
                <%-- 끝 버튼 --%>
                <li>
                    <a href="#" class="page-btn" id="endBtn" data-page="${pagination.totalPageCnt}">&raquo;&raquo;</a>
                </li>
            </ul>
        </nav>
    </body>
</html>
