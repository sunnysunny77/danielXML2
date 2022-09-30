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

    let XSLTProcessor;
    const xml = loadXMLDoc(source);
    const xsl = loadXMLDoc(styledoc);
    const response = document.getElementById("response");

    // code for IE
    if (window.ActiveXObject) {

        const ex = xml.transformNode(xsl);
        response.innerHTML = ex;
    }
    // code for Mozilla, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {

        const xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);

        const resultDocument = xsltProcessor.transformToFragment(xml, document);
        response.appendChild(resultDocument);
    }
}

function init() {

    'use strict';

    displayResult("resources/studioone.xml", "resources/studioone.xsl");
}

window.onload = init;