<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"/>
<html>
<head>
    <title>用户注册首页</title>
    <link href="${ctx}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/css/register.css" rel="stylesheet" type="text/css"/>
    <script src="${ctx}/js/jquery-3.4.1.js"></script>
</head>
<body>
<div class="container header">
    <div class="span5">
        <div class="logo">
            <a href="#">
                <img src="${ctx}/image/logo.png" alt="">
            </a>
        </div>
    </div>
    <div class="span9">
        <div class="headerAd">
            <img src="${ctx}/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障">
        </div>	</div>
    <div class="span10 last">
        <div class="topNav clearfix">
            <ul>
                <c:if test="${user==null}">
                    <li id="headerLogin" class="headerLogin" style="display: list-item;">
                        <a href="${ctx}/iuser/tologin">登录</a>|
                    </li>
                </c:if>
                <c:if test="${user!=null}">
                    <li id="headerLogin" class="headerLogin" style="display: list-item;">
                        <font color="red">欢迎:${user.username}</font>|
                    </li>
                </c:if>
                <li id="headerLogout" class="headerLogout" style="display: list-item;">
                    <a href="${ctx}/iuser/loginout">[退出]</a>|
                </li>
                <c:if test="${user==null}">
                    <li id="headerRegister" class="headerRegister" style="display: list-item;">
                        <a href="${ctx}/iuser/toregister">注册</a>|
                    </li>
                </c:if>

                <li id="headerUsername" class="headerUsername"></li>
                    <a>会员中心</a>
                    |
                </li>
                <li>
                    <a>购物指南</a>
                    |
                </li>
                <li>
                    <a>关于我们</a>

                </li>
            </ul>
        </div>
        <div class="cart">
            <a href="./购物车.htm">购物车</a>
        </div>
        <div class="phone">
            客服热线:
            <strong>15726607618</strong>
        </div>
    </div>
    <div class="span24">
        <ul class="mainNav">
            <li>
                <a href="./index.htm">首页</a>
                |
            </li>
            <li>
                <a href="./蔬菜分类.htm">定制套餐</a>
                |
            </li>
            <li>
                <a >安全频道</a>
                |
            </li>
            <li>
                <a>商城卡</a>
                |
            </li>
            <li>
                <a >蔬菜基地</a>
                |
            </li>
            <li>
                <a>节气养生</a>
                |
            </li>
            <li>
                <a>便民服务</a>
                |
            </li>

        </ul>
    </div>

</div>
<div class="container register">
    <div class="span24">
        <div class="wrap">
            <div class="main clearfix">
                <div class="title">
                    <strong>会员注册-用户注册</strong>
                </div>
                <form id="registerForm" action="${ctx}/iuser/doregister"  method="post" novalidate="novalidate" onsubmit="return checkForm()">
                    <table>
                        <tbody>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>用户名:
                            </th>
                            <td>
                                <input type="text" id="username" name="username" class="text" maxlength="20">
                                <span id="span1"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>密&nbsp;&nbsp;码:
                            </th>
                            <td>
                                <input type="password" id="password" name="password" class="text" maxlength="20" autocomplete="off">
                                <span id="span2"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>确认密码:
                            </th>
                            <td>
                                <input type="password" id="rpwd" name="rePassword" class="text" maxlength="20" autocomplete="off">
                                <span id="span3"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>E-mail:
                            </th>
                            <td>
                                <input type="email" id="email" name="email" class="text" maxlength="200">
                                <span id="span4"></span>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                姓名:
                            </th>
                            <td>
                                <input type="text" id="name" name="name" class="text" maxlength="200">
                                <span id="span5"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                性别:
                            </th>
                            <td>
                                <span class="fieldSet">
                                    <label>
                                        <input type="radio" class="sex"  name="sex" value="男" checked>男
                                    </label>
                                    <label>
                                        <input type="radio"  class="sex" name="sex" value="女">女
                                    </label>
                                    <span id="span6"></span>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                出生日期:
                            </th>
                            <td>
                                <input type="date" id="birth" name="birth"  pattern="yyyy-MM-dd" class="text" onfocus="WdatePicker();">
                                <span id="span7"></span>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                地址:
                            </th>
                            <td>
                                <input type="text" id="address" name="address" class="text" maxlength="200">
                                <span id="span8"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>手机号:
                            </th>
                            <td>
                                <input type="text" id="tel" name="tel" class="text" maxlength="20">
                                <span id="span9"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>验证码:
                            </th>
                            <td>
                                <span class="fieldSet">
                                    <input type="text" id="checkcode" name="checkcode" class="text captcha" maxlength="6" autocomplete="off">
                                    <input  id="captchaImage" class="captchaImage" type="button" value="点击获取验证码" >
                                   <font color="red">${codemsg}</font>
                                </span>
                            </td>
                        </tr>

                        <tr>
                        <tr>
                            <th>&nbsp;

                            </th>
                            <td>
                                <input type="submit" class="submit" value="同意以下协议并注册">
                            </td>
                        </tr>
                        <tr>
                            <th>&nbsp;

                            </th>
                            <td>
                                注册协议
                            </td>
                        </tr>
                        <tr>
                            <th>&nbsp;

                            </th>
                            <td>
                                <div id="agreement" class="agreement" style="height: 200px;">
                                    <p>尊敬的用户欢迎您注册成为本网站会员。请用户仔细阅读以下全部内容。如用户不同意本服务条款任意内容，请不要注册或使用本网站服务。如用户通过本网站注册程序，即表示用户与本网站已达成协议，自愿接受本服务条款的所有内容。此后，用户不得以未阅读本服务条款内容作任何形式的抗辩。</p> <p>一、本站服务条款的确认和接纳<br>本网站涉及的各项服务的所有权和运作权归本网站所有。本网站所提供的服务必须按照其发布的服务条款和操作规则严格执行。本服务条款的效力范围及于本网站的一切产品和服务，用户在享受本网站的任何服务时，应当受本服务条款的约束。</p> <p>二、服务简介<br>本网站运用自己的操作系统通过国际互联网络为用户提供各项服务。用户必须:  1. 提供设备，如个人电脑、手机或其他上网设备。 2. 个人上网和支付与此服务有关的费用。</p> <p>三、用户在不得在本网站上发布下列违法信息<br>1. 反对宪法所确定的基本原则的； 2. 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的； 3. 损害国家荣誉和利益的； 4. 煽动民族仇恨、民族歧视，破坏民族团结的； 5. 破坏国家宗教政策，宣扬邪教和封建迷信的； 6. 散布谣言，扰乱社会秩序，破坏社会稳定的； 7. 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的； 8. 侮辱或者诽谤他人，侵害他人合法权益的； 9. 含有法律、行政法规禁止的其他内容的。</p> <p>四、有关个人资料<br>用户同意:  1. 提供及时、详尽及准确的个人资料。 2. 同意接收来自本网站的信息。 3. 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。 4. 本网站不公开用户的姓名、地址、电子邮箱和笔名。除以下情况外:  a) 用户授权本站透露这些信息。 b) 相应的法律及程序要求本站提供用户的个人资料。</p> <p>五、服务条款的修改<br>本网站有权在必要时修改服务条款，一旦条款及服务内容产生变动，本网站将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视为接受服务条款的变动。</p> <p>六、用户隐私制度<br>尊重用户个人隐私是本网站的一项基本政策。所以，本网站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本网站中的非公开内容，除非有法律许可要求或本网站在诚信的基础上认为透露这些信息在以下四种情况是必要的:  1. 遵守有关法律规定，遵从本网站合法服务程序。 2. 保持维护本网站的商标所有权。 3. 在紧急情况下竭力维护用户个人和社会大众的隐私安全。 4. 符合其他相关的要求。</p> <p>七、用户的帐号、密码和安全性<br>用户一旦注册成功，将获得一个密码和用户名。用户需谨慎合理的保存、使用用户名和密码。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。你可随时根据指示改变你的密码。用户若发现任何非法使用用户帐号或存在安全漏洞的情况，请立即通告本网站。   八、 拒绝提供担保 用户明确同意信息服务的使用由用户个人承担风险。本网站不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。</p> <p>九、有限责任<br>如因不可抗力或其它本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等本站会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失，同时会尽量避免这种损害的发生。</p> <p>十、用户信息的储存和限制<br>本站有判定用户的行为是否符合国家法律法规规定及本站服务条款权利，如果用户违背本网站服务条款的规定，本网站有权中断对其提供服务的权利。</p> <p>十一、用户管理<br>用户单独承担发布内容的责任。用户对服务的使用是根据所有适用于本站的国家法律、地方法律和国际法律标准的。用户必须遵循:  1. 使用网络服务不作非法用途。 2. 不干扰或混乱网络服务。 3. 遵守所有使用网络服务的网络协议、规定、程序和惯例。 用户须承诺不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐性的、伤害性的、庸俗的，淫秽等信息资料。另外，用户也不能传输何教唆他人构成犯罪行为的资料；不能传输助长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法律的资料。未经许可而非法进入其它电脑系统是禁止的。 若用户的行为不符合以上提到的服务条款，本站将作出独立判断立即取消用户服务帐号。用户需对自己在网上的行为承担法律责任。用户若在本站上散布和传播反动、色情或其它违反国家法律的信息，本站的系统记录有可能作为用户违反法律的证据。</p> <p>十二、通告<br>所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。</p> <p>十三、信息内容的所有权<br>本网站定义的信息内容包括: 文字、软件、声音、相片、录象、图表；在广告中全部内容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本网站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。本站所有的文章版权归原文作者和本站共同所有，任何人需要转载本站的文章，必须征得原文作者或本站授权。</p> <p>十四、法律<br>本协议的订立、执行和解释及争议的解决均应适用中华人民共和国的法律。用户和本网站一致同意服从本网站所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户的约束力。</p>
                                </div>
                            </td>
                        </tr>
                        </tbody></table>
                    <div class="login">
                        <div class="ad">
                            <dl>
                                <dt>
                                    注册即享受
                                </dt>
                                <dd>
                                    正品保障、正规发票
                                </dd>
                                <dd>
                                    货到付款、会员服务
                                </dd>
                                <dd>
                                    自由退换、售后上门
                                </dd>
                            </dl>
                        </div>							<dl>
                        <dt>已经拥有账号了？</dt>
                        <dd>
                            立即登录即可体验在线购物！
                            <a href="${ctx}/iuser/tologin">立即登录</a>
                        </dd>
                    </dl>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="container footer">
    <div class="span24">
        <div class="footerAd">
            <img src="${ctx}/image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
        </div>	</div>
    <div class="span24">
        <ul class="bottomNav">
            <li>
                <a >关于我们</a>
                |
            </li>
            <li>
                <a >联系我们</a>
                |
            </li>
            <li>
                <a >招贤纳士</a>
                |
            </li>
            <li>
                <a>法律声明</a>
                |
            </li>
            <li>
                <a >友情链接</a>
                |
            </li>
            <li>
                <a  target="_blank">支付方式</a>
                |
            </li>
            <li>
                <a  target="_blank">配送方式</a>
                |
            </li>
            <li>
                <a>服务声明</a>
                |
            </li>
            <li>
                <a >广告声明</a>

            </li>
        </ul>
    </div>
    <div class="span24">
        <div class="copyright">Copyright © 2005-2015 网上商城 版权所有</div>
    </div>
</div>
</body>
<script>
    var usernameflag=false;
    var passwordflag=false;
    var rpwdflag=false;
    var emailflag=false;
    var nameflag=false;
    var telflag=false;
    var addressflag=false;
    var birthflag=false;
    var checkcodeflag=false;
    $(function () {
        //校验用户名
        $("#username").blur(function () {
            var username = $(this).val();
            var span1 = $("#span1");
            if(username==null || username==""){
                span1.css("color","red");
                span1.html("不能为空");
                span1.css("font-size","13px")
                usernameflag=false;
            }else {
                $.post("${ctx}/iuser/findUser",{username:username},function (data) {
                    if(data.findUser){
                        span1.css("color","red");
                        span1.html(data.userMsg);
                        span1.css("font-size","13px")
                        usernameflag=false;
                    }else {
                        span1.css("color","green");
                        span1.html(data.userMsg);
                        span1.css("font-size","13px")
                        usernameflag=true;
                    }
                },"json");
            }
        });
        //校验密码和确认密码
        $("#password").blur(function () {
            var password=$("#password").val();
            var rpwd = $("#rpwd").val();
            var span2 = $("#span2");
            var span3 = $("#span3");
            if(rpwd==password&&rpwd!=""&&password!=""){
                span2.css("color","green");
                span2.css("font-size","13px")
                span2.html("ok");
                span3.css("color","green");
                span3.css("font-size","13px")
                span3.html("ok");
                passwordflag=true;
                rpwdflag=true;
            }else {
                span2.css("color","red");
                span2.html("两次密码输入不一致");
                span2.css("font-size","13px")
                span3.css("color","red");
                span3.css("font-size","13px")
                span3.html("两次密码输入不一致");
                passwordflag=false;
                rpwdflag=false;

            }
        });
        $("#rpwd").blur(function () {
            var rpwd=$("#rpwd").val();
            var password = $("#password").val();
            var span2 = $("#span2");
            var span3 = $("#span3");
            if(rpwd!=""&&password!=""&&rpwd==password){
                span2.css("color","green");
                span2.html("密码输入正确");
                span3.css("color","green");
                span3.html("密码输入正确");
                passwordflag=true;
                rpwdflag=true;
            }else {
                span2.css("color","red");
                span2.html("两次密码输入不一致");
                span3.css("color","red");
                span3.html("两次密码输入不一致");
                passwordflag=false;
                rpwdflag=false;

            }
        });
        //校验邮箱
        $("#email").blur(function () {
            var reg=/^(\w)+@(\w+(\.+\w{3}))$/;//字母数字下划线+@字母数字下划线.+字母数字下划线
            var val = $("#email").val();
            var span4 = $("#span4");
            if(val==null || val==""){
                span4.css("color","red");
                span4.css("font-size","13px")
                span4.html("邮箱不能为空")
                emailflag=false;
            }else if(!reg.test(val)){
                span4.css("color","red");
                span4.css("font-size","13px")
                span4.html("邮箱格式错误")
                emailflag=false;
            }
            else {
                span4.css("color","green");
                span4.css("font-size","13px")
                span4.html("邮箱格式正确")
                emailflag=true;
            }
        });
        //校验name
        $("#name").blur(function () {
            var val = $("#name").val();
            var span5 = $("#span5");
            if(val==null || val==""){
                span5.css("color","red");
                span5.css("font-size","13px")
                span5.html("姓名不能为空")
                nameflag=false;
            }else {
                span5.css("color","green");
                span5.css("font-size","13px")
                span5.html("姓名可用")
                nameflag=true;
            }
        });
        //校验电话
        $("#tel").blur(function () {
            var reg=/^1\d{10}$/;//手机号1开头11位数字
            var val = $("#tel").val();
            var span9 = $("#span9");
            if(val==null || val==""){
                span9.css("color","red");
                span9.css("font-size","13px")
                span9.html("手机号不能为空")
                telflag=false;
            }else if(!reg.test(val)){
                span9.css("color","red");
                span9.css("font-size","13px")
                span9.html("手机号格式错误")
                telflag=false;
            } else {
                span9.css("color","green");
                span9.css("font-size","13px")
                span9.html("手机号格式正确")
                telflag=true;
            }
        });
        //校验地址
        $("#address").blur(function () {
            var val = $("#address").val();
            var span8 = $("#span8");
            if(val==null || val==""){
                span8.css("color","red");
                span8.css("font-size","13px")
                span8.html("地址不能为空")
                addressflag=false;
            }else {
                span8.css("color","green");
                span8.css("font-size","13px")
                span8.html("地址正确")
                addressflag=true;
            }
        });
        //校验出生日期
        $("#birth").blur(function () {
            var val = $("#birth").val();
            var span7 = $("#span7");
            if(val==null || val==""){
                span7.css("color","red");
                span7.css("font-size","13px")
                span7.html("出生日期不能为空")
                birthflag=false;
            }else {
                span7.css("color","green");
                span7.css("font-size","13px")
                span7.html("格式正确")
               birthflag=true;
            }
        });
        //校验验证码
        $("#checkcode").blur(function () {
            var checkcode = $(this).val();
            var tel = $("#tel").val();
            var span10 = $("#span10");
            if(checkcode==null || checkcode==""){
                alert("验证码不能为空")
                checkcodeflag=false;
            }else {
               checkcodeflag=true
            }
        });
        //发送手机验证码

        $("#captchaImage").click(function () {
           var tel=$("#tel").val();
           $.post("${ctx}/iuser/sendcode",{tel:tel});

        });
    });

    function checkForm(){
        return checkcodeflag&&usernameflag&&passwordflag&&rpwdflag&&emailflag&&nameflag&&telflag&&addressflag&&birthflag;
    }
</script>
</html>
