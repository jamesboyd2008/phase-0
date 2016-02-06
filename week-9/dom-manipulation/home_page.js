// DOM Manipulation Challenge


// I worked on this challenge David Valencia.


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:

document.getElementById('release-0').className += 'done';


// Release 2:

document.getElementById('release-1').style.display = "none";


// Release 3:

document.getElementsByTagName("h1")[0].innerHTML = "I completed Release 2.";

// Release 4:

document.getElementById('release-3').style.backgroundColor = 955251;


// Release 5:

var something = document.getElementsByClassName('release-4');
for (var i = 0; i < something.length; i ++) {
  something[i].style.fontSize = "2em";
}
// var something = document.querySelectorAll('.release-4');
// for (var i = 0; i < something.length; i ++) {
//   something[i].style.fontSize = "2em";
// }


var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

/* REFLECTION

What did you learn about the DOM?
The DOM is, to the best of my knowledge, an idea.  It's a map of a website or
document.  In this challenge, we manipulated a DOM with some JavaScript.  The
syntax was the trickiest part, for me.

What are some useful methods to use to manipulate the DOM?
document.getElementsByClassName(), document.getElementById(), and
document.getElementsByTagName() are three methods we used to manipulate the DOM.
Syntax was the difficult part.  getElementsByClassName() returns an array, too.
*/
