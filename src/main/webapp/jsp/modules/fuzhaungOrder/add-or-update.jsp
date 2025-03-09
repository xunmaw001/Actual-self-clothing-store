<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑服装订单</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">服装订单管理</li>
                        <li class="breadcrumb-item active">编辑服装订单</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">服装订单信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa address">
                                        <label>收货地址</label>
                                        <div>
                                            <select style="width: 450px" id="addressSelect" name="addressSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 address">
                                        <label>收货人</label>
                                        <input style="width: 450px" id="addressName" name="addressName" class="form-control"
                                               placeholder="收货人" readonly>
                                    </div>
                                    <div class="form-group col-md-6 address">
                                        <label>电话</label>
                                        <input style="width: 450px" id="addressPhone" name="addressPhone" class="form-control"
                                               placeholder="电话" readonly>
                                    </div>
                                    <div class="form-group col-md-6 address">
                                        <label>地址</label>
                                        <input style="width: 450px" id="addressDizhi" name="addressDizhi" class="form-control"
                                               placeholder="地址" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa fuzhaung">
                                        <label>服装</label>
                                        <div>
                                            <select style="width: 450px" id="fuzhaungSelect" name="fuzhaungSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 fuzhaung">
                                        <label>服装名称</label>
                                        <input style="width: 450px" id="fuzhaungName" name="fuzhaungName" class="form-control"
                                               placeholder="服装名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 fuzhaung">
                                        <label>服装照片</label>
                                        <img id="fuzhaungPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 fuzhaung">
                                        <label>服装类型</label>
                                        <input style="width: 450px" id="fuzhaungValue" name="fuzhaungValue" class="form-control"
                                               placeholder="服装类型" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa yonghu">
                                        <label>用户</label>
                                        <div>
                                            <select style="width: 450px" id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>用户姓名</label>
                                        <input style="width: 450px" id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="用户姓名" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                    <div class="form-group col-md-6 fuzhaungOrderUuidNumberDiv">
                                        <label>订单号</label>
                                        <input style="width: 450px" id="fuzhaungOrderUuidNumber" name="fuzhaungOrderUuidNumber" class="form-control"
                                               placeholder="订单号">
                                    </div>
                                <input id="addressId" name="addressId" type="hidden">
                                <input id="fuzhaungId" name="fuzhaungId" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                    <div class="form-group col-md-6 buyNumberDiv">
                                        <label>购买数量</label>
                                        <input style="width: 450px" id="buyNumber" name="buyNumber" class="form-control"
                                               onchange="buyNumberChickValue(this)"  placeholder="购买数量">
                                    </div>

                                    <div class="form-group col-md-6 fuzhaungOrderTruePriceDiv">
                                        <label>实付价格</label>
                                        <input style="width: 450px" id="fuzhaungOrderTruePrice" name="fuzhaungOrderTruePrice" class="form-control"
                                               onchange="fuzhaungOrderTruePriceChickValue(this)" placeholder="实付价格">
                                    </div>
                                    <div class="form-group col-md-6 fuzhaungOrderCourierNameDiv">
                                        <label>快递公司</label>
                                        <input style="width: 450px" id="fuzhaungOrderCourierName" name="fuzhaungOrderCourierName" class="form-control"
                                               placeholder="快递公司">
                                    </div>
                                    <div class="form-group col-md-6 fuzhaungOrderCourierNumberDiv">
                                        <label>订单快递单号</label>
                                        <input style="width: 450px" id="fuzhaungOrderCourierNumber" name="fuzhaungOrderCourierNumber" class="form-control"
                                               placeholder="订单快递单号">
                                    </div>
                                    <div class="form-group col-md-6 fuzhaungOrderTypesDiv">
                                        <label>订单类型</label>
                                        <select style="width: 450px" id="fuzhaungOrderTypesSelect" name="fuzhaungOrderTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6 fuzhaungOrderPaymentTypesDiv">
                                        <label>支付类型</label>
                                        <select style="width: 450px" id="fuzhaungOrderPaymentTypesSelect" name="fuzhaungOrderPaymentTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "fuzhaungOrder";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var fuzhaungOrderTypesOptions = [];
    var fuzhaungOrderPaymentTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var addressOptions = [];
    var fuzhaungOptions = [];
    var yonghuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '收货地址'){//当前登录用户不为这个
                if($("#addressId") !=null){
                    var addressId = $("#addressId").val();
                    if(addressId == null || addressId =='' || addressId == 'null'){
                        alert("收货地址 不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '服装'){//当前登录用户不为这个
                if($("#fuzhaungId") !=null){
                    var fuzhaungId = $("#fuzhaungId").val();
                    if(fuzhaungId == null || fuzhaungId =='' || fuzhaungId == 'null'){
                        alert("服装不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '用户'){//当前登录用户不为这个
                if($("#yonghuId") !=null){
                    var yonghuId = $("#yonghuId").val();
                    if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                        alert("用户不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("fuzhaungOrder/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addfuzhaungOrder');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function fuzhaungOrderTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=fuzhaung_order_types", "GET", {}, (res) => {
                if(res.code == 0){
                    fuzhaungOrderTypesOptions = res.data.list;
                }
            });
        }
        function fuzhaungOrderPaymentTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=fuzhaung_order_payment_types", "GET", {}, (res) => {
                if(res.code == 0){
                    fuzhaungOrderPaymentTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function addressSelect() {
            //填充下拉框选项
            http("address/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    addressOptions = res.data.list;
                }
            });
        }

        function addressSelectOne(id) {
            http("address/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                addressShowImg();
                addressShowVideo();
                addressDataBind();
            }
        });
        }
        function fuzhaungSelect() {
            //填充下拉框选项
            http("fuzhaung/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    fuzhaungOptions = res.data.list;
                }
            });
        }

        function fuzhaungSelectOne(id) {
            http("fuzhaung/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                fuzhaungShowImg();
                fuzhaungShowVideo();
                fuzhaungDataBind();
            }
        });
        }
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuShowVideo();
                yonghuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationFuzhaungordertypesSelect(){
            var fuzhaungOrderTypesSelect = document.getElementById('fuzhaungOrderTypesSelect');
            if(fuzhaungOrderTypesSelect != null && fuzhaungOrderTypesOptions != null  && fuzhaungOrderTypesOptions.length > 0 ){
                for (var i = 0; i < fuzhaungOrderTypesOptions.length; i++) {
                    fuzhaungOrderTypesSelect.add(new Option(fuzhaungOrderTypesOptions[i].indexName,fuzhaungOrderTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationFuzhaungorderpaymenttypesSelect(){
            var fuzhaungOrderPaymentTypesSelect = document.getElementById('fuzhaungOrderPaymentTypesSelect');
            if(fuzhaungOrderPaymentTypesSelect != null && fuzhaungOrderPaymentTypesOptions != null  && fuzhaungOrderPaymentTypesOptions.length > 0 ){
                for (var i = 0; i < fuzhaungOrderPaymentTypesOptions.length; i++) {
                    fuzhaungOrderPaymentTypesSelect.add(new Option(fuzhaungOrderPaymentTypesOptions[i].indexName,fuzhaungOrderPaymentTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationaddressSelect() {
            var addressSelect = document.getElementById('addressSelect');
            if(addressSelect != null && addressOptions != null  && addressOptions.length > 0 ) {
                for (var i = 0; i < addressOptions.length; i++) {
                        addressSelect.add(new Option(addressOptions[i].addressName, addressOptions[i].id));
                }

                $("#addressSelect").change(function(e) {
                        addressSelectOne(e.target.value);
                });
            }

        }

        function initializationfuzhaungSelect() {
            var fuzhaungSelect = document.getElementById('fuzhaungSelect');
            if(fuzhaungSelect != null && fuzhaungOptions != null  && fuzhaungOptions.length > 0 ) {
                for (var i = 0; i < fuzhaungOptions.length; i++) {
                        fuzhaungSelect.add(new Option(fuzhaungOptions[i].fuzhaungName, fuzhaungOptions[i].id));
                }

                $("#fuzhaungSelect").change(function(e) {
                        fuzhaungSelectOne(e.target.value);
                });
            }

        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var fuzhaungOrderTypesSelect = document.getElementById("fuzhaungOrderTypesSelect");
        if(fuzhaungOrderTypesSelect != null && fuzhaungOrderTypesOptions != null  && fuzhaungOrderTypesOptions.length > 0 ) {
            for (var i = 0; i < fuzhaungOrderTypesOptions.length; i++) {
                if (fuzhaungOrderTypesOptions[i].codeIndex == ruleForm.fuzhaungOrderTypes) {//下拉框value对比,如果一致就赋值汉字
                        fuzhaungOrderTypesSelect.options[i].selected = true;
                }
            }
        }

        var fuzhaungOrderPaymentTypesSelect = document.getElementById("fuzhaungOrderPaymentTypesSelect");
        if(fuzhaungOrderPaymentTypesSelect != null && fuzhaungOrderPaymentTypesOptions != null  && fuzhaungOrderPaymentTypesOptions.length > 0 ) {
            for (var i = 0; i < fuzhaungOrderPaymentTypesOptions.length; i++) {
                if (fuzhaungOrderPaymentTypesOptions[i].codeIndex == ruleForm.fuzhaungOrderPaymentTypes) {//下拉框value对比,如果一致就赋值汉字
                        fuzhaungOrderPaymentTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var addressSelect = document.getElementById("addressSelect");
            if(addressSelect != null && addressOptions != null  && addressOptions.length > 0 ) {
                for (var i = 0; i < addressOptions.length; i++) {
                    if (addressOptions[i].id == ruleForm.addressId) {//下拉框value对比,如果一致就赋值汉字
                        addressSelect.options[i+1].selected = true;
                        $("#addressSelect" ).selectpicker('refresh');
                    }
                }
            }
            var fuzhaungSelect = document.getElementById("fuzhaungSelect");
            if(fuzhaungSelect != null && fuzhaungOptions != null  && fuzhaungOptions.length > 0 ) {
                for (var i = 0; i < fuzhaungOptions.length; i++) {
                    if (fuzhaungOptions[i].id == ruleForm.fuzhaungId) {//下拉框value对比,如果一致就赋值汉字
                        fuzhaungSelect.options[i+1].selected = true;
                        $("#fuzhaungSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->
        function buyNumberChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }
        function fuzhaungOrderTruePriceChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[0-9]{0,6}(\.[0-9]{1,2})?$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("只允许输入整数6位,小数2位的数字");
                return false;
            }
        }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addfuzhaungOrder');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                fuzhaungOrderUuidNumber: "required",
                addressId: "required",
                fuzhaungId: "required",
                yonghuId: "required",
                buyNumber: "required",
                fuzhaungOrderTruePrice: "required",
                fuzhaungOrderCourierName: "required",
                fuzhaungOrderCourierNumber: "required",
                fuzhaungOrderTypes: "required",
                fuzhaungOrderPaymentTypes: "required",
            },
            messages: {
                fuzhaungOrderUuidNumber: "订单号不能为空",
                addressId: "收货地址不能为空",
                fuzhaungId: "服装不能为空",
                yonghuId: "用户不能为空",
                buyNumber: "购买数量不能为空",
                fuzhaungOrderTruePrice: "实付价格不能为空",
                fuzhaungOrderCourierName: "快递公司不能为空",
                fuzhaungOrderCourierNumber: "订单快递单号不能为空",
                fuzhaungOrderTypes: "订单类型不能为空",
                fuzhaungOrderPaymentTypes: "支付类型不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addfuzhaungOrder = window.sessionStorage.getItem("addfuzhaungOrder");
        if (addfuzhaungOrder != null && addfuzhaungOrder != "" && addfuzhaungOrder != "null") {
            //注册表单验证
            $(validform());
            $("#fuzhaungOrderUuidNumber").val(new Date().getTime()+Math.ceil(Math.random()*10));//设置唯一号

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("fuzhaungOrder/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        addressDataBind();
        fuzhaungDataBind();
        yonghuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#fuzhaungOrderUuidNumber").val(ruleForm.fuzhaungOrderUuidNumber);
        $("#addressId").val(ruleForm.addressId);
        $("#fuzhaungId").val(ruleForm.fuzhaungId);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#buyNumber").val(ruleForm.buyNumber);
        $("#fuzhaungOrderTruePrice").val(ruleForm.fuzhaungOrderTruePrice);
        $("#fuzhaungOrderCourierName").val(ruleForm.fuzhaungOrderCourierName);
        $("#fuzhaungOrderCourierNumber").val(ruleForm.fuzhaungOrderCourierNumber);

    }
    <!--  级联表的数据回显  -->
    function addressDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#addressId").val(ruleForm.id);

        $("#yonghuId").val(ruleForm.yonghuId);
        $("#addressName").val(ruleForm.addressName);
        $("#addressPhone").val(ruleForm.addressPhone);
        $("#addressDizhi").val(ruleForm.addressDizhi);
        $("#isdefaultValue").val(ruleForm.isdefaultValue);
    }

    function fuzhaungDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#fuzhaungId").val(ruleForm.id);

        $("#fuzhaungUuidNumber").val(ruleForm.fuzhaungUuidNumber);
        $("#fuzhaungName").val(ruleForm.fuzhaungName);
        $("#fuzhaungValue").val(ruleForm.fuzhaungValue);
        $("#fuzhaungKucunNumber").val(ruleForm.fuzhaungKucunNumber);
        $("#fuzhaungPrice").val(ruleForm.fuzhaungPrice);
        $("#fuzhaungOldMoney").val(ruleForm.fuzhaungOldMoney);
        $("#fuzhaungNewMoney").val(ruleForm.fuzhaungNewMoney);
        $("#fuzhaungClicknum").val(ruleForm.fuzhaungClicknum);
        $("#fuzhaungContent").val(ruleForm.fuzhaungContent);
        $("#shangxiaValue").val(ruleForm.shangxiaValue);
    }

    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuName").val(ruleForm.yonghuName);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuEmail").val(ruleForm.yonghuEmail);
        $("#newMoney").val(ruleForm.newMoney);
        $("#yonghuSumJifen").val(ruleForm.yonghuSumJifen);
        $("#yonghuNewJifen").val(ruleForm.yonghuNewJifen);
        $("#huiyuandengjiValue").val(ruleForm.huiyuandengjiValue);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        addressShowImg();
        fuzhaungShowImg();
        yonghuShowImg();
    }


    <!--  级联表的图片  -->

    function addressShowImg() {
    }


    function fuzhaungShowImg() {
        $("#fuzhaungPhotoImg").attr("src",ruleForm.fuzhaungPhoto);
    }


    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        addressShowVideo();
        fuzhaungShowVideo();
        yonghuShowVideo();
    }


    <!--  级联表的视频  -->

    function addressShowVideo() {
    }

    function fuzhaungShowVideo() {
        $("#fuzhaungPhotoV").attr("src",ruleForm.fuzhaungPhoto);
    }

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            fuzhaungOrderTypesSelect();
            fuzhaungOrderPaymentTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            addressSelect();
            fuzhaungSelect();
            yonghuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationFuzhaungordertypesSelect();
            initializationFuzhaungorderpaymenttypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationaddressSelect();
            initializationfuzhaungSelect();
            initializationyonghuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addfuzhaungOrder');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
		else if (window.sessionStorage.getItem('role') == '用户') {
            // $(".aaaaaa").remove();
            $(".yonghu").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
