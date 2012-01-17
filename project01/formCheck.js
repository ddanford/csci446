function checkOption(){
	var feeling = document.getElementById('youfeel').value;
	if( feeling == '' || !feeling ){
		alert("You must feel something!");
		return false;
	}
}