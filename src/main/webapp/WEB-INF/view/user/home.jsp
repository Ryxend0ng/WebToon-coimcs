<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${trang_chu}</title>
<jsp:include page="/WEB-INF/view/common/user/linkStyle.jsp"></jsp:include>
</head>
<body>

<!-- header -->
    <%@ include file="/WEB-INF/view/common/user/header.jsp" %>
    <!-- header -->
   <div class="content ">
  
        <!--html banner start-->
        <div class="banner ">
            <div id="demo" class="carousel slide " data-ride="carousel">

                <!-- Indicators -->
                <ul class="carousel-indicators ">
                    <li data-target="#demo" data-slide-to="0 " class="active "></li>
                    <li data-target="#demo" data-slide-to="1 "></li>
                    <li data-target="#demo" data-slide-to="2 "></li>
                    <li data-target="#demo" data-slide-to="3 "></li>
                </ul>

                <!-- The slideshow -->
                <div class="carousel-inner ">
                    <div class="carousel-item active ">
                        <img  src="${pageContext.request.contextPath}/template/web/image/sl7.jpg" " alt="Los Angeles ">
                    </div>
                    <div class="carousel-item ">
                        <img src="${pageContext.request.contextPath}/template/web/image/news4.jpg" alt="Chicago ">
                    </div>
                    <div class="carousel-item ">
                        <img src="${pageContext.request.contextPath}/template/web/image/sl5.jpg " alt="New York ">
                    </div>
                    <div class="carousel-item ">
                        <img src="${pageContext.request.contextPath}/template/web/image/imgae_ordinary.jpg " alt="New York ">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev ">
                    <span class="carousel-control-prev-icon "></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next ">
                    <span class="carousel-control-next-icon "></span>
                </a>

            </div>
        </div>
        <!--htmml banner end-->
        <div class="main ">
            <div class="introduce ">
                <div class="introduce-comic ">
                <c:forEach items="${comicBy9 }" var="comic" varStatus="loop"> 
                  
                    <div class="item <c:if test="${loop.index == 1 }"> item2</c:if>  ">
                     
                        <a href="${pageContext.request.contextPath}/thong-tin/${comic.seo } ">
                            <div class="title-comic ">
                                <p class=" <c:if test="${loop.index == 1 }"> white</c:if>  " >${comic.title }</p>
                                <div class="view "><i class="fa fa-heart " aria-hidden="true "></i>${comic.view }
                                </div>
                                <div class="up ">up</div>

                            </div>
                            <img src="${pageContext.request.contextPath}${comic.image} " alt=" ">
                            <div class="category ">h??i k???ch</div>
                            <div class="comic-thumnail ">
                                <p>${comic.title }</p>
                                <hr>${comic.shortDescription }</div>
                        </a>

                    </div>
                   
                    </c:forEach> 
                   

            </div>
            <div class="new-to-webtoon ">
                <div class="new-title size-title ">
                    M???i t??? WebToon&nbsp;<i class="fa fa-chevron-right " aria-hidden="true "></i>
                </div>
                <div class="introduce-comic introduce-comic-new newWebtoon">
                <c:forEach items="${comicsNew }" var="comic">
                    <div class="item item1 ">
                        <a href="${pageContext.request.contextPath}/thong-tin/${comic.seo } ">
                            <div class="title-comic ">
                                <p>${comic.title }</p>
                                <div class="view "><i class="fa fa-heart " aria-hidden="true "></i>${comic.view }
                                </div>
                                <div class="new ">new</div>

                            </div>
                            <img src="${pageContext.request.contextPath}${comic.image }" alt=" ">
                            <div class="category ">K???ch</div>
                            <div class="comic-thumnail ">
                                <p>${comic.title }</p>
                                <hr> ${comic.shortDescription }</div>
                        </a>

                    </div>
                    </c:forEach>
                 
                </div>
            </div>
            <div class="main-category ">
                <div class="new-title ">
                    <a class="size-title ">  Th??? Lo???i &nbsp;<i class="fa fa-chevron-right " aria-hidden="true "></i></a>
                </div>
                <div class="introduce-comic ">
                    <div class="item item1 ">
                        <div class="name_gener ">
                            <a href="${pageContext.request.contextPath}/thong-tin/${comic.seo }  ">
                               Superhero &nbsp;<i class="fa fa-chevron-right " aria-hidden="true "></i>
                                    <p>?????n v?? gi???i c???u th??? <br> gi???i c??ng t??i</p>
                            </a>
                        </div>
                    </div>
                    <c:forEach items="${comics }" var="comic">
                    <div class="item ">
                        <a href="${pageContext.request.contextPath}/thong-tin  ">
                            <div class="title-comic" >
                                <p>${comic.title }</p>
                                <div class="view "><i class="fa fa-heart " aria-hidden="true "></i>${comic.view}
                                </div>
                                <div class="up ">up</div>

                            </div>
                            <img src="${pageContext.request.contextPath}${comic.image} " alt=" ">
                            <div class="category blue" id="blue ">SuperHero</div>
                            <div class="comic-thumnail bg-blue " id="bg-blue ">
                                <p>${comic.title }</p>
                                <hr>${comic.shortDescription}</div>
                        </a>
                    </div>
					</c:forEach>
                
                    <div class="item ">
                        <a href="${pageContext.request.contextPath}/thong-tin/${comic.seo }  ">
                            <div class="name_gener bg-red " id="bg-red ">Kinh D??? &nbsp;<i class="fa fa-chevron-right " aria-hidden="true "></i>
                                <p>Kh???ng khi???p, ?????m m??u <br>h???i h???p</p>
                            </div>

                        </a>

                    </div>
                    <c:forEach items="${comicsKd }" var="comic">
                    <div class="item ">
                        <a href="${pageContext.request.contextPath}/thong-tin  ">
                            <div class="title-comic ">
                                <p>${comic.title }</p>
                                <div class="view "><i class="fa fa-heart " aria-hidden="true "></i>${comic.view }
                                </div>
                                <div class="up ">up</div>

                            </div>
                            <img src="${pageContext.request.contextPath}${comic.image} " alt=" ">
                            <div class="category red" id="red ">Kinh d???</div>
                            <div class="comic-thumnail " id="bg-red ">
                                <p>${comic.title }</p>
                                <hr> ${comic.shortDescription}</div>
                        </a>
                    </div>
                  </c:forEach>
</div>
</div>
                <div class="most-popular ">
                    <div class="popular-gener ">
                        <div class="popular_title size-title ">
                            <p>Ph??? bi???n nh???t theo th??? lo???i &nbsp;<i class="fa fa-chevron-right " aria-hidden="true "></i></p>
                            <p>All</p>
                        </div>
                        <ul>
                            <li>
                                <a href="${pageContext.request.contextPath}/thong-tin/${comic.seo }  ">
                                    <img src="${pageContext.request.contextPath}/template/web/image/royal1.jpg " alt=" ">
                                    <div class="title-gener ">
                                        <div class="gener ">H??nh ?????ng</div>
                                        <div class="name ">Boyfriend</div>
                                        <p>Ki???m ch???</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/thong-tin  ">
                                    <img src="${pageContext.request.contextPath}/template/web/image/vua sot.PNG " alt=" ">
                                    <div class="title-gener ">
                                        <div class="gener ">Kinh d???</div>
                                        <div class="name ">Tua ??i nhanh</div>
                                        <p>Huy???n ???o</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/thong-tin  ">
                                    <img src="${pageContext.request.contextPath}/template/web/image/beha.PNG " alt=" ">
                                    <div class="title-gener ">
                                        <div class="gener ">T??nh c???m</div>
                                        <div class="name ">B??? h???</div>
                                        <p>Ki???m ch???</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/thong-tin ">
                                    <img src="${pageContext.request.contextPath}/template/web/image/bong.PNG " alt=" ">
                                    <div class="title-gener ">
                                        <div class="gener ">H??nh ?????ng</div>
                                        <div class="name ">B??ng ma</div>
                                        <p>S??? h??i</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/thong-tin ">
                                    <img src="${pageContext.request.contextPath}/template/web/image/dap.PNG " alt=" ">
                                    <div class="title-gener ">
                                        <div class="gener ">H??nh ?????ng</div>
                                        <div class="name ">?????p</div>
                                        <p>Xung m??n</p>
                                    </div>
                                </a>
                            </li>

                        </ul>
                    </div>

                    <div class="popular-gener ">
                        <div class="popular_title size-title ">
                            <p>Ph??? bi???n nh???t theo nh??m &nbsp;<i class="fa fa-chevron-right " aria-hidden="true "></i></p>
                            <p>Male 2021</p>
                        </div>
                        <ul>
                            <li>
                                <a href="${pageContext.request.contextPath}/thong-tin  ">
                                    <img src="${pageContext.request.contextPath}/template/web/image/faainlove.jpg " alt=" ">
                                    <div class="title-gener ">
                                        <div class="gener ">H??nh ?????ng</div>
                                        <div class="name ">Y??u s??u</div>
                                        <p>?????t ng???t</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/thong-tin ">
                                    <img src="${pageContext.request.contextPath}/template/web/image/news5.jpg " alt=" ">
                                    <div class="title-gener ">
                                        <div class="gener ">L??ng m???n</div>
                                        <div class="name ">Tr?????t y??u</div>
                                        <p>N??ng l??ng</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/thong-tin ">
                                    <img src="${pageContext.request.contextPath}/template/web/image/nuabm.PNG " alt=" ">
                                    <div class="title-gener ">
                                        <div class="gener ">Kinh d???</div>
                                        <div class="name ">N???a ma</div>
                                        <p>Huy???n b??</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href=" ${pageContext.request.contextPath}/view/web/ThongTin.jsp">
                                    <img src="${pageContext.request.contextPath}/template/web/image/tuynhien.PNG " alt=" ">
                                    <div class="title-gener ">
                                        <div class="gener ">H??nh ?????ng</div>
                                        <div class="name ">Tuy nhi??n</div>
                                        <p>Ki???m ch???</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href=" ${pageContext.request.contextPath}/view/web/ThongTin.jsp">
                                    <img src="${pageContext.request.contextPath}/template/web/image/buildKing.jpg " alt=" ">
                                    <div class="title-gener ">
                                        <div class="gener ">H??nh ?????ng</div>
                                        <div class="name ">Vua KingDom</div>
                                        <p>T????ng lai</p>
                                    </div>
                                </a>
                            </li>

                        </ul>
                    </div>

                </div>

            </div>
            <div class="news_home ">
                <div class="news ">
                    <div class="news_gener ">
                        <div class="news_title news_algin_center ">
                            <a class="size-title " href="../html/News.html ">  Tin T???c Manga &nbsp;<i class="fa fa-chevron-right " aria-hidden="true "></i></a>
                        </div>
                        <ul>
                        <c:forEach items="${news }" var="newL">
                            <li>
                                <a href=" ">
                                    <img src="${pageContext.request.contextPath}${newL.image}" alt=" ">
                                    <div class="news_thumbnail ">
                                        <div class="gener color_gener">Tin t???c manga</div>
                                        <div class="name-news ">${newL.title}</div>
                                        <div class="news_view ">1 tu???n tr?????c - ${newL.view} l?????t xem</div>
                                        <p>${newL.shortDescription} </p>
                                    </div>
                                </a>
                            </li>
                           </c:forEach>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- header -->
    <%@ include file="../common/user/footer.jsp" %>
    <!-- header -->
</body>
</html>