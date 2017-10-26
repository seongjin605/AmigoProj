$(document).ready(function(){
	/* 동호회 제목 체크 */

	$("#title").stop().blur(function(){
		 checkValue(this,"이름을 입력하세요",2)
	})
	
	/* 소개글체크 */
	$("#content").stop().blur(function(){
		 checkValue(this,"소개글을 입력하세요",5)
	})

	
})

function checkValue(sel,errorStr,condition){
	 var value =$(sel).val();
	 var $sel_parent = $(sel).parent();
	 
	 if(value == '' || value.length < condition)
		 errorCheckEffect("이름을 입력하세요",$sel_parent);
	 else
		 successCheckEffect($sel_parent);
}