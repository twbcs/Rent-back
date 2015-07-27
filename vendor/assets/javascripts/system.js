// JavaScript Document
//以下是滚动图片代码
var prevNext;
var left, width = 158, num;
var bb;
var t;
$(function() {
	num = $(".InsCenter ul li").length;
	left = parseInt($(".InsCenter ul").css("left")) || 0;
	var mWidth = width * num;


	prevNext = function(type) {
		var l = parseInt($(".InsCenter ul").css("left"));
		if (type == "prev") {
			if (l < 0) {
				$(".InsCenter ul").css("left", -150);
				$(".InsCenter ul").prepend($(".InsCenter ul li:last"));
				$(".InsCenter ul").animate({
					"left" : 0
				}, 500);
			} else {
				$(".InsCenter ul").animate({
					"left" : 0
				}, 500);
			}
		} else if (type == "next") {
			$(".InsCenter ul").animate({
				"left" : -150
			});
		}
	}
	var c;
	
	bb = function() {
		c = parseInt($(".InsCenter ul").css("left"))||0;
		if (c < -150) {
			$(".InsCenter ul li:first").appendTo($(".InsCenter ul"));
			c = 0;
		}
		//console.log(c);
		$(".InsCenter ul").css("left", c - 1);
	}
	t = setInterval("bb()", 30);
	$(".InsCenter ul").hover(function() {
		clearInterval(t);
	}, function() {
		t = setInterval('bb()', 30);
	});
	$("#prev,#next").mousedown(function() {
		//clearInterval(t);
	});
	$("#prev,#next").mouseup(function() {
		//t = setInterval('bb()', 30);
	});
	$("#prev").click(function() {
		prevNext("prev");
	});
	$("#next").click(function() {
		prevNext("next");
	});
});







var tiFoStTim12='<span>';
var tiFoEnTim12='</span>';
var ob1BgTim12="";
var ob0Tim12,ob1Tim12,ob2Tim12;

function writeTim12(obj,mes) {
	if (document.all || document.getElementById) obj.innerHTML=mes;
	else if (document.layers) {
		obj.document.open();
		obj.document.write(mes);
		obj.document.close();
	}
}
function setBgCoTim12(obj,color) {
	if (document.all || document.getElementById) obj.style.backgroundColor=color;
	else if (document.layers) obj.bgColor=color;
}

function tokiTim12(){
	var dayTim,yeTim,moTim,daTim,jiTim,funTim,byoTim;
	dayTim=new Date();
	yeTim=dayTim.getFullYear();
	moTim=dayTim.getMonth()+1;
	daTim=dayTim.getDate();
	jiTim=dayTim.getHours();
	funTim=dayTim.getMinutes();
	byoTim=dayTim.getSeconds();
	if (jiTim <= 9)
		jiTim = "0" + jiTim;
	if (funTim <= 9)
		funTim = "0" + funTim;
	if (byoTim <= 9)
		byoTim = "0" + byoTim;
	writeTim12(ob2Tim12,tiFoStTim12+yeTim+"/"+moTim+"/"+daTim+" "+jiTim+":"+funTim+":"+byoTim+tiFoEnTim12);
	setTimeout("tokiTim12()",1000);
}

function pretokeiTim12() {
	if (document.all || document.getElementById || document.layers) {
		if (document.all) {
			ob0Tim12=document.all("FrRTim12");
			ob1Tim12=document.all("FrTim12");
			ob2Tim12=document.all("MaTim12");
		}
		else if (document.getElementById) {
			ob0Tim12=document.getElementById("FrRTim12");
			ob1Tim12=document.getElementById("FrTim12");
			ob2Tim12=document.getElementById("MaTim12");
		}
		else if (document.layers) {
			ob0Tim12=document.layers["FrRTim12"];
			ob1Tim12=ob0Tim12.document.layers["FrTim12"];
			ob2Tim12=ob1Tim12.document.layers["MaTim12"];
		}
		if (ob1BgTim12!="") setBgCoTim12(ob1Tim12,ob1BgTim12);
		tokiTim12();
	}
}



