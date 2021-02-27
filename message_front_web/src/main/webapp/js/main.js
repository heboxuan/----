$(document).ready(function(){
 
    $("#topbanner .inner .n1").mouseover(function(){  
        $("#topbanner .inner .n1 .search").show();
        $("#topbanner .inner .n1").addClass("active");

    }).mouseout(function() {  
        $("#topbanner .inner .n1 .search").hide();
        $("#topbanner .inner .n1").removeClass("active")
    });
	
	$("#box").Tab({
		ChangeTime:4000,
		Obutton : true,
		Prev : ".prev1",
		Next : ".next1"
	}); 
/*time*/
var today; 
var date; 
today=new Date(); 
date=today.getFullYear()+"年"+(today.getMonth())+"月月度排行";
if(today.getMonth()==0){
	date=(today.getFullYear()-1)+"年"+(today.getMonth()+12)+"月月度排行";
}
//console.log(date);
$("#time1").html(date);
$("#time2").html(date);
	
});



function showmen2(n){
	for(var i=1;i<=5;i++){
		var curCon=document.getElementById("p2Aa_"+i);
		var curBtn=document.getElementById("p2Ab_"+i);
		if(n==i){
			curBtn.style.display="block";
			curCon.className="t01"
		}else{
			curBtn.style.display="none";
			curCon.className="";			
		}
	}
}


function doZoom(size)
{ document.getElementById('zoom').style.fontSize=size+'px' } 


function showmen_zs(n){
	for(var i=1;i<=4;i++){
		var curCon=document.getElementById("tt_"+i);
		var curBtn=document.getElementById("con_"+i);
		if(n==i){
			curBtn.style.display="block";
			curCon.className="t01"
		}else{
			curBtn.style.display="none";
			curCon.className="";			
		}
	}
}
function showmen_zs2(n){
	for(var i=1;i<=3;i++){
		var curCon=document.getElementById("tt2_"+i);
		var curBtn=document.getElementById("con2_"+i);
		if(n==i){
			curBtn.style.display="block";
			curCon.className="t01"
		}else{
			curBtn.style.display="none";
			curCon.className="";			
		}
	}
}
function showmen_zs3(n){
	for(var i=1;i<=3;i++){
		var curCon=document.getElementById("tt3_"+i);
		var curBtn=document.getElementById("con3_"+i);
		if(n==i){
			curBtn.style.display="block";
			curCon.className="t01"
		}else{
			curBtn.style.display="none";
			curCon.className="";			
		}
	}
}

/*20170714*/
$(document).ready(function(){

	$.ajax({
		type: "get",
		//url: "http://liuyan.people.com.cn/cache_data/newIndex_stat.jsonp",
		//url: "http://leaders.people.com.cn/liuyan_data/stat/newIndex_stat.jsonp",
		url: "https://messageboard.peopletech.cn/newIndex_stat.jsonp",
		cache: false,
		dataType: "jsonp",
		jsonp: "callback",
		jsonpCallback: "IndexStat",
		success: function(data) {
			//console.log(data);
			var answersNum = data['answersNum'];
			var yearAnswersNum = data['yearAnswersNum'];
			var totalAnswersNum = data['totalAnswersNum'];
			
			var threadsNum = data['threadsNum'];
			var yearThreadsNum = data['yearThreadsNum'];
			var totalThreadsNum = data['totalThreadsNum'];
			
			$("#answersNum").html(answersNum);
			$("#yearAnswersNum").html(yearAnswersNum);
			$("#totalAnswersNum").html(totalAnswersNum);
			
			$("#threadsNum").html(threadsNum);
			$("#yearThreadsNum").html(yearThreadsNum);
			$("#totalThreadsNum").html(totalThreadsNum);
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			console.log(XMLHttpRequest.status);
			console.log(XMLHttpRequest.readyState);
			console.log(textStatus);
		}
	});


})


/*20170720*/
$(document).ready(function(){
    $(".p2_right_df span").mouseover(function() {  
        $(".p2_right_df div.province").show();
        $(".p2_right_df span").attr('id','active');

    }).mouseout(function() {  
        $(".p2_right_df span").attr('id','active');
    });

    $(".p2_right_df div.province").mouseover(function(){  
        $(".p2_right_df div.province").show();
        $(".p2_right_df span").attr('id','active'); 
    }).mouseout(function() {  
        $(".p2_right_df div.province").hide();
        $(".p2_right_df span").attr('id',''); 
    });
	
function getFid(){
	$.ajax({
		type: "get",
		//url: "../../../../../../cms/getFidByRequestIP-callback=getFid"/*tpa=http://liuyan.people.com.cn/cms/newIndex_ipthreads_fid.php*/,
		url: "//liuyan.people.com.cn/cms/getFidByRequestIP?callback=getFid",
		cache: false,
		dataType: "jsonp",
		jsonp: "callback",
		jsonpCallback: "getFid",
		async : false,
		success: function(data) {
			Fid = data.fid;
			//console.log(Fid);
			ShuJu(Fid);
			//localHtml			
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			console.log(XMLHttpRequest.status);
			console.log(XMLHttpRequest.readyState);
			console.log(textStatus);
		}
	});
}
getFid();

function ShuJu(localIp) {	
	var localIp = localIp;
	var localUrl = "https://messageboard.peopletech.cn/new_threads_"+ localIp +".jsonp"
	console.log(localUrl);
	$.ajax({
		type: "get",
		url: localUrl,
		cache: false,
		dataType: "jsonp",
		jsonp: "callback",
		jsonpCallback: "IndexThreads",
		success: function(data) {
			//console.log(data);
			//localHtml
			var localHtml='';
			$.each(data,function(i,n){
				localHtml += '<li><b><a href="'+ data[i].threadUrl +'" target="_blank">'+ data[i].subject +'</a></b><em class="grey3">'+ data[i].forumName +'<img src="../images/icon08.gif"/*tpa=http://liuyan.people.com.cn/img/MAIN/2016/12/117070/images/icon08.gif*/ />'+ data[i].dateline +'</em></li>';
			});
			$(".list_01").html(localHtml);			
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			console.log(XMLHttpRequest.status);
			console.log(XMLHttpRequest.readyState);
			console.log(textStatus);
		}
	});
}
//ShuJu(4);

$(".p2_right_df div.province a").click(function(){
	var localIp = $(this).attr('value');
	var localName = $(this).html();
	console.log(localIp,localName);
	ShuJu(localIp);
	$(".localName").html(localName);
	//$(".p2_right_df span").html(localName);
})
	
	
});


