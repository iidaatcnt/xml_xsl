JavascriptでXML操作

デモ用データファイル：books.xml

01. index_01.html
  document.getElementById()

02. index_02.html
  document.getElementsByTagName()

03. index_03.html
  xhttp.open("GET", "books.xml", true);
      +
  txt = xmlDoc.getElementsByTagName("title")[0].childNodes[0].nodeValue;

04. index_04.html
  xmlDoc = parser.parseFromString(text, "text/xml");
      +
  xmlDoc.getElementsByTagName("title")[0].childNodes[0].nodeValue;