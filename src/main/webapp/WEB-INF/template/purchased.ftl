<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>必要商城</title>
    <meta name="description"
          content="必要C2M商城是全球性价比最高的电子商务平台，是全球第一家用户直连制造（Customer To Manufactory）的平台，通过平台建立消费者与品质制造商的桥梁，将消费者的需求直接发送到工厂，按需生产模式既满足了消费者个性化的需求，又短路了复杂的商品流通环节，真正让消费者享受到专属且高品质的商品。目前，商品覆盖高跟鞋、眼镜、饰品、运动鞋、运动服、女士包包等品类，未来会按照消费者需求来增加新的产品类目。">
    <meta name="Keywords" content="必要;必要商城;必要平台;必要电商;C2M商城;工业4.0;定制平台;定制商城;奢侈品定制;定制鞋;定制包;定制眼镜;定制饰品;定制运动服;定制运动鞋">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/settlement.css">
    <style>
        .table-title {
            margin-bottom: 10px;
        }
        .comment-btn {
            display: block;
            width: 40px;
            margin-top: 10px;
            cursor: pointer;
        }
        .comment-btn:hover {
            text-decoration: underline;
        }
        .comment-box {
            text-align: right;
        }
        .comment-submit {
        }

    </style>
</head>
<body>
<!-- 顶部栏 -->
<#include "./include/header.ftl">
<!-- 导航 -->
<div class="t-nav">
    <div class="t-nav-center f-cb">
        <div class="nav-logo"><a href="index.html"></a></div>
        <div class="nav-search">
            <span class="icon-process"></span>
            <ul class="steps f-cb">
                <li>查看购物车</li>
                <li>确认订单</li>
                <li>在线付款</li>
                <li>收货并评价</li>
            </ul>
        </div>
    </div>
</div>

<div class="order f-center f-cb">

    <h3 class="h-title">已购买</h3>
    <table class="table-title" cellpadding="0" cellspacing="0">
        <tr>
            <th width="70%">产品规格</th>
            <th width="10%">单价</th>
            <th width="10%">数量</th>
            <th width="10%">时间</th>
        </tr>
    </table>
</div>
<#include "./include/footer.ftl">
</body>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script src="js/AjaxUtil.js"></script>
<script>
        
    function settlement() {
        $.ajax({
            type:'GET',
            url:"/biyaoweb/getOrderList",
            success:function (data) {
                fillTemplate(data);
            }
        })
        // 根据json 信息 填写模版
        function  fillTemplate (data) {
            var orderList = data.orderList;
            if(!data.checked) {
                return
            }
            var templateTable = '';
            orderList.forEach(function (t, number) {
                var commentBox = '<div class="comment-box comment-box'+ number+'" style="display: none"> ' +
                        '<form><textarea name ="comments" class="comment-text" cols="40" rows="5" placeholder="请输入您的评论"></textarea>' +
                        '<br><label><input type="radio" name="rank" value="1" required>好评</label>' +
                        '<label><input type="radio" name="rank" value="2" required>中评</label>' +
                        '<label><input type="radio" name="rank" value="3" required>差评</label><br>' +
                        '<input hidden name="id" value="'+t.id+'">'+
                        '<button type="submit" class="comment-submit'+number+'">提交</button></div></form>';
                var commentBtn = '<span class="comment-btn ff6600 comment-btn' + number +'">去评论</span>';
                if (t.comments != null ) {
                    commentBtn  = '<span class="comment-btn ff6600">已评论</span>';
                }

                var singleTable  = '    <table class="settlement-table settlement-table'+ number + ' ">\n' +
                        '        <tbody>\n' +
                        '        <tr >\n' +
                        '            <td width="40%">\n' +
                        '                <span class="shop-img">\n' +
                        '                    <a href="" target="_blank">\n' +
                        '                        <img width="100" height="100" src="'+ t.icon + '">\n' +
                        '                    </a>\n' +
                        '                </span>\n' +
                        '            </td>\n' +
                        '            <td align="left">\n' +
                        '                <a target="_blank" href="">\n' +
                        '                    <span class="product-name">'+ t.productName + '</span>\n' +
                        '                </a>\n' +
                        '                <div class="product-des">\n' +
                        '                    <p>颜色:'+ t.color + '</p>\n' +
                        '                    <p>尺寸：'+ t.size  + '</p>\n' +
                        '                </div>\n' +
                        '            </td>\n' +
                        '            <td width="10%" class="single-price ff6600">&yen;'+ t.price + '</td>\n' +
                        '            <td width="10%"><input class="total-number" type="number" max="99" min="0" value="'+ t.buyNumber+ '" readonly></td>\n' +
                        '            <td width="10%">\n' +
                        '                <span class="product-price-count ff6600">'+ t.buyTime + '</span><br>\n'+
                        commentBtn +
                        '</div>'+
                        '            </td>\n' +
                        '        </tr>\n' +
                        '        </tbody>\n' +
                        '    </table>' + commentBox;

                templateTable += singleTable;

            });
            $('.order').append(templateTable);
            orderList.forEach(function (t, number) {
                $('.comment-btn' + number).on('click', function (e) {
                    e.stopPropagation();
                    var $target  = $(e.target);

                    if ($target.text() === '去评论') {
                        $('.comment-box'+number).slideDown();
                    } else {
                        return
                    }
                });
                $('.comment-submit' + number).on('click', function (e) {
                    //异步保存评论 回调成功隐藏
                    e.preventDefault();
                    if (!e.target.form["comments"].value) {
                        e.target.form["comments"].value = '该用户没有留下任何评论';
                    }

                    var data = AjaxUtil.serializeForm(e.target.form);
                    $.ajax({
                        url:'/biyaoweb/addComment',
                        type:'POST',
                        data:data,
                        success: function () {
                            // 再做个提示插件
                            alert('评论成功');

                            $('.comment-box'+ number).slideUp();
                            $('.comment-btn' + number).text('已评论');
                            $('.comment-btn' + number).attr('disabled',true);
                        }
                    });

                });
            })
        }

    }
    settlement();
</script>
</html>