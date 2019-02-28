### Assignment 3 (due February 12)
1. Read the following sections of the [CSS Tutorial on w3schools.com](https://www.w3schools.com/css/css_syntax.asp).
  - CSS Syntax
  - CSS How To
  - CSS Colors
  - CSS Backgrounds
  - CSS Height/Width
  - CSS Box Models
  - CSS Links
  - CSS Position
  - CSS Float
  - CSS Combinators
  - CSS Pseudo-class
2. Take Post-class Quiz 2 on Blackboard.
3. Use the [W3C Markup Validation Service](http://validator.w3.org) to validate the GitHub page you published in Assignment 2. 
4. Download and unzip [``info.zip``](https://github.com/postmda/MDA610/blob/master/assignments/assignment3/info.zip). 
5. Use Google Chrome to view ``courseinfo_before.html``. Right click in Chrome and select "View page source" to view the HTML source code.
6. Next, click the link that refers to the external CSS file ``normalize.css`` to view the CSS code. 
7. Rename ``courseinfo_before.html`` as ``courseinfo.html`` and embed the following CSS rule sets in the ``head`` section of the HTML document. 
  - For any ``a`` element, the font is bold.
  - For any ``a`` element assigned to the "accessed" class or any link that has been visited, the font color is set to gray. 
  - For any link that hasn't been visited, the font color is set to lime. 
  - For any unordered list, the font color is set to olive.
  - For any ``p`` element or any ordered list, the font size is 80% of the size of its parent element.
  - For any ``em`` element, the font is bold.
  - Any ``img`` element that is a descendant of a ``header`` element is floated left. 
  - For any ``h2`` element that is a descendant of a ``header`` element, the font-size is 90% of the size of its parent element, the font color is set to green, and the text is center-aligned. 
  - For the ``main`` element, no floating element is allowed on its left.
  - For any ``h1`` element that is a descendant of the ``main`` element, the font size is set to 170% of the size of its parent element. 
  - For any ``h2`` element that is a descendant of the ``main`` element, the font size is set to 130% of the size of its parent element. 
  - For any ``p`` element that is a descendant of the ``main`` element and assigned to the "indent" class, the first line of the text is indented by 2 em.
  - The element with an id of "content" is floated left. The width of the content area is set to 45% of the containing block, and the margin is set to 1%.  
  - The element with an id of "proglangs" is floated right. The width of the content area is set to 45% of the containing block, and the margin is set to 1%.   
  - For any ``p`` element that is a descendant of a ``footer`` element, the font size is 60% of the size of its parent element, the text is center-aligned, and the font color is set to blue. 
8. Move all CSS rules in the ``head`` section to an existing external CSS file ``appearance.css`` inside the ``styles`` folder. In ``courseinfo.html``, uncomment the link that refers to ``appearance.css``.
9. Use the [W3C CSS Validation Service](http://www.css-validator.org) to validate the ``appearance.css`` file.  
10. Use the GitHub repository you created for Assignment 2. Create a folder in your repository that will serve as the container folder for your solution to this assignment. For example, you can call it `week3_solution`. Move the HTML document ``courseinfo.html``, the image file ``coding.jpg`` and the ``styles`` folder to this container folder. Make sure that you can publish the web page online. Finally, email the instructor the URL of the web page before the class on Tuesday, February 12. 