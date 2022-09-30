function loadXMLDoc(dname) {

    'use strict';

    let xhttp;
    let ActiveXObject;

    if (window.XMLHttpRequest) {

        xhttp = new XMLHttpRequest();
    } else {

        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }

    xhttp.open("GET", dname, false);
    xhttp.send("");
    
    return xhttp.responseXML;
}

function displayResult(source, styledoc) {

    'use strict';

    let xml;
    let xsl;
    let ex;
    let resultDocument;

    xml = loadXMLDoc(source);
    xsl = loadXMLDoc(styledoc);

    // code for IE
    if (window.ActiveXObject) {

        ex = xml.transformNode(xsl);
        document.getElementById("response").innerHTML = ex;
    }
    // code for Mozilla, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {

        const xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);
        resultDocument = xsltProcessor.transformToFragment(xml, document);
        document.getElementById("response").appendChild(resultDocument);
    }
}

function init() {

    'use strict';

    displayResult("resources/studioone.xml", "resources/studioone.xsl");
}

window.onload = init;