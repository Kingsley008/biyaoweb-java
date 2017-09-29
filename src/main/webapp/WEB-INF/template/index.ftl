<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <title>必要商城</title>
    <meta name="description"
          content="必要C2M商城是全球性价比最高的电子商务平台，是全球第一家用户直连制造（Customer To Manufactory）的平台，通过平台建立消费者与品质制造商的桥梁，将消费者的需求直接发送到工厂，按需生产模式既满足了消费者个性化的需求，又短路了复杂的商品流通环节，真正让消费者享受到专属且高品质的商品。目前，商品覆盖高跟鞋、眼镜、饰品、运动鞋、运动服、女士包包等品类，未来会按照消费者需求来增加新的产品类目。">
    <meta name="Keywords" content="必要;必要商城;必要平台;必要电商;C2M商城;工业4.0;定制平台;定制商城;奢侈品定制;定制鞋;定制包;定制眼镜;定制饰品;定制运动服;定制运动鞋">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
<!-- 顶部栏 -->
<#include "./include/header.ftl">

<!-- 导航 -->
<#include "./include/search.ftl">

<!-- 轮播导航区 -->
<div class="t-banner">
    <div class="t-banner-center f-center">
        <div class="banner-slider">
            <ul class="sliders">
                <#list sliderList as x>
                <li><a href="/biyaoweb/show?productName = ${x.productName}"><img src="${x.imgURL}" alt="banner" width="1080"></a></li>
                </#list>
            </ul>
            <span class="prev"></span>
            <span class="next"></span>
            <ul class="hint">
                <li class="hintActive" data-num="0"></li>
                <li data-num="1"></li>
                <li data-num="2"></li>
                <li data-num="3"></li>
                <li data-num="4"></li>
                <li data-num="5"></li>
            </ul>
            <div class="catalog">
                <ul>
                    <li class="nav-main"><p><a href="/biyaoweb/category?category=男装">男装</a> <span>/</span><a href="">定制</a></p>
                        <ul class="nav-sub-p">
                            <li class="nav-sub-li">
                                <div class="left-sub"><a href="/biyaoweb/category?category=男装">男士上装</a><span>&gt;</span></div>
                                <div class="right-sub">
                                    <a href="/biyaoweb/category?category=男装">POLO衫</a>
                                    <a href="/biyaoweb/category?category=男装">男T恤</a>
                                    <a href="/biyaoweb/category?category=男装">西服/套装</a>
                                    <a href="/biyaoweb/category?category=男装">卫衣/针织衫</a>
                                </div>
                            </li>
                            <li class="nav-sub">
                                <div class="left-sub"><a href="/biyaoweb/category?category=男装">男士下装</a><span>&gt;</span></div>
                                <div class="right-sub">
                                    <a href="/biyaoweb/category?category=男装">牛仔裤</a>
                                    <a href="/biyaoweb/category?category=男装">休闲裤</a>
                                    <a href="/biyaoweb/category?category=男装">西裤</a>
                                    <a href="/biyaoweb/category?category=男装">短裤</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-main"><p><a href="/biyaoweb/category?category=女装">女装</a><span>/</span><a href="">定制</a></p>
                        <ul class="nav-sub-p">
                            <li class="nav-sub-li">
                                <div class="left-sub"><a href="/biyaoweb/category?category=女装">女士上衣</a><span>&gt;</span></div>
                                <div class="right-sub">
                                    <a href="">POLO衫</a>
                                    <a href="">女T恤</a>
                                    <a href="">西服/套装</a>
                                    <a href="">卫衣/针织衫</a>
                                </div>
                            </li>
                            <li class="nav-sub">
                                <div class="left-sub"><a href="">女士下装</a><span>&gt;</span></div>
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
        </div>

    </div>
</div>
<!-- 侧栏导航 -->
<#include "./include/side.ftl">
<!-- body -->
<div class="t-bd" style="position: relative; z-index: 1">
    <!-- 制造商 功能点：可视化加载-->
    <div class="m-manufacturer f-center">
        <header class="hd f-cb">
            <div class="left-title">
                <h3 class="m-title">品牌制造商</h3>
                <small class="m-intro">工厂直达消费者，剔除品牌溢价</small>
            </div>
            <a class="right-more">更多制造商&gt;</a>
        </header>
        <div class="bd">
            <div class="manufacturerList f-cb">
                <a href="" class="manufacturer first large">
                    <div class="mask"></div>
                    <div class="name">新秀制造商</div>
                    <div class="price">59元起</div>
                    <img src="imgs/muf/muf1.jpg" width="357" alt="manufacturer"></a>
                <a href="" class="manufacturer second large">
                    <div class="mask"></div>
                    <div class="name">
                        "MUJI制造商"
                        <span class="newShelfTag">上新</span>
                    </div>
                    <div class="price">12.9元起</div>
                    <img src="imgs/muf/muf2.jpg" width="357" alt="manufacturer"></a>
                <a href="" class="manufacturer third small">
                    <div class="mask"></div>
                    <div class="name">
                        "潘多拉制造商"
                        <span class="newShelfTag">上新</span>
                    </div>
                    <div class="price">129元起</div>
                    <img src="imgs/muf/muf3.jpg" width="357" alt="manufacturer">
                </a>
                <a href="" class="manufacturer forth small">
                    <div class="mask"></div>
                    <div class="name">
                        "Nine West 制造商"
                        <span class="newShelfTag">上新</span>
                    </div>
                    <div class="price">199元起</div>
                    <img src="imgs/muf/muf4.jpg" width="357" alt="manufacturer">
                </a>
            </div>
        </div>
    </div>
    <!-- selected sec -->
    <div class="m-selected f-center">
        <h3 class="m-title">精选</h3>
        <small class="m-intro">更好的生活 , 精益求精</small>
        <ul class="selected-items">
            <li class="item hovered"><a href=""><img src="imgs/selected/selected1.jpg" alt=""></a></li>
            <li class="item hoveredElse"><a href=""><img src="imgs/selected/selected2.jpg" width="620" alt=""></a></li>
            <li class="item hoveredElse"><a href=""><img src="imgs/selected/selected3.jpg" alt=""></a></li>
            <li class="item hoveredElse"><a href=""><img src="imgs/selected/selected4.jpg" alt=""></a></li>
        </ul>
    </div>
    <!-- new product sec -->
    <div class="m-new f-center" style="position: relative">
        <h3 class="m-title">新品首发</h3>
        <small class="m-intro">周一周四上新 , 为你寻觅世间好物</small>
        <span class="new-prev"></span>
        <span class="new-next"></span>
        <div class="m-new wrap f-cb">
            <div class="m-move">
                <ul class="m-move-sub">
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                </ul>
                <ul class="m-move-sub">
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                </ul>
                <ul class="m-move-sub">
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                </ul>
                <ul class="m-move-sub">
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                </ul>
                <ul class="m-move-sub">
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-1a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-1b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                </ul>
                <ul class="m-move-sub">
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/new/new-2a.png" alt="花样年华女士小白鞋">
                                <img style="position: relative; z-index: 2" class="new-pic2 f-dn"
                                     src="imgs/new/new-2b.jpg" alt="花样年华女士小白鞋">
                                <div class="color-num">2色可选</div>
                            </a>
                        </div>
                        <div class="bd">
                            <a href=""><h3 class="name" title="花样年华女士小白鞋">花样年华女士小白鞋</h3></a>
                            <span class="price">&yen;259 </span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- show sec -->
    <div class="m-show f-center">
        <div class="nav f-cb">
            <h3 class="m-title man">品质男装</h3>
            <a class="nav-right" href="/biyaoweb/category?category=男装">查看全部&gt;</a>
        </div>
        <ul class="m-show-wrap man f-cb">
        </ul>
    </div>

    <div class="m-show f-center">
        <div class="nav f-cb">
            <h3 class="m-title lady">潮流女装</h3>
            <a class="nav-right" href="/biyaoweb/category?category=女装">查看全部&gt;</a>
        </div>

        <ul class="m-show-wrap lady f-cb">
          <#--  <li class="item-large">
                <div class="hd">
                    <a href=""><img src="imgs/show/show-large.jpg" width="423"></a>
                </div>
                <div class="bd">
                    <p class="item-large-intro f-toe">Hugo Boss、 PRADA 制造商出品</p>
                </div>
            </li>
            <li class="item-small">
                <div class="hd">
                    <a href=""><img src="imgs/show/show-small.jpg" width="204"></a>
                </div>
                <div class="bd">
                    <a href=""><p class="item-small-intro f-toe">三防免烫衬衫五色</p></a>
                    <span class="item-samll-price">&yen;219</span>
                </div>
            </li>
            <li class="item-small">
                <div class="hd">
                    <a href=""><img src="imgs/show/show-small.jpg" width="204"></a>
                </div>
                <div class="bd">
                    <a href=""><p class="item-small-intro f-toe">三防免烫衬衫五色</p></a>
                    <span class="item-samll-price">&yen;219</span>
                </div>
            </li>
            <li class="item-small">
                <div class="hd">
                    <a href=""><img src="imgs/show/show-small.jpg" width="204"></a>
                </div>
                <div class="bd">
                    <a href=""><p class="item-small-intro f-toe">三防免烫衬衫五色</p></a>
                    <span class="item-samll-price">&yen;219</span>
                </div>
            </li>
            <li class="item-small">
                <div class="hd">
                    <a href=""><img src="imgs/show/show-small.jpg" width="204"></a>
                </div>
                <div class="bd">
                    <a href=""><p class="item-small-intro f-toe">三防免烫衬衫五色</p></a>
                    <span class="item-samll-price">&yen;219</span>
                </div>
            </li>
            <li class="item-small">
                <div class="hd">
                    <a href=""><img src="imgs/show/show-small.jpg" width="204"></a>
                </div>
                <div class="bd">
                    <a href=""><p class="item-small-intro f-toe">三防免烫衬衫五色</p></a>
                    <span class="item-samll-price">&yen;219</span>
                </div>
            </li>
            <li class="item-small">
                <div class="hd">
                    <a href=""><img src="imgs/show/show-small.jpg" width="204"></a>
                </div>
                <div class="bd">
                    <a href=""><p class="item-small-intro f-toe">三防免烫衬衫五色</p></a>
                    <span class="item-samll-price">&yen;219</span>
                </div>
            </li>
            <li class="item-small">
                <div class="hd">
                    <a href=""><img src="imgs/show/show-small.jpg" width="204"></a>
                </div>
                <div class="bd">
                    <a href=""><p class="item-small-intro f-toe">三防免烫衬衫五色</p></a>
                    <span class="item-samll-price">&yen;219</span>
                </div>
            </li>
            <li class="item-small">
                <div class="hd">
                    <a href=""><img src="imgs/show/show-small.jpg" width="204"></a>
                </div>
                <div class="bd">
                    <a href=""><p class="item-small-intro f-toe">三防免烫衬衫五色</p></a>
                    <span class="item-samll-price">&yen;219</span>
                </div>
            </li>-->

        </ul>
    </div>
    <!-- new product sec -->
    <div class="m-comment f-center" style="position: relative">
        <h3 class="m-title">大家都在说</h3>
        <small class="m-intro">生活, 没有统一标准</small>
        <span class="comment-prev"></span>
        <span class="comment-next"></span>
        <div class="m-comment wrap f-cb">
            <div class="m-move-comment">
                <ul class="m-move-sub-comment f-cb">
                    <!-- 显示了20个产品的评论 -->
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">1平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>

                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="hd">
                            <a href="" target="_blank">
                                <img class="new-pic1 " src="imgs/speak/speak1.jpg" alt="平滑细篾头层青碳化竹凉席">
                            </a>
                        </div>
                        <div class="bd">
                            <div class="user-id">1****9</div>
                            <div class="comment-time">2018-08-12 10:32</div>
                            <h3 class="name f-toe" title="平滑细篾头层青碳化竹凉席">平滑细篾头层青碳化竹凉席</h3>
                            <span class="price">&yen;259 </span>
                            <p class="commnet-content f-toe">质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                                质量很好，性价比超高，慢慢地从天猫转到网易上来了。质量很好，性价比超高，慢慢地从天猫转到网易上来了。
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- footer-->
<#include "./include/footer.ftl">
<!-- fixed-top 组件-->
<div class="fixed-top f-dn">
    <div class="t-nav-center-fixed f-cb">
        <div class="nav-category">
            <span>全部分类</span>
            <i></i>
        </div>
        <div class="catalog fixed">
            <ul>
                <li class="nav-main"><p><a href="/biyaoweb/category?category=男装">男装</a> <span>/</span><a href="">定制</a></p>
                    <ul class="nav-sub-p">
                        <li class="nav-sub-li">
                            <div class="left-sub"><a href="/biyaoweb/category?category=男装">男士上装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="/biyaoweb/category?category=男装">POLO衫</a>
                                <a href="/biyaoweb/category?category=男装">男T恤</a>
                                <a href="/biyaoweb/category?category=男装">西服/套装</a>
                                <a href="/biyaoweb/category?category=男装">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="/biyaoweb/category?category=男装">男士下装</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="/biyaoweb/category?category=男装">牛仔裤</a>
                                <a href="/biyaoweb/category?category=男装">休闲裤</a>
                                <a href="/biyaoweb/category?category=男装">西裤</a>
                                <a href="/biyaoweb/category?category=男装">短裤</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="nav-main"><p><a href="/biyaoweb/category?category=女装">女装</a><span>/</span><a href="">定制</a></p>
                    <ul class="nav-sub-p">
                        <li class="nav-sub-li">
                            <div class="left-sub"><a href="/biyaoweb/category?category=女装">女士上衣</a><span>&gt;</span></div>
                            <div class="right-sub">
                                <a href="">POLO衫</a>
                                <a href="">女T恤</a>
                                <a href="">西服/套装</a>
                                <a href="">卫衣/针织衫</a>
                            </div>
                        </li>
                        <li class="nav-sub">
                            <div class="left-sub"><a href="">女士下装</a><span>&gt;</span></div>
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
<script src = "js/util.js"></script>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/ScrollEvent.js"></script>
<script type="text/javascript" src="js/index.js">
</script>
<script>
    /* 拉取评论内容*/
    $.ajax({
        url:'/biyaoweb/showComments',
        type:'GET',
        data:null,
        success:function (data) {
            var list = data.commentsList;
            var totalTemp = "";
            list.forEach(function (value, index, p3) {
                var template = '                    <li>\n' +
                        '                        <div class="hd">\n' +
                        '                            <a href="" target="_blank">\n' +
                        '                                <img class="new-pic1 " src="'+ value.icon +'" alt="'+ value.productName +'">\n' +
                        '                            </a>\n' +
                        '                        </div>\n' +
                        '                        <div class="bd">\n' +
                        '                            <div class="user-id">'+ value.trueName.substring(0,1) + '***' +'</div>\n' +
                        '                            <div class="comment-time">'+ value.buyTime+'</div>\n' +
                        '                            <h3 class="name f-toe" title="'+ value.productName +'">'+ value.productName +'</h3>\n' +
                        '                            <span class="price">&yen;'+ value.price +' </span>\n' +
                        '                            <p class="commnet-content f-toe">'+ value.comments+
                '                            </p>\n' +
                '                        </div>\n' +
                '                    </li>';
                totalTemp += template;
            });
            $('.m-move-sub-comment').html(totalTemp);

        }
    });



</script>
</html>
