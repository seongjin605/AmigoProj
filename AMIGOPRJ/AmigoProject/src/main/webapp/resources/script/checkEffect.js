function successCheckEffect($password_parent){
	$password_parent.children('.input_check').text("")
	$password_parent.children('.fa').addClass('view');
}

function errorCheckEffect(str,$password_parent){
	
	$password_parent.children('.fa').removeClass('view');
	$password_parent.children('.input_check').text(str).css("color","red");
}