// DOM Manipulation Challenge

// I did this challenge with Brian and the challenge took us [1.25] hours.

/* Reflection

What did you learn about the DOM?

I learned that HTML pages are modified easily with DOM. Before we were using Chrome Dev Tools, which was cool and great tool to see immediate effects on the page. I am now thinking that many of different colors, feautures and displays of HTML pages that comes from DOM.

What are some useful methods to use to manipulate the DOM?

I have learned getElementById, getElementsByTagName, getElementsByClassName and appendChild methods.
getElementById("id") -> method accesses teh first element with the specified id.
getElementsByTagName("tagname") -> method returns all elements in the document with the specified tag name.
getElementsByTagName("tagname")[0] -> you can also get the 1st element of the tag. You can even find out the length [0].length or change the content [0].innerHTML ="text" or [0].textContent = "text"
getElementsByClassName -> get all elements with the specified class name
appendChild -> appends a new variable or set the values of the existing document. For instance, you can think of appendChild as adding more items into the listed item.

*/

// Release 1:

document.getElementById("release-0").classList.add("done");
// document.getElementById('release-0').className = "done";

// Release 2:

document.getElementById('release-1').style.display = 'none';


// Release 3:

// document.getElementById('test').className = "done";
document.getElementsByTagName('h1')[0].textContent = 'I completed release 3.';


// Release 4:

document.getElementById('release-3').style.backgroundColor = '#955251';


// Release 5:

var selected_elements = document.getElementsByClassName('release-4')

for (var i = 0; i < selected_elements.length; i++) {
  selected_elements[i].style.fontSize = '2em';
};

// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));
