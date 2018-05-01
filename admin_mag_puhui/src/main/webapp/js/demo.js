$(function(){
		



$("#selector-province-result").click(function(event) {
  $(this).next(".selector-box").show();
 
});

$("#selector-province-box li").click(function(event) {
  $(this).parent(".selector-box").hide();
  $("#selector-province-result").text($(this).text());


 
});



$(".large_ul li").click(function(event) {
 $(this).addClass('current').siblings('li').removeClass('current');
 $(".detail-banner .detail-banner_list").eq($(this).index()).addClass('show_cur').siblings('.detail-banner_list').removeClass('show_cur');
});


$(".img-hover li").mouseover(function(event) {
$(this).addClass('img_cur').siblings('li').removeClass('img_cur');
$(".preview-main-img img").attr("src",$(this).find("img").attr("src"));
});



$(".riig_itgm").click(function(event) {
  
  if($(this).hasClass("cur_lismg")){
    $(this).removeClass('cur_lismg');
    $(this).siblings('.naim_play').css("height",25+"px");
  }else{
  $(this).addClass('cur_lismg');
    $(this).siblings('.naim_play').css("height","auto");

  }


});


$("#img_gls span").click(function(event) {
  $(this).addClass('cur').siblings('span').removeClass('cur');

  $(this).parents(".whitne_center").siblings('li').find("#shenggouw_img").attr("src",$(this).attr("data_img"));


});




function zonwwFun2(tadgh,tahhcenter){

	$(tadgh).mousemove(function(event) {
	$(this).addClass('cur').siblings().removeClass('cur');
	$(tahhcenter).eq($(this).index()).addClass('tab_cur').siblings().removeClass('tab_cur'); });

}
zonwwFun2(".tab_hd a",".tab_center .tab_in");



   $("#back-top").click(function(event) {
                $("html,body").animate({"scrollTop" : 0},300);
            });

});