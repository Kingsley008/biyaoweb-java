<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>必要商城</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/product.css">
</head>
<body>
<!-- 顶部栏 -->
<#include "./include/header.ftl">
<!-- 导航 -->
<#include "./include/search.ftl">

<div class="section  f-center">
    <div class="section-bread">
        <a href="index.html">首页</a>
        <span class="bread-title">&gt;${product.name}</span>
    </div>
    <div class="section-editor f-cb">
        <div class="editor-main">
            <div class="editor-pic f-cb">
                <p><img class="main-pic" src="${arrImg[0]}"></p>
                <ul class="group-pic">
                    <#list arrImg as x>
                    <li><img src="${x}" alt=""></li>
                    </#list>
                </ul>
            </div>
            <ul class="editor-policy f-cb">
                <li>
                    <span>7天无忧退换</span>
                    <div>
                        <i></i>
                        <p>实物破损、不符、质量问题，退换货商家承担往返运费。</p>
                    </div>
                </li>
                <li>
                    <span>先行赔付</span>
                    <div>
                        <i></i>
                        <p>争议可申诉，申诉成功，立即退款。</p>
                    </div>
                </li>
                <li>
                    <span>超时赔偿</span>
                    <div>
                        <i></i>
                        <p>未按承诺时间发货，系统自动赔付（赔款金额为订单商品金额的30%，上限500元）。</p>
                    </div>
                </li>
                <li>
                    <span>顺丰包邮</span>
                    <div>
                        <i></i>
                        <p>运费由商家承担</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="editor-panel">
            <div class="panel-top">
                <h1 class="product-name">${product.name}</h1>
                <p>${product.intro}</p><#-- 缺少abstract 属性 -->
            </div>
            <ul class="panel-main">
                <li class="panel-press">
                    <span>售价</span>
                    <div>
                        <span class="panel-money">￥<i>${product.price}</i></span>
                        <span class="panel-duration">生产周期：<span>${product.produceDate}</span>天
						</span>
                    </div>
                </li>

                <li class="panel-specs">
                    <ul>
                        <li class="specs-dimension clearfix"><span>颜色</span>
                            <div>
                                <ul class="specs-style f-cb">

                                    <li class="color-detail">
                                    ${arrColor[0]}
                                        <em></em>
                                    </li>

                                    <li class="color-detail">
                                        ${arrColor[1]}
                                        <em></em>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="specs-dimension clearfix"><span>尺寸</span>
                            <div>
                                <ul class="specs-size">
                                    <#list arrSize as x >
                                    <li class="specs-detail">${x}<em></em></li>
                                    </#list>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li>

                <li class="panel-sizeImg">
                    <div><span>查看尺码对照表</span></div>
                    <!--    <img src="http://bfs.biyao.com/group1/M00/15/F3/rBACVFl0nkiADjDXAADYaVRBfDY420.jpg">-->
                </li>

                <li class="panel-count"><span>数量</span>
                    <div>
                        <p class="panel-num">
                            <span class="panel-minus">-</span>
                            <span class="panel-number">1</span>
                            <span class="panel-add">+</span>
                        </p>
                    </div>
                </li>
            </ul>
            <div class="panel-bottom">
                <p id="buyNow" class="panel-buyNow">立即购买</p>
                <p class="addShopCar">加入购物车</p>
            </div>
        </div>
    </div>
    <!-- 详情页 -->
    <div class="detail-page f-cb">
        <div class="view-title f-cb">
            <a href="" class="brand">EMP服饰</a>
            <a href="" class="tab-selected" data-tab="detail">商品信息</a>
            <a href="" data-tab="comment">评价详情 138</a>
        </div>
        <div class="left-recommendation">
            <ul>
                <li>
                    <div class="hd">
                        <a href="" target="_blank">
                            <img src="imgs/product/recommendation/recommdation.jpg" alt="推荐商品">
                        </a>
                    </div>
                    <div class="bd">
                        <p>咖啡碳纤维休闲裤</p>
                        <b class="price">￥279</b>
                    </div>
                </li>
                <li>
                    <div class="hd">
                        <a href="" target="_blank">
                            <img src="imgs/product/recommendation/recommdation.jpg" alt="推荐商品">
                        </a>
                    </div>
                    <div class="bd">
                        <p>咖啡碳纤维休闲裤</p>
                        <b class="price">￥279</b>
                    </div>
                </li>
                <li>
                    <div class="hd">
                        <a href="" target="_blank">
                            <img src="imgs/product/recommendation/recommdation.jpg" alt="推荐商品">
                        </a>
                    </div>
                    <div class="bd">
                        <p>咖啡碳纤维休闲裤</p>
                        <b class="price">￥279</b>
                    </div>
                </li>
                <li>
                    <div class="hd">
                        <a href="" target="_blank">
                            <img src="imgs/product/recommendation/recommdation.jpg" alt="推荐商品">
                        </a>
                    </div>
                    <div class="bd">
                        <p>咖啡碳纤维休闲裤</p>
                        <b class="price">￥279</b>
                    </div>
                </li>
            </ul>
        </div>
        <div class="right-product-detail">
            <dl>
                <dt>商品名称</dt>
                <dd>三防免烫功能牛津纺衬衫五色7087</dd>
            </dl>
            <dl>
                <dt>面料成份</dt>
                <dd>100%棉</dd>
            </dl>
            <dl>
                <dt>颜色分类</dt>
                <dd>白色 浅蓝 蓝色 灰色 藏青色</dd>
            </dl>
            <dl>
                <dt>功能卖点</dt>
                <dd> 三防是经过纳米技术处理使成衣具有防水防油防污渍的功能，结合成衣免烫处理，给您一件不易皱的防水衬衫。</dd>
            </dl>
            <dl>
                <dt>洗涤说明</dt>
                <dd>建议手洗/低温熨烫/不可漂白</dd>
            </dl>
            <dl>
                <dt>温馨提示</dt>
                <dd>衬衫成衣免烫处理与普通衬衫对比，较不易褶皱，但非完全不褶皱，正确洗涤后轻微熨烫即可恢复平整状态。</dd>
            </dl>
            <dl>
                <dt>特别提示1</dt>
                <dd>经过三防处理得面料并不影响纤维本身的特性，依然拥有良好的透气性，您可放心选购。</dd>
            </dl>
            <dl>
                <dt>特别提示2</dt>
                <dd>7087藏青色，本身颜色较深，做过免烫及三防后会有略微洗退的风格，介意者请慎重购买。</dd>
            </dl>
            <dl>
                <dt>发票提供</dt>
                <dd>EMP服饰提供电子发票，具体操作详见【售后说明】，如需要纸质发票需在备注中说明。</dd>
            </dl>
            <div class="img-text">
                <p>立体裁剪 版型修身</p>
                <img src="imgs/product/detail/pd1.jpg">
                <p>经典商务 风格百搭</p>
                <img src="imgs/product/detail/pd2.jpg">
                <p>办公日常 轻松驾驭</p>
                <img src="imgs/product/detail/pd3.jpg">
                <p>合理版型设计凸显腰身</p>
                <img src="imgs/product/detail/pd4.jpg">
                <p>活插片设计领型挺括</p>
                <img src="imgs/product/detail/pd5.jpg">
                <p>精工细作 注重细节</p>
                <img src="imgs/product/detail/pd6.jpg">
                <p>三防标识 品质保障</p>
                <img src="imgs/product/detail/pd7.jpg">
                <p>防水演示 荷叶效应</p>
                <img src="imgs/product/detail/pd8.jpg">
                <img src="imgs/product/detail/pd9.jpg">
                <p>资深监管 品质保证</p>
                <img src="imgs/product/detail/pd10.jpg">
                <img src="imgs/product/detail/pd11.jpg">
                <p>试穿信息</p>
                <img src="imgs/product/detail/pd12.jpg">
            </div>


        </div>
        <!-- <div class="right-product-detail f-dn">
             <p>商品满意度：<span class="total-eval">4.8分</span></p>
             <ul>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <li class="f-cb">
                     <div class="eval-user">
                         <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">
                         <span class="user-id">b***6</span>
                     </div>
                     <dl class="eval-result">
                         <dt class='good-icon'></dt>
                         <dd>好评</dd>
                     </dl>
                     <div class="eval-content">
                         <p>很合身，适合这个季节！</p>
                     </div>
                     <div class="eval-product">
                         <span>2017-09-10 11:25  </span>
                         <span>颜色: 蓝色</span>
                         <span>尺寸: 39</span>
                     </div>
                 </li>
                 <p class="no-more-comment">没有更多评论了</p>
             </ul>
         </div>-->

    </div>

</div>
<!-- 侧栏导航 -->
<div class="t-side" style="z-index: 3">
    <ul class="right-bar-fixed">
        <li class=""></li>
        <li class=""></li>
        <li class=""></li>
        <!-- 二维码下载hover 显示 -->
        <li class="rightBar-code">
            <div class="rightBar-code-show">
                <span></span>
                <dl>
                    <dt></dt>
                    <dd>扫码下载必要App</dd>
                </dl>
            </div>
        </li>
        <!-- 滑动条在顶部 隐藏 -->
        <li class="rightBar-top"><a href="#top"></a></li>
    </ul>
</div>

<!-- footer-->
<#include "./include/footer.ftl">

<div class="fixed-top f-dn">
    <div class="t-nav-center-fixed f-cb">
        <div class="view-title f-cb">
            <a href="">EMP服饰</a>
            <a href="" class="tab-selected" data-tab="detail">商品信息</a>
            <a href="" data-tab="comment">评价详情<span class="comment-num">138</span></a>
            <p class="addShopCar">加入购物车</p>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/ScrollEvent.js"></script>
<script type="text/javascript" src="js/util.js"></script>
<script>
    /* 之后封装 */
    function handleClick() {
        var $mainPic = $('.main-pic');
        // 处理主图切换
        $('.group-pic').on('click', function (e) {
            var target = e.target;
            var imgURL = target.src;
            $(target).parent().siblings().removeClass('main-active');
            $(target).parent().addClass('main-active');
            $mainPic.attr('src', imgURL);

        })
        // 取到相应的款式信息
        $('.specs-style').on('click', function (e) {
            var target = e.target;
            $(target).siblings().removeClass('lowModel-specs-active');
            $(target).addClass('lowModel-specs-active');

            var style = $(target).siblings('.material-sale').html();

        })
        // 取到尺寸
        $('.specs-size').on('click', function (e) {
            var target = e.target;
            $(target).siblings().removeClass('lowModel-specs-active');
            $(target).addClass('lowModel-specs-active');
            var size = parseInt($(target).html());
        })
        // 响应购物数量切换
        var $number = $('.panel-number');
        // 购买的数量
        var num = $number.html();

        $('.panel-num').on('click', function (e) {
            var target = e.target;
            if (target.className === 'panel-minus') {
                num = Math.max(0, --num);
                $number.html(num);
            } else if (target.className === 'panel-add') {
                num = Math.min(100, ++num);
                $number.html(num);
            }
            // console.log(num);

        })
        var templateDetail = '<div class="right-product-detail">\n' +
                '            <dl>\n' +
                '                <dt>商品名称</dt>\n' +
                '                <dd>三防免烫功能牛津纺衬衫五色7087</dd>\n' +
                '            </dl>\n' +
                '            <dl>\n' +
                '                <dt>面料成份</dt>\n' +
                '                <dd>100%棉</dd>\n' +
                '            </dl>\n' +
                '            <dl>\n' +
                '                <dt>颜色分类</dt>\n' +
                '                <dd>白色 浅蓝 蓝色 灰色 藏青色</dd>\n' +
                '            </dl>\n' +
                '            <dl>\n' +
                '                <dt>功能卖点</dt>\n' +
                '                <dd> 三防是经过纳米技术处理使成衣具有防水防油防污渍的功能，结合成衣免烫处理，给您一件不易皱的防水衬衫。</dd>\n' +
                '            </dl>\n' +
                '            <dl>\n' +
                '                <dt>洗涤说明</dt>\n' +
                '                <dd>建议手洗/低温熨烫/不可漂白</dd>\n' +
                '            </dl>\n' +
                '            <dl>\n' +
                '                <dt>温馨提示</dt>\n' +
                '                <dd>衬衫成衣免烫处理与普通衬衫对比，较不易褶皱，但非完全不褶皱，正确洗涤后轻微熨烫即可恢复平整状态。</dd>\n' +
                '            </dl>\n' +
                '            <dl>\n' +
                '                <dt>特别提示1</dt>\n' +
                '                <dd>经过三防处理得面料并不影响纤维本身的特性，依然拥有良好的透气性，您可放心选购。</dd>\n' +
                '            </dl>\n' +
                '            <dl>\n' +
                '                <dt>特别提示2</dt>\n' +
                '                <dd>7087藏青色，本身颜色较深，做过免烫及三防后会有略微洗退的风格，介意者请慎重购买。</dd>\n' +
                '            </dl>\n' +
                '            <dl>\n' +
                '                <dt>发票提供</dt>\n' +
                '                <dd>EMP服饰提供电子发票，具体操作详见【售后说明】，如需要纸质发票需在备注中说明。</dd>\n' +
                '            </dl>\n' +
                '            <div class="img-text">\n' +
                '                <p>立体裁剪 版型修身</p>\n' +
                '                <img src="imgs/product/detail/pd1.jpg">\n' +
                '                <p>经典商务 风格百搭</p>\n' +
                '                <img src="imgs/product/detail/pd2.jpg">\n' +
                '                <p>办公日常 轻松驾驭</p>\n' +
                '                <img src="imgs/product/detail/pd3.jpg">\n' +
                '                <p>合理版型设计凸显腰身</p>\n' +
                '                <img src="imgs/product/detail/pd4.jpg">\n' +
                '                <p>活插片设计领型挺括</p>\n' +
                '                <img src="imgs/product/detail/pd5.jpg">\n' +
                '                <p>精工细作 注重细节</p>\n' +
                '                <img src="imgs/product/detail/pd6.jpg">\n' +
                '                <p>三防标识 品质保障</p>\n' +
                '                <img src="imgs/product/detail/pd7.jpg">\n' +
                '                <p>防水演示 荷叶效应</p>\n' +
                '                <img src="imgs/product/detail/pd8.jpg">\n' +
                '                <img src="imgs/product/detail/pd9.jpg">\n' +
                '                <p>资深监管 品质保证</p>\n' +
                '                <img src="imgs/product/detail/pd10.jpg">\n' +
                '                <img src="imgs/product/detail/pd11.jpg">\n' +
                '                <p>试穿信息</p>\n' +
                '                <img src="imgs/product/detail/pd12.jpg">\n' +
                '            </div>\n' +
                '\n' +
                '\n' +
                '        </div>';

        var templateComment = ' <p>商品满意度：<span class="total-eval">4.8分</span></p>\n' +
                '            <ul>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <li class="f-cb">\n' +
                '                    <div class="eval-user">\n' +
                '                        <img class="user-icon" src="imgs/icon/admin.png" width="40" height="40">\n' +
                '                        <span class="user-id">b***6</span>\n' +
                '                    </div>\n' +
                '                    <dl class="eval-result">\n' +
                '                        <dt class=\'good-icon\'></dt>\n' +
                '                        <dd>好评</dd>\n' +
                '                    </dl>\n' +
                '                    <div class="eval-content">\n' +
                '                        <p>很合身，适合这个季节！</p>\n' +
                '                    </div>\n' +
                '                    <div class="eval-product">\n' +
                '                        <span>2017-09-10 11:25  </span>\n' +
                '                        <span>颜色: 蓝色</span>\n' +
                '                        <span>尺寸: 39</span>\n' +
                '                    </div>\n' +
                '                </li>\n' +
                '                <p class="no-more-comment">没有更多评论了</p>\n' +
                '            </ul>\n' ;
        var template = {
            detail: templateDetail,
            comment: templateComment,
        };

        var container = $('.right-product-detail');
        // tab页切换 先不考虑 数据请求
        $('.view-title').on('click', function (e) {
            e.preventDefault();
            var target = e.target;
            if (target.className === 'brand') {
                // 进行店铺跳转
                return
            }
            $(target).siblings().removeClass('tab-selected');
            $(target).addClass('tab-selected');
            showTab(template[$(target).attr('data-tab')])

        });

        function showTab(template) {
            container.html('');
            container.html(template);
        }

        // 切换到 购物车页面  并且 进行数据保存
        $('.panel-bottom').on('click', function (e) {
            var checked = dealCart();
            var e = e || window.e;
            // 跳页前确认是否勾选参数
            if (typeof checked == 'boolean'){
                return
            }

            if (e.target.className == 'addShopCar') {
                location.href = '/biyaoweb/shoppingCart';

            } else if (e.target.className = '.panel-buyNow') {

                var sumData = {};
                var productArr = [];
                // 得到订单列表的数量
                var obj = {};
                obj.imgURL = $('.main-pic').attr('src');
                obj.name = $('.product-name').text();
                obj.color = $('.color-detail.lowModel-specs-active').text();
                obj.size = $('.specs-detail.lowModel-specs-active').text();
                obj.price = $('.panel-money').find('i').text();
                obj.number = $('.panel-number').text();
                sumData.totalNumber = obj.number;
                var total = '&yen'+ (obj.number * obj.price);
                obj.price =  '&yen' + obj.price;
                obj.count = obj.price;
                var ids = location.search.substring(1).split('=');
                obj.productId = ids[1]; // productId
                productArr.push(obj);
                sumData.productArr = productArr;
                sumData.totalPrice = total;

                console.log(sumData);
                localStorage.setItem('sumData', JSON.stringify(sumData));

                var cookies = util.getCookie();

                if(cookies.userId == null) {
                    // 登入弹窗
                    // TODO 做一个登录modal
                    location.href = "/biyaoweb/login";
                } else {
                    location.href = "/biyaoweb/settlement";
                }
            }



        });
        // TODO 跳转订单确认页面

        function saveInfo() {
            var productObj = {};
            productObj.imgURL = $('.main-pic').attr('src');
            productObj.name = $('.product-name').html();
            productObj.style = $('.color-detail.lowModel-specs-active').text();
            productObj.size  = $('.specs-detail.lowModel-specs-active').text();
            productObj.price = $('.panel-money>i').html();
            productObj.number = $('.panel-number').html();
            var ids = location.search.substring(1).split('=');
            productObj[ids[0]] = ids[1]; // productId
            console.log(productObj);
            // 检查参数是否存在
            for(var v in productObj){
                var checked = true;

                if (productObj[v].length > 0){
                    console.log(productObj[v].length);

                } else {
                     checked = false;
                     return checked;
                }

            }

            if(checked){
                return productObj;
            }
        }

        function dealCart() {
            var productObj = saveInfo();
            if( typeof productObj == 'boolean') {
                alert('请选择商品的型号');
                return false
            }


            if(!localStorage.getItem('productCart')) {
                // 当前没有购物车 创建购物车
                var productArr = [];
                localStorage.setItem('productCart',JSON.stringify(productArr));
                productArr.push(productObj);
            } else {
                // 已有购物车 取出
                var arr = JSON.parse(localStorage.getItem('productCart'));
                arr.push(productObj);
                localStorage.setItem('productCart',JSON.stringify(arr));
            }

        }

    }


    function _main() {

        $.scrollEvent({
            bdSelector: ".detail-page", //滚动到bd显示 固定的顶部栏
            topSelector: ".rightBar-top", // 在顶部时 进行隐藏
            // showManSelector:".m-show.man", // 滚动到这个节点 动态加载下一个节点
            topFixedSelector: ".fixed-top", // 用于显示隐藏
        });

        handleClick();

    }

    _main();
</script>
</html>