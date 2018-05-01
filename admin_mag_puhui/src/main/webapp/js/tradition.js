
$(function(){


//    var gunnaio=0;
//    var gunnaio2=$("#gunlgo span a").length;
// $("#gunlgo span").append($("#gunlgo span a").eq(0).clone());
//    function tiulengun(){
//       if(gunnaio<gunnaio2-1){
//             gunnaio++;
//            $("#gunlgo span").animate({"top":-22 * gunnaio});
//         }else{  gunnaio=0;   $("#gunlgo span").animate({"top":-22 * gunnaio2},500,function(){ $(this).css("top",0);   }) }


//    }

//   setInterval(tiulengun, 3000);



//    $(window).scroll(function(){
//             var Y = $(window).scrollTop();

//             if(Y>560){	$(".right-nav").removeClass('hide'); }else{ $(".right-nav ").addClass('hide');} 


//             if(Y>$(".tuijiannav").offset().top){	$(".leftbox-ul,.rightbox3").addClass('m_fixeds'); }else{ $(".leftbox-ul,.rightbox3").removeClass('m_fixeds');} 


          
//         });





      var bTime =5000;

        $(".imglist_baner ul li:first()").addClass('first');
        var imglist_baner=$(".imglist_baner li");
        function imgFun(){

            var nowimg = 0;
            //閸欒櫕瀵滈柦顔荤皑娴狅拷
            var imgCd = imglist_baner.length;
            for(var i=0; i<imgCd; i++){ $(".drop ul").append("<li></li>"); }
            $(".drop ul li:first()").addClass('cur');
            //alert(imgCd);
            $(".but_right").click(rightFunc2);

            function rightFunc2(){
                //alert(1);
                fadeOutFunc();
                nowimg++;
                if(nowimg>imgCd-1){
                    nowimg = 0;
                }
                fadeInFunc();
                dropFunc();
            }

            //瀹革附瀵滈柦顔荤皑娴狅拷
            $(".but_left").click(function(){
                fadeOutFunc();
                nowimg--;
                if(nowimg<0){
                    nowimg = imgCd-1;
                }
                fadeInFunc();
                dropFunc();
            });

            //鐏忓繐娓鹃悙瑙勫瘻闁筋喕绨ㄦ禒锟�
            $(".drop li").click(function(){

                fadeOutFunc();
                nowimg = $(this).index();
                fadeInFunc();
                dropFunc();


            });

            function dropFunc(){
                $(".drop li").eq(nowimg).addClass("cur").siblings().removeClass("cur");
            }

            function fadeOutFunc(){
                imglist_baner.eq(nowimg).fadeOut(1000);
            }
            function fadeInFunc(){
                imglist_baner.eq(nowimg).fadeIn(1000);
            }



            var imgSet2 = setInterval(rightFunc2,bTime);
            $(".banner").mouseenter(function(){
                clearInterval(imgSet2);
                $(".but").show();

            });

            $(".banner").mouseleave(function(){
                clearInterval(imgSet2);
                imgSet2 = setInterval(rightFunc2,bTime);
                $(".but").hide();
            });

        }
        imgFun();






  




});



