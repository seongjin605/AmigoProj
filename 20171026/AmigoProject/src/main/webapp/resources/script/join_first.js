$(document).ready(function(){
	$("#all-check").click(function(){	
		agreeCheck(this);
	})
	
	$("#first-check").click(function(){
		toggleColor(this);
	})	
	
	$("#second-check").click(function(){
		toggleColor(this);
	})
	
	$("#third-check").click(function(){
		toggleColor(this);
	})

})

function agreeCheck(sel){
	if($(sel).hasClass('change_color'))
		$(".fa").removeClass('change_color');

	else
		$(".fa").addClass('change_color');	
}

function toggleColor(sel){
	$(sel).toggleClass("change_color")
}