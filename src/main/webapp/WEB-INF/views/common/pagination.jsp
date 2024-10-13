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
<%--        <script defer src="${pageContext.request.contextPath}/resources/css/common/pagination/hallPagination.js"></script>--%>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    </head>
    <body>
    <nav class="pagination-container">
        <ul class="pagination" id="pagination">
            <%-- 첫 페이지 --%>
            <c:choose>
                <c:when test="${pagination.showPrev}">
                    <li><a href="#" class="page-btn" onclick="goToPage(1)">&laquo;&laquo;</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="#" class="page-btn disabled">&laquo;&laquo;</a></li>
                </c:otherwise>
            </c:choose>

            <%--이전 페이지 버튼--%>
            <c:choose>
                <c:when test="${pagination.showPrev}">
                    <li>
                        <a href="#" class="page-btn" onclick="goToPage(${pagination.page - 1})">&laquo;</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li><a href="#" class="page-btn disabled">&laquo;</a></li>
                </c:otherwise>
            </c:choose>

            <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="p">
                <div class="page-btns" id="paginationLinks">
                    <li>
                        <a href="#" class="page-btn" onclick="goToPage(${p})"
                           <c:if test="${pagination.page == p}">class="page-btn active"</c:if>>
                                ${p}
                        </a>
                    </li>
                </div>
            </c:forEach>

            <%--다음 페이지 버튼--%>
            <c:choose>
                <c:when test="${pagination.showNext}">
                    <li>
                        <a href="#" class="page-btn" onclick="goToPage(${pagination.page + 1})">&raquo;</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li><a href="#" class="page-btn disabled">&raquo;</a></li>
                </c:otherwise>
            </c:choose>

            <%-- 끝 버튼 --%>
            <c:choose>
                <c:when test="${pagination.page != pagination.totalPageCnt}">
                    <li><a href="#" class="page-btn" onclick="goToPage(${pagination.totalPageCnt})">&raquo;&raquo;</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="#" class="page-btn disabled">&raquo;&raquo;</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </nav>
    </body>
</html>
