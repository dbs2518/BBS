function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

function ticketingInit() {
	const ticketingSn = getParameterByName('ticketingSn');
	const movieSeat = getParameterByName('movieSeat');
	const form1 = document.forms.ticketingform;
	const ticketingSnInput = form1.elements.ticketingSn;
	if(ticketingSn == "") {
	    return;
	} else {
	    ticketingSnInput.value = ticketingSn;
	    
	    const movieSeatInput = document.getElementById(movieSeat);
	    form1.elements.submit.value = '변경하기';
	    movieSeatInput.checked = true;
	}
}

$(function() {
	ticketingInit();
});