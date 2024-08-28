<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>weddinghallList</title>
    <link rel="stylesheet" href="resources/css/common/reset.css" />
    <link rel="stylesheet" href="resources/css/common/pagination/pagination.css" />
    <link rel="stylesheet" href="resources/css/company/weddinghall/weddinghallList.css" />
    <script defer src="resources/js/main/main.js"></script>
    <script defer src="resources/js/pagination/pagination.js"></script>
</head>
<body>
    <div> <%@ include file="/WEB-INF/views/common/header.jsp" %></div>
    <div class="hd__inner1100">
        <!-- 메인 타이틀 문구 -->g
        <section class="title">
            <div class="title-sub">
                원하는 조건으로 나만의 웨딩홀 장소를 찾아보세요.
            </div>
            <div class="title-main">Wedding Hall</div>
        </section>

        <!-- 검색 조건 및 버튼 -->
        <section class="search">
            <div class="search-condition">
                <div class="local-search">
                        <span
                        >지역<img
                                id="region-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"
                        /></span>
                </div>
                <div>
                        <span
                        >날짜<img
                                id="date-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"
                        /></span>
                </div>
                <div>
                        <span
                        >예산<img
                                id="cost-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"
                        /></span>
                </div>
                <div>
                        <span
                        >분위기<img
                                id="mood-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/arrow/down-arrow.png"
                        /></span>
                </div>
                <div>
                        <span
                        >업체명으로 검색<img
                                id="company-icon"
                                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/search-icon.png"
                        /></span>
                </div>
            </div>
            <div class="search-btn">
                <button class="list-search-btn dark-pink">
                    <a href="weddinghallList"
                    >목록으로 보기</a
                    >
                </button>
                <button class="map-search-btn">
                    <a href="mapViewWithFilters"
                    >지도로 보기</a
                    >
                </button>
            </div>
        </section>

        <!-- 업체 리스트 부분  -->
        <section class="list-all">
            <div class="card" data-id="1">
                <a href="weddinghallDetail">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall1.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a
                                href="https://www.instagram.com/with_mamaa/"
                                target="_blank"
                                class="instagram"
                        >
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall4.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall2.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall1.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall4.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall2.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall1.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a
                                href="https://www.instagram.com/with_mamaa/"
                                class="instagram"
                        >
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall4.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall2.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall1.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall4.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall2.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card" data-id="1">
                <a href="#">
                    <img
                            src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/list/weddinghall3.jpg"
                            alt="웨딩홀 이미지1"
                    />
                </a>
                <div class="card-info">
                    <div class="weddinghall-name">
                        웨딩홀 이름1
                        <a href="#" class="instagram">
                            <img
                                    src="resources/images/instagram2.png"
                                    alt="인스타 이미지"
                            />
                        </a>
                    </div>
                    <div class="weddinghall-address">주소1</div>
                    <div class="meal-price">식사비: 0원</div>
                    <div class="minimum-guarantee">최소 보증: 0명</div>
                    <div class="budget">200명 기준 예산: 0원</div>
                    <div class="like-and-score">
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/heart-bold.png"
                                    alt="하트 이미지"
                            />
                            <span>12,000</span>
                        </a>
                        <a href="#">
                            <img
                                    src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/star-1.png"
                                    alt="하트 이미지"
                            />
                            <span>460</span>
                        </a>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- 페이지네이션  -->
    <div id="pagination-placeholder"></div>

    <div><%@ include file="/WEB-INF/views/common/footer.jsp" %></div>
</body>
</html>
