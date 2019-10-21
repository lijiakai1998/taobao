window.onload = function () {
    var clickTimes = 1;

    //������
    var lineCount = 6;

    var btnRefresh = document.querySelector("#btnRefresh");
    var iconRefresh = document.querySelector(".iconRefresh")

    var img3DList = document.querySelectorAll(".img-3d");
    var len = img3DList.length;

    btnRefresh.onclick = function () {
        iconRefresh.style.transition = ".3s linear";
        iconRefresh.style.transform = "rotate("+360*clickTimes+"deg)";

        for (var i = 0; i< len; i++){

            var colNum = parseInt(i/lineCount);
            var rowNum = i%lineCount;
            var delayTime = (colNum+rowNum)*100;


            img3DList[i].style.transition = ".3s "+delayTime+"ms linear";
            img3DList[i].style.transform = "rotateY("+180*clickTimes+"deg)";
        }

        clickTimes++;
    }
};
// $(function(){
//     $(".bodys p").not(":first").hide();
//     $(".searchbox ul li").mouseover(function(){
//         var index = $(this).index();
//         if(index==0){
//             $(this).find("a").addClass("style1");
//             $("li").eq(1).find("a").removeClass("style2");
//         }
//         if(index==1){
//             $(this).find("a").addClass("style2");
//             $("li").eq(0).find("a").removeClass("style1");
//         }
//
//         var index=$(this).index();
//         $(".bodys p").eq(index).show().siblings().hide();
//     });
// });

