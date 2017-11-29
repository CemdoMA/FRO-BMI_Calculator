/**
 * Created by cemde on 2-6-2017.
 */

function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}

var lengte = document.getElementById("lengte");
var gewicht = document.getElementById("gewicht");
document.getElementById("submit").addEventListener("click", ()=>{
    ajax(gewicht.value, lengte.value);
});

function ajax(gewicht, lengte) {
    let debug = true;
    if (window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    let controlScript = "BMI.php";
    let httpString = controlScript + "?gewicht=" + gewicht + "&lengte=" + lengte;
    let httpResponse = "";

    if(debug) console.log(httpString);
    xmlhttp.open("GET", httpString, true);
    xmlhttp.send();
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
            if (debug) console.log("http response = " + xmlhttp.responseText);
                httpResponse = xmlhttp.responseText;
                document.getElementById('result').innerHTML = httpResponse;

        }
    }
}

function showUser(str) {
    if (str == "") {
        document.getElementById("txtHint").innerHTML = "";
        return;
    } else {
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("txtHint").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","getuser.php?q="+str,true);
        xmlhttp.send();
    }
}