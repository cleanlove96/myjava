/**
 * Created by jiangshan on 2018/5/29.
 */

$(function(){
    $("#MyCarousel").carousel({
        interval:2000
    });

    var i=0;
    for(;i<$(".campus a").length;i++){
         $(".campus a").eq(i).attr("title",$(".online_yin").eq(i).text());
    }
    
});

/*获取系统时间*/
function getTime(){
    var date = new Date();
    var year = date.getFullYear();
    var month = trans(date.getMonth() + 1);
    var day = trans(date.getDate());
    var hours = trans(date.getHours());
    var minutes = trans(date.getMinutes());
    var seconds = trans(date.getSeconds());
    var time = year +"年"+ month +"月"+ day +"日"+ hours +"时"+ minutes +"分"+ seconds+"秒";
    document.getElementById("getTime").innerHTML=time;
}
/*动态显示时间*/
function qw(){
    window.setInterval("getTime()",1000);
}
/*将时间格式化*/
function trans(canshu){
    var result = canshu<10?"0"+canshu:canshu;
    return result;
}
