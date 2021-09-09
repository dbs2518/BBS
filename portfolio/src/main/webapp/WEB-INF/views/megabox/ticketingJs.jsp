<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
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
	    
	    const movieName = "${ticketDTO.movieName}";
	    const movieDay = "${ticketDTO.movieDay}";
	    const movieTime = "${ticketDTO.movieTime}";
	    console.log(movieName);
	    console.log(movieDay);
	    console.log(movieTime);
	    
	    $("#movieName").val(movieName).attr("selected", true);
	    $("#movieDay").val(movieDay).attr("selected", true)
	    $("#movieTime").val(movieTime).attr("selected", true);
	    
	    ticketingSeatInit();
	    movieSeatInput.checked = true;
	}
}

function ticketingSeatInit() {
	const movieName = $("#movieName option:selected").val();
	const movieDay = $("#movieDay option:selected").val();
	const movieTime = $("#movieTime option:selected").val();
    
    $("input[name=movieSeat]").attr("disabled", false);
    $("input[name=movieSeat]").attr("checked", false);
    
	let data = {
		"movieName" : movieName,
		"movieDay" : movieDay,
		"movieTime" : movieTime
	}
	
	if(movieName == "") {
		return;
	} else {
		if(movieDay == "") {
			return;
		} else {
			if(movieTime == "") {
				return;
			} else {
	            $(".form_left").addClass("formSelected");
				$.ajax({
                    type: "POST",
                    data: data,
                    dataType: "json",
                    url: "ticketingInit",
                    success: function(result){
                        for(var i = 0; i < result.length; i++) {
	                        let movieSeat = result[i].movieSeat;
                            $("#" + movieSeat).attr("disabled", true);
                        }
                    },
                    error: function(){
                        alert("err");
                    }
                });
			}
		}
	}
}

$("#movieName").on('change', function() {
	ticketingSeatInit();
});

$("#movieDay").on('change', function() {
	ticketingSeatInit();	
});

$("#movieTime").on('change', function() {
	ticketingSeatInit();	
});

$(function() {
	ticketingInit();
});
</script>