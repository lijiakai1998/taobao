<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/main.css"/>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <link href="../css/zzsc.css" rel="stylesheet" type="text/css"/>
    <link href="../iconfont/iconfont.css" rel="stylesheet" type="text/css"/>
    <script src="../jQuery/jquery-1.12.3.js" type="text/javascript" charset="utf-8"></script>
    <script src="../js/myjs.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function(){
            $('.navRight li').mouseenter(function(){
                $(this).children('span').css('transform','rotate(135deg)');
            }).mouseleave(function(){
                $(this).children('span').css('transform','rotate(-45deg)');
            });
            $('.man').mouseenter(function(){
                $(this).siblings().css('background','#F5F5F5');
                $('.man1').fadeTo(0,0.8).stop().animate({'width':'289px'},300);
            }).mouseleave(function(){
                $('.man').stop().animate({'height':'79px'},300)
                $(this).siblings().css('background','#ffffff');
                //alert($('.flright').html())
            });
            $('.food').mouseenter(function(){
                $(this).siblings().css('background','#F5F5F5');
                $('.food1').fadeTo(0,0.8).stop().animate({'width':'289px'},300);
            }).mouseleave(function(){
                $('.food').stop().animate({'height':'79px'},300)
                $(this).siblings().css('background','#ffffff');
            });
            $('.woman').mouseenter(function(){
                $(this).siblings().css('background','#F5F5F5');
                $('.woman1').fadeTo(0,0.8).stop().animate({'width':'289px'},300);
            }).mouseleave(function(){
                $('.woman').stop().animate({'height':'79px'},300)
                $(this).siblings().css('background','#ffffff');
            });
            $('.canmous').mouseenter(function(){
                $(this).siblings().css('background','#F5F5F5');
                $('.canmous1').fadeTo(0,0.8).stop().animate({'width':'289px'},300);
            }).mouseleave(function(){
                $('.canmous').stop().animate({'height':'79px'},300)
                $(this).siblings().css('background','#ffffff');
            });
            $('.family').mouseenter(function(){
                $(this).siblings().css('background','#F5F5F5');
                $('.family1').fadeTo(0,0.8).stop().animate({'width':'289px'},300);
            }).mouseleave(function(){
                $('.family').stop().animate({'height':'79px'},300)
                $(this).siblings().css('background','#ffffff');
            });
            $('.baby').mouseenter(function(){
                $(this).siblings().css('background','#F5F5F5');
                $('.baby1').fadeTo(0,0.8).stop().animate({'width':'289px'},300);
            }).mouseleave(function(){
                $('.baby').stop().animate({'height':'79px'},300)
                $(this).siblings().css('background','#ffffff');
            });
            $('.make').mouseenter(function(){
                $(this).siblings().css('background','#F5F5F5');
                $('.make1').fadeTo(0,0.8).stop().animate({'width':'289px'},300);
            }).mouseleave(function(){
                $('.make').stop().animate({'height':'79px'},300);
                $(this).siblings().css('background','#ffffff');
            });

            $('.navLeft').mouseleave(function(){
                $('.fenleiright').stop().animate({'width':'0px'},300);
            });
            $(".g_category").click(function () {
                var attribute = $(this).parent().parent().prev().html();
                var category = $(this).children().html();
                window.location.href = "${pageContext.request.contextPath}/goods/selGood?gAttribute=" + attribute + "&gCategory=" + category;
            });
        });
    </script>
    <title></title>
</head>
<body>
<%--<div class="login">
    <ul class="layui-nav">
        <li class="layui-nav-item"><a href="">欢迎来到购物商城</a></li>
        <li class="layui-nav-item">
            <a href="" target="mainFrame-shouye">
                <span class="iconfont icon-ren"></span>
            </a>
        </li>

        <li class="layui-nav-item layui-this">
            <a href="javascript:;">我的淘宝</a>
            <dl class="layui-nav-child">
                <dd><a href="" target="mainFrame-shouye">已卖出的宝贝</a></dd>
                <dd><a href="" target="mainFrame-shouye">已买到的宝贝</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">收藏</a>
            <dl class="layui-nav-child">
                <dd><a href="" target="mainFrame-shouye">收藏的宝贝</a></dd>
                <dd><a href="" target="mainFrame-shouye">收藏的店铺</a></dd>
            </dl>
        </li>
    </ul>
    <script src="../layui/layui.js" charset="utf-8"></script>
    <script>
        layui.use('element', function(){
            var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

            //监听导航点击
            element.on('nav(demo)', function(elem){
                //console.log(elem)
                layer.msg(elem.text());
            });
        });
    </script>
</div>
<div class="search">
    <img src="../img/logo.jpg" alt="shopping"/>
    <div class="searchbox">
        <ul class="border1">
            <li><a href="#" class="style1">宝贝</a></li>

        </ul>
        <div class="bodys">
            <p><input type="text" value="" id="" class="one" placeholder="输入宝贝" /><button class="one1">搜索</button></p>

        </div>
    </div>

</div>--%>
<div id="navOut">
    <div class="nav">
        <div class="navLeft">
            <p>商品类目</p>
            <div class="fenlei">
                <ul>
                    <li>
                        <dl class="fenleiLeft man">
                            <dt>男装</dt>
                            <div class="fenleiright man1">
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>上衣</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>裤子</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>鞋子</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>内衣</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>帽子</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>外套</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>衬衫</dt></a>
                                </dl>
                            </div>
                        </dl>
                    </li>
                    <li>
                        <dl class="fenleiLeft food">
                            <dt>女装</dt>
                            <div class="fenleiright food1">
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>卫衣</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>裙子</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>衬衫</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>内衣</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>T恤</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>外套</dt></a>
                                </dl>
                            </div>
                        </dl>
                    </li>
                    <li>
                        <dl class="fenleiLeft woman">
                            <dt>美食</dt>
                            <div class="fenleiright woman1">
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>牛奶</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>火腿</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>香肠</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>矿泉水</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>红茶</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>蜂蜜</dt></a>
                                </dl>
                            </div>
                        </dl>
                    </li>
                    <li>
                        <dl class="fenleiLeft canmous">
                            <dt>数码</dt>
                            <div class="fenleiright canmous1">
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>相机</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>手机</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>电脑</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>手机配件</dt></a>
                                </dl>
                            </div>
                        </dl>
                    </li>
                    <li>
                        <dl class="fenleiLeft family">
                            <dt>家具</dt>
                            <div class="fenleiright family1">
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>沙发</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>床</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>书桌</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>书架</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>衣柜</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>鞋柜</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>椅子</dt></a>
                                </dl>
                            </div>
                        </dl>
                    </li>
                    <li>
                        <dl class="fenleiLeft baby">
                            <dt>母婴</dt>
                            <div class="fenleiright baby1">
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>婴儿床</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>湿巾</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>婴儿推车</dt></a>
                                </dl>
                                <dl class="flright">
                                    <a class="g_category" style="cursor: pointer;"><dt>奶粉</dt></a>
                                </dl>
                            </div>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
        <ul class="navRight">
            <li><a href="">单品</a><span></span></li>
            <li><a href="">特惠</a></li>
            <li><a href="">搭配</a></li>
            <li><a href="">专辑</a><span></span></li>
            <li><a href="">主题</a><span></span></li>
            <li><a href="${pageContext.request.contextPath}/goods/stores">店铺</a></li>
        </ul>
    </div>
</div>
<div class="slideshow" style="margin-left: 170px;">
    <div class="layui-carousel" id="test1">
        <div carousel-item>
            <div><img src="../img/slide1.JPG"></div>
            <div><img src="../img/slide2.jpg"></div>
            <div><img src="../img/slide3.jpg"></div>
            <div><img src="../img/slide4.jpg"></div>
            <div><img src="../img/slide5.jpg"></div>
        </div>
    </div>
    <!-- 条目中可以是任意内容，如：<img src=""> -->

    <script src="/layui/layui.js"></script>
    <script>
        layui.use('carousel', function(){
            var carousel = layui.carousel;
            //建造实例
            carousel.render({
                elem: '#test1'
                ,width: '80%'//设置容器宽度
                ,arrow: 'always' //始终显示箭头
                ,height:'500px'
                //,anim: 'updown' //切换动画方式
            });
        });
        var carousel = layui.carousel;

        //监听轮播切换事件
        carousel.on('change(test1)', function(obj){ //test1来源于对应HTML容器的 lay-filter="test1" 属性值
            console.log(obj.index); //当前条目的索引
            console.log(obj.prevIndex); //上一个条目的索引
            console.log(obj.item); //当前条目的元素对象
        });
    </script>
</div>
<div class="uncon">
    <div class="uncon_in">
        <div class="man-con" style="height:400px;">
            <div class="mancl">
                <p><img alt="" class="mantitle" src="../img/mantitle.png" ></p>
                <a  class="manimga" href="#">
                    <img class="manimg" alt="" src="../img/manimg1.jpg" >
                </a>
                <a  class="manimga" href="#">
                    <img class="manimg" alt="" src="../img/manimg2.jpg" >
                </a>
                <a  class="man_imga" href="#">
                    <img class="manimg" alt="" src="../img/manimg3.jpg" >
                </a>
                <a  class="manimga" href="#">
                    <img class="manimg" alt="" src="../img/manimg4.jpg" >
                </a>
                <a  class="manimga" href="#">
                    <img class="manimg" alt="" src="../img/manimg5.jpg" >
                </a>
            </div>
        </div>



        <div class="brand">
            <div class="brandWall-item">
                <div class="head">
                    <span class="cn">品牌闪购</span><span class="en">BRAND SALE</span>
                    <a href="" class="more">更多></a>
                </div>
                <a class="body" href="">
                    <img src="../img/brandfastshop.jpg" class="img-ks-lazyload">
                </a>
            </div>
            <div class="brandWall-item">
                <div class="head">
                    <span class="cn">聚名品</span><span class="en">LUXURY CHANNEL</span>
                    <a href="" class="more">更多&nbsp></a>
                </div>
                <a class="body" href="">
                    <img src="../img/famousshop.jpg" class="img-ks-lazyload">
                </a>
            </div>
            <div class="brandWall-item">
                <div class="head">
                    <span class="cn">品牌活动</span><span class="en">BRAND ACTIVITY</span>
                    <a href="" class="more">更多&nbsp></a>
                </div>
                <a class="body" href="">
                    <img src="../img/brandact.jpg" class="img-ks-lazyload">
                </a>
            </div>
        </div>
        <div class="clothes">
            <div class="module-title">
            <h3>猜你喜欢</h3>
            </div>
            <div class="js j_index_carouseProduct" id="sales-product-main">
                <ul>
                    <c:forEach items="${goods}" var="good">
                        <li>
                            <a href="${pageContext.request.contextPath}/goods/good?gId=${good.gId}">
                                <img src="${good.gImage}" width="200" height="200" />
                                <span>${good.gName}</span>
                            </a>
                            <em>￥${good.gPrice}</em>
                        </li>
                    </c:forEach>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>
<div class="end1"></div>
<div class="end2">
    <div id="tmall-copyright" style="margin: 30px 336px;">
        <div class="mui-global-fragment-load" data-fragment="tmbase/mui_footer_link"><p class="footer-tmallinfo">
            <a href="//pages.tmall.com/wow/seller/act/zhaoshangproduce" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.24">关于天猫</a>
            <a href="//service.tmall.com/support/tmall/tmallHelp.htm" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.25">帮助中心</a>
            <a href="//open.taobao.com" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.26">开放平台</a>
            <a href="//job.alibaba.com/zhaopin/index.htm" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.27">诚聘英才</a>
            <a href="//consumerservice.taobao.com/contact-us" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.28">联系我们</a>
            <a href="//xtao.tmall.com?tracelog=tmallfoot" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.29">网站合作</a>
            <a href="//terms.alicdn.com/legal-agreement/terms/suit_bu1_tmall/suit_bu1_tmall201801121425_43176.html" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.30">法律声明</a>
            <a href="//terms.alicdn.com/legal-agreement/terms/suit_bu1_tmall/suit_bu1_tmall201801031144_60809.html" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.31">隐私权政策</a>
            <a href="http://ipp.alibabagroup.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.32">知识产权</a>
            <a href="//jubao.alibaba.com/index.html?site=TMALL" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.33">廉正举报</a>
            <a class="footer-fp-rule" style="display:none;" href="//rule.tmall.com/trulecycle.htm" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.34">规则意见征集</a>
        </p>
            <p class="footer-otherlink">
                <a href="http://www.alibabagroup.com/cn/global/home" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.35">阿里巴巴集团</a>|
                <a href="//www.taobao.com" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.36">淘宝网</a> |
                <a href="//www.tmall.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.37">天猫</a> |
                <a href="//ju.taobao.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.38">聚划算</a> |
                <a href="http://www.aliexpress.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.39">全球速卖通</a> |
                <a href="http://www.alibaba.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.40">阿里巴巴国际交易市场</a>|
                <a href="//www.1688.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.41">1688</a> |
                <a href="//www.alimama.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.42">阿里妈妈</a> |
                <a href="//www.fliggy.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.43">飞猪</a> |
                <a href="http://www.aliyun.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.44">阿里云计算</a> |
                <a href="http://www.alios.cn/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.45">AliOS</a> |
                <a href="http://aliqin.cn/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.46">阿里通信</a> |
                <a href="http://www.net.cn/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.47">万网</a> |
                <a href="http://www.autonavi.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.48">高德</a> |
                <a href="http://www.uc.cn/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.49">UC</a> |
                <a href="http://www.umeng.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.50">友盟</a> |
                <a href="http://www.xiami.com/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.51">虾米</a> |
                <a href="http://www.dingtalk.com/?lwfrom=20150205115110773" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.52">钉钉</a> |
                <a href="https://www.alipay.com" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.53">支付宝</a>
            </p>
            <div class="footer-copyright">增值电信业务经营许可证：
                <a data-spm-protocol="i" href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" data-spm-anchor-id="875.7931836/B.a2226n1.54">浙B2-20110446</a>
                <span style="margin-right:65px;">市场名称登记证：工商网市字3301004119号</span>
                <span>出版物网络交易平台服务经营备案证： 新出发浙备字第001号</span>
                <br>
                <span style="margin-right:65px;">互联网违法和不良信息举报电话：0571-81683755 blxxjb@alibaba-inc.com</span>
    <span class="footer-liangxinyao-cert" style="display:none;">
        <br>
        互联网药品交易服务资格证：<a href="//img.alicdn.com/tps/TB1c4YwOpXXXXcHXXXXXXXXXXXX-3306-2338.jpg" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.55">粤c20150002</a>
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010602001483" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.56">
            <img src="https://img.alicdn.com/tps/TB1_qAKKVXXXXXjapXXXXXXXXXX-20-20.png">粤公网安备 44010602001483号
        </a>
        <a style="margin-right:30px" href="http://www.miitbeian.gov.cn/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.57">粤ICP备14088652号-2</a>
        医疗器械经营许可证：<a style="margin-right:30px" href="https://pages.tmall.com/wow/yao/act/medical-cert?spm=a312d.7832054.0.0.7c6dc3095FoAP2" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.58">粤穗食药监械经营许20171161号</a>
        <a style="margin-right:50px" href="https://gw.alicdn.com/tfs/TB1mEJFkYvpK1RjSZPiXXbmwXXa-2479-1752.jpg" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.59">食品经营许可证</a>
        互联网药品信息服务资格证：<a href="https://img.alicdn.com/tfs/TB11W3xrpOWBuNjy0FiXXXFxVXa-2479-1752.jpg" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.60">（粤）—经营性—2018—0092</a>
        <a style="margin-right:30px" href="http://air.gzaic.gov.cn:88/outsys/commonquery/viewBusinessLicence?uniscid=91440101681325547Y&amp;regno=440106000067508" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.61">阿里健康大药房营业执照</a>
        <a href="https://img.alicdn.com/tfs/TB1xzdfAFYqK1RjSZLeXXbXppXa-1310-930.jpg" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.62">药品经营许可证</a>
        <a href="https://img.alicdn.com/tfs/TB1OMpnAQvoK1RjSZFwXXciCFXa-642-915.jpg" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.63">第二类医疗器械备案凭证</a>
        <a href="http://www.nmpa.gov.cn/WS04/CL2042/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.64">国家药品监督管理局</a>
        <a href="http://www.12315.cn/" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.65">全国12315互联网平台</a>
        <a href="http://www.gdnet110.gov.cn/?top_keyword" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.66">广东省公安厅</a>
        <a href="https://img.alicdn.com/tfs/TB1Ri7_AzDpK1RjSZFrXXa78VXa-1308-928.jpg" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.67">GSP</a>
        <a href="https://img.alicdn.com/tfs/TB1gIinAMHqK1RjSZFPXXcwapXa-1007-734.png" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.68">二类医疗器械网络销售备案</a>
        <a href="https://img.alicdn.com/tfs/TB1guunAQPoK1RjSZKbXXX1IXXa-1018-699.png" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.69">三类医疗器械网络销售备案</a>
        <a href="https://img.alicdn.com/tfs/TB1or0iAFzqK1RjSZSgXXcpAVXa-650-924.jpg" target="_blank" data-spm-anchor-id="875.7931836/B.a2226n1.70">食品经营备案</a>
        <br>
    </span>
                互联网药品信息服务资质证书编号：<a href="//img.alicdn.com/tps/TB1vi6vPVXXXXbVXVXXXXXXXXXX-927-653.png" data-spm-anchor-id="875.7931836/B.a2226n1.71">浙-（经营性）-2017-0005</a>
                <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=33010002000120" data-spm-anchor-id="875.7931836/B.a2226n1.72"><img src="//img.alicdn.com/tps/TB1yEqRPXXXXXXPXpXXXXXXXXXX-20-20.png" style="position:relative;top:5px;vertical-align:baseline;">
                    浙公网安备 33010002000120号</a>
                <br>
                <span style="margin-right:65px;">医疗器械网络交易服务第三方平台备案：（浙）网械平台备字[2018]第00002号</span>
                <span style="margin-right:65px;">互联网药品交易服务资格证书：国A20150001</span>
                <br>
                <span style="margin-right:65px;">浙江省网络食品销售第三方平台提供者备案：浙网食A33010002</span>

                <a href="http://jb.ccm.gov.cn/" data-spm-anchor-id="875.7931836/B.a2226n1.73">12318举报</a>
                <b data-spm-anchor-id="875.7931836/B.a2226n1.i0.661442658qTj3v">© 2003-2019 TMALL.COM 版权所有</b>
                <p style="padding-top:10px; display:none;" class="footer-fp-img">
                    <a style="margin-right:10px;" target="_blank" href="http://idinfo.zjamr.zj.gov.cn//bscx.do?method=lzxx&amp;id=3301843301840000201049" data-spm-anchor-id="875.7931836/B.a2226n1.74"><img style="width: 30px;height: 30px" src="//img.alicdn.com/tfs/TB1MQX3cBr0gK0jSZFnXXbRRXXa-65-70.gif"></a>
                    <a target="_blank" href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/CB964ABC7B904B7BA3472DDF700A2D6D" data-spm-anchor-id="875.7931836/B.a2226n1.75"><img src="//img.alicdn.com/tps/i1/TB13mgzHXXXXXbjXVXXzby4IVXX-80-30.jpg"></a>
                </p>
            </div></div>
    </div>
</div>
</body>
</html>