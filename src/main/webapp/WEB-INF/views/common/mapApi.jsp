<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>map</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/common/mapApi.css"
    />
    <script type="text/javascript" defer src="//dapi.kakao.com/v2/maps/sdk.js?appkey=49002230661bfc60fba4b0f1cfab9f60&autoload=false"></script>
    <script src="${pageContext.request.contextPath}/resources/js/map/mapApi.js"></script>
</head>
<body>
    <div class="info-map" id="map" data-company-id="${companyId}" data-category="${category}">
    </div>
</body>
</html>
