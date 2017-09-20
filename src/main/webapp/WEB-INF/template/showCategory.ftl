<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>必要商城</title>
    <meta name="description"
          content="必要C2M商城是全球性价比最高的电子商务平台，是全球第一家用户直连制造（Customer To Manufactory）的平台，通过平台建立消费者与品质制造商的桥梁，将消费者的需求直接发送到工厂，按需生产模式既满足了消费者个性化的需求，又短路了复杂的商品流通环节，真正让消费者享受到专属且高品质的商品。目前，商品覆盖高跟鞋、眼镜、饰品、运动鞋、运动服、女士包包等品类，未来会按照消费者需求来增加新的产品类目。">
    <meta name="Keywords" content="必要;必要商城;必要平台;必要电商;C2M商城;工业4.0;定制平台;定制商城;奢侈品定制;定制鞋;定制包;定制眼镜;定制饰品;定制运动服;定制运动鞋">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/showCategory.css">
</head>
<body>
<!-- 顶部栏 -->
<#include "./include/header.ftl">

<!-- 导航 -->
<#include "./include/search.ftl">

<div class="t-bd f-center">
    <div class="nav">
        <ul>
            <li><a href="/biyaoweb/index">首页</a></li>
            <i>&gt;</i>
            <li><a href="/biyaoweb/category?category=男装">${mainCatagory}</a></li>
        </ul>
    </div>
    <div class="tab">

        <ul class="f-cb">
            <h3>${mainCatagory}：</h3>

            <#list  subCatagory as x>
                <li><a href="#${x}">${x}</a></li>
            </#list>
        </ul>
    </div>

    <ul class="cateGoryList">

    <#list list as shirtList>

            <li id="280">
                <div class="list">
                    <h3 class="nav" id="${subCatagory[0]}">${subCatagory[0]}</h3> <#-- bug-->
                    <ul class="f-cb">
                        <#list shirtList as x>
                            <li>
                                <div class="hd">
                                    <a href="/biyaoweb/product?productId=${x.id}">
                                        <i class="f-oh">
                                            <img src="${x.icon}">
                                        </i>
                                    </a>
                                    <b>新品</b>
                                </div>
                                <div class="bd">
                                    <h3>${x.name}</h3>
                                    <div class="price">¥${x.price}</div>
                                </div>
                            </li>
                        </#list>

                </ul>
            </div>
        </li>
    </#list>

    </ul>

</div>
<!-- 侧栏导航 -->
<#include "./include/side.ftl">
<!-- footer-->
<#include "./include/footer.ftl">
<!-- fixed 导航-->
<div class="fixed-top f-dn">
    <div class="t-nav-center-fixed f-cb">
        <div class="nav-category">
            <span>全部分类</span>
            <i></i>
        </div>
        <div class="catalog fixed">
            <ul>
                <li class="nav-main"><p><a href="">男装</a> <span>/</span><a href="">女装</a></p>
                    <ul class="nav-sub-p">
                        <li class="nav-sub-li">
                            <div class="left-sub"><a href="">男士上装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士上装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-main"><p><a href="">眼镜</a><span>/</span><a href="">配饰</a></p>
                    <ul class="nav-sub-p">
                        <li class="nav-sub-li">
                            <div class="left-sub"><a href="">男士上装2</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士上装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-main"><p><a href="">鞋靴</a><span>/</span><a href="">运动</a></p>
                    <ul class="nav-sub-p">
                        <li class="nav-sub-li">
                            <div class="left-sub"><a href="">男士上装3</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士上装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-main"><p><a href="">皮具</a><span>/</span><a href="">出行</a></p>
                    <ul class="nav-sub-p">
                        <li class="nav-sub-li">
                            <div class="left-sub"><a href="">男士上装4</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士上装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-main"><p><a href="">居家</a><span>/</span><a href="">婴童</a></p>
                    <ul class="nav-sub-p">
                        <li class="nav-sub-li">
                            <div class="left-sub"><a href="">男士上装5</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士上装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-main"><p><a href="">美妆</a><span>/</span><a href="">个护</a></p>
                    <ul class="nav-sub-p">
                        <li class="nav-sub-li">
                            <div class="left-sub"><a href="">男士上装6</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士上装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-main"><p><a href="">厨具</a><span>/</span><a href="">家电</a><span>/</span><a
                        href="">数码</a></p>
                    <ul class="nav-sub-p">
                        <li class="nav-sub-li">
                            <div class="left-sub"><a href="">男士上装7</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士上装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-main"><p><a href="">家装</a><span>/</span><a href="">家居</a><span>/</span><a
                        href="">汽配</a></p>
                    <ul class="nav-sub-p">
                        <li class="nav-sub-li">
                            <div class="left-sub"><a href="">男士上装8</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士上装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">男T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">牛仔裤</a>
                                <a href="">休闲裤</a>
                                <a href="">西裤</a>
                                <a href="">短裤</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="nav-search">
            <p class="f-cb">
                <input type="text" class="searchInput fixed" placeholder="请输入要搜索的商品">
                <span class="searchBtn fixed"></span>
            </p>
        </div>
    </div>
</div>

</body>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/ScrollEvent.js"></script>
<script>
    var _main = function () {
        $.scrollEvent({
            bdSelector:".t-bd", //滚动到bd显示 固定的顶部栏
            topSelector:".rightBar-top", // 在顶部时 进行隐藏
            topFixedSelector:".fixed-top", // 用于显示隐藏
        })
    };
    _main();
</script>
</html>