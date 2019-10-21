window.onload=function () {
    var cartTable = document.getElementById('cartTable');
    var tr = cartTable.children[1].rows;
    var checkInput = document.getElementsByClassName("check");
    var checkAllInput = document.getElementsByClassName("check-all");
    var selectedTotal = document.getElementById("selectedTotal");
    var priceTotal = document.getElementById("priceTotal");
    var deleteAll=document.getElementById("deleteAll");

// 计算
    function getTotal() {
        var seleted = 0;
        var price = 0;
        for (var i = 0, len = tr.length; i < len; i++) {
            if (tr[i].getElementsByTagName('input')[0].checked) {
                seleted += parseInt(tr[i].getElementsByTagName('input')[1].value);
                price += parseFloat(tr[i].cells[5].innerHTML);
            }
        }
        selectedTotal.innerHTML = seleted;
        priceTotal.innerHTML = price.toFixed(2);
    }
// 小计
    function getsubTotal(tr) {
        var tds=tr.cells;
        var price=parseFloat(tds[3].innerHTML);
        var count=parseInt(tr.getElementsByTagName('input')[1].value);
        var subTotal=parseFloat(price*count);
        tds[5].innerHTML=subTotal.toFixed(2);
    }


// 全选
    for (var i= 0, len = checkInput.length; i < len; i++) {
        checkInput[i].onclick = function () {
            if (this.className === 'check-all check') {
                for (var j = 0; j < checkInput.length; j++) {
                    checkInput[j].checked = this.checked;

                }
            }
            if (this.checked == false) {
                for (var k = 0; k < checkAllInput.length; k++) {
                    checkAllInput[k].checked = false;
                }

            }
            getTotal();
        }
    }

// 改变商品数目
    for (var i=0;i<tr.length;i++){
        tr[i].onclick=function(e){
            e=e||window.event;
            var el=e.srcElement;
            var cls=el.className;
            var input=this.getElementsByTagName('input')[1];
            var val=parseInt(input.value);
            switch (cls){
                case 'add':
                    input.value=val+1;
                    getsubTotal(this);
                    break;
                case 'reduce':
                    if(val>1){
                        input.value=val-1;
                    }else{
                        alert("商品数目不能小于1")
                    }
                    getsubTotal(this);
                    break;
// 删除
                case 'delete':
                    var conf=confirm('确定要删除该商品吗');
                    if(conf){
                        this.parentNode.removeChild(this);
                    }
                    break;
                default:
                    break;

            }
            getTotal();
        };

        // 从键盘输入商品数目
        tr[i].getElementsByTagName('input')[1].onkeyup=function () {
            var val=this.value;
            var tr=this.parentNode.parentNode;
            getsubTotal(tr);
            getTotal();

        }
    }


    // 删除商品

    deleteAll.onclick=function(){
        if(selectedTotal.innerHTML!='0'){
            var conf=confirm('确定删除选定的商品吗');
            if(conf){
                for (var i=0;i<tr.length;i++){
                    var input=tr[i].getElementsByTagName('input')[0];
                    if(input.checked){
                        tr[i].parentNode.removeChild(tr[i]);
                        i--;
                    }
                }
                selectedTotal.innerHTML = 0;
            }
        }

    }
};
