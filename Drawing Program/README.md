# App-Development
Apps to Learn and Demonstrate Building Skills

Purpose:
- GUI Design & Ratios
- Review Mouse and Canvas interactions: buttons (see 3x3 Home Screen Project)
- Review Booleans with single line IF, IF-Else, IF-elseIF-Else

Resources and Websites for Ideas
- https://processing.org/reference/
- https://processing.org/examples/

---

Case Study: for drawing program but also applies to music program
- layout: virutal paper, buttons
- functions and behaviours for buttons & tools
- overall workflow describing what a user has to do to interact with virtual paper

*CAUTION*: music case study has more requirements and minimalist goal

Typing Beginning Parts of Program: answering how a mouse or finger (touch screen) and simulate drawing tools

---

Processing.org has examples
- https://processing.org/examples/
- Search Drawing: https://processing.org/examples/continuouslines.html
  Other code uses ideas and math that is complicated

Addtional Examples of how mousePressed() can communicate with draw()
- strokeWieght(brushSize); //populate brushsize in mousePressed but use strokeWeight() in draw()
- "colouring book behaviour": load an image into the "button" for drawing as a background to draw overtop of, using image() in mousePressed where the rect() parameters for the background image() is the rect() for drawing
  - this might need to be a procedure passing parameters to reuse the image code
- another?

---

Example Expectations for the Case Study
- Drawing Tools: lines, shapes, complex shapes, images
  - Includes extra parameters changing how the function (i.e. line) looks, for example not a solid line
  - Include  other functions that influence like colour, stroke weight, outline, etc.
- Erasing Tools: "drawing the background colour" with similar effects to the drawing tools
  - advanced drawing techniques like smudging or shading can be mimicked here
- Quit Button
- New Paper Button
- Music Button
- Optional: background images like a colour book

---
