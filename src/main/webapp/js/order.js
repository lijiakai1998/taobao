// 弹出层出现
$(document).ready(function() {
    $("button").click(blockk);
    function blockk() {
        console.log("hello");
        $(".layer").css({
            "display": "block",
            "left": ($(window).width() - 500) / 2,
            "top": ($(window).height() - 350) / 2
        });
        $(".cover").css("display", "block");
    }

    $("#submit").click(
        function () {
            if ($("#name").val() == "" || $("#phone").val() == "" || $("#address").val() == "") {
                console.log("fff");
                $(".tip").addClass("error").html("<i class=\"iconfont icon-error\" style='font-size: 16px;'></i>&nbsp;收货信息都不能为空");

            } else {
                var pho = /^1\d{10}$/;
                if (pho.test($("#phone").val())) {
                    // 弹出层，遮罩层隐藏，
                    $(".layer").css("display", "none");
                    $(".cover").css("display", "none");
                    $(".message").css("display", "block");
                    // 信息框出现
                    $("#modify").text("修改信息");

                    $(".span-1").text($("#name").val());
                    $(".span-2").text($("#phone").val());
                    $(".span-3").text($("#address").val());
                } else {
                    $(".tip").addClass("error").html("<i class=\"iconfont icon-error\" style='font-size: 16px;'></i>&nbsp;手机号码不合法");

                }

            }


        });



    $("#pay").click(function () {
        if ($("#name").val() == "" || $("#phone").val() == "" || $("#address").val() == "") {
            alert("还没有填写收货信息");
            blockk();
        } else {
            $("#form-id").submit();
            alert("提交订单成功")
        }
    });


    $(".close").click(function () {
        $(".layer").css("display", "none");
        $(".cover").css("display", "none");
        $(".message").css("display", "block");
        // 信息框出现
        $("#modify").text("修改信息");
        $(".span-1").text($("#name").val());
        $(".span-2").text($("#phone").val());
        $(".span-3").text($("#address").val());
    });
});


