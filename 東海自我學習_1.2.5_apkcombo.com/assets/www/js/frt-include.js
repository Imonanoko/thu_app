
function includeHTML() {
  var z, i, elmnt, file, xhttp;
  /* Loop through a collection of all HTML elements: */
  z = document.getElementsByTagName("*");
  for (i = 0; i < z.length; i++) {
    elmnt = z[i];
    /*search for elements with a certain atrribute:*/
    file = elmnt.getAttribute("w3-include-html");
    if (file) {
      /* Make an HTTP request using the attribute value as the file name: */
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        //console.log('readyState=' + this.readyState);
        //console.log('status=' + this.status);
        if (this.readyState == 4) {
          //console.log('aaa');
          if (this.status == 200 || this.status == 0) {
            //console.log('bbb');
            elmnt.innerHTML = this.responseText;
            console.log('frt-include.js:replace file content');
          }
          if (this.status == 404) {
            //console.log('ccc');
            elmnt.innerHTML = "Page not found.";
          }
          /* Remove the attribute, and call this function once more: */
          elmnt.removeAttribute("w3-include-html");
          includeHTML();
        }
      }
      xhttp.open("GET", file, true);
      xhttp.send();
      /* Exit the function: */
      return;
    }
  }
}


