var xmlHttp



function filter() {
    xmlHttp = GetXmlHttpObject()
    if (xmlHttp == null) {
        alert("Browser does not support HTTP Request")
        return
    }

    var str = getValueFilter()

    var url = "filter?"
    url = url + str
    url = url + "&sid=" + Math.random()
    url = url + "&page=" + getParameter("page")
    xmlHttp.onreadystatechange = stateChanged
    xmlHttp.open("GET", url, true)
    xmlHttp.send(null)
}

function stateChanged() {
    if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
        document.getElementById("list-concert").innerHTML = xmlHttp.responseText;
    }
}

function GetXmlHttpObject() {
    var xmlHttp = null;
    try {
        // Firefox, Opera 8.0+, Safari
        xmlHttp = new XMLHttpRequest();
    } catch (e) {
        //Internet Explorer
        try {
            xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
    }
    return xmlHttp;
}

function getValueFilter() {
    var ville = document.getElementById("ville").value
    var tags = document.getElementById("tags").value
    var prix = document.getElementById("prix").value
    var dateDeb = document.getElementById("dateDeb").value
    var dateFin = document.getElementById("dateFin").value
    var str = '';
    if (ville !== 'Select Ville') {
    	str += 'ville=' + ville
    	str += '&'
    }
    if (tags !== 'Select Tags') {
    	str += '&tags=' + tags
    	str += '&'
    }
    if (prix !== 'Select Prix') {
    	str += '&prix=' + prix
    	str += '&'
    }
    if (dateDeb !== '') {
    	str += '&dateDeb=' + dateDeb
    	str += '&'
    }
    if (dateFin !== '') {
    	str += '&dateFin=' + dateFin
    }
    return str;
}

function getParameter(val) {
    var re = new RegExp(val + "=([^&#]*)", "i")
    var a = re.exec(location.href)
    if (a == null)
        return null;
    return decodeURI(a[1]);
}