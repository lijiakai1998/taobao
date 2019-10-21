window.onload = function () {
    var can = document.getElementById("rain");
    var w=window.innerWidth;
    var h=window.innerHeight;
    can.width=w;
    can.height=h;
    //当浏览器宽高发生变化canvas宽高也跟着变化
    window.onresize=function () {
        w=window.innerWidth;
        h=window.innerHeight;
        can.width=w;
        can.height=h;
    };
    //用canvas绘制图形
    var canContent=can.getContext("2d");
    function Rain() {};
    //var rain=new Rain(); //生成一个雨滴
    //随机函数
    function randow(min,max) { //返回一个min和max之间的随机数
        return Math.random()*(max-min)+min;
    }
    Rain.prototype={
        init:function () { //雨滴的基本配置
            this.x=randow(0,w); //雨滴的初始位置
            this.y=0;
            this.v=randow(4,5); //雨滴的下落速度
            this.h=randow(0.8*h,0.9*h); //地面区域
            this.r=1; //水花的初始半径
            this.vr=randow(1,2);
            this.a=1; //模糊程度
            this.va=0.96; //模糊变化系数
        },
        //绘制雨滴的形状
        draw:function () {
            if (this.y<this.h) {
                canContent.fillStyle="#FE2727";
                canContent.fillRect(this.x,this.y,3,10);
            }else {
                canContent.strokeStyle="rgba(255,36,49,"+this.a+")";
                canContent.beginPath();
                canContent.arc(this.x,this.y,this.r,0,Math.PI*2);
                canContent.stroke();
            }
        },
        move:function () { //雨滴的下落
            if (this.y<this.h) {
                this.y+=this.v;
            }else {
                if (this.a>0.02) {
                    this.r+=this.vr;
                    if (this.r>50) {
                        this.a*=this.va;
                    }
                }else {
                    this.init();
                }
            }
            this.draw();
        }
    };
    var rainArray=[];
    //创建雨滴
    function createRain() {
        var rain=new Rain();
        rain.init();
        rain.draw();
        rainArray.push(rain); //将创建的雨滴存在数组中
    }
    for (var i=0; i<50; i++) {
        setTimeout(createRain,200*i);
    }
    //移动雨滴
    function moveRain() {
        canContent.fillStyle="rgba(248,223,131,0.05)";
        canContent.fillRect(0,0,w,h);
        for (var k=0; k<rainArray.length; k++) {
            rainArray[k].move();
        }
    }
    //setInterval(moveRain,1000/60)
    function run() {
        moveRain();
        setTimeout(run,1000/60);
    }
    run();
};