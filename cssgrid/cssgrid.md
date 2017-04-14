class: inverse, hljs-monokai

# CSS Grid

## When to use Grid

Grid is for 2 dimensional layout, both columns and rows

## When to use Flexbox

Flexbox is for 1 dimensional layout, a column or a row

## Where [can I use](http://caniuse.com/?utm_campaign=CSS%2BLayout%2BNews&utm_medium=email&utm_source=CSS_Layout_News_87#feat=css-grid) it

- All modern browsers
  - Chrome 57
  - Firefox 52
  - Opera 44
  - Safari 10.1 (incl. iOS)
  - Edge (with ms-prefix)
  - IE 10 (old Syntax)

---
class: inverse

# Demo

- [Demo](demo.html)

---
class: inverse

# New Terms

- grid-template-rows
- grid-template-columns
- grid-template-areas
- grid-row
- grid-column
- grid-gap
- fr - fraction-unit

---
class: inverse

# Many ways to write

- grid-template-columns: 200px 1fr 1fr minmax(200px, 1fr)
- grid-template-rows: repeat(4, 400px)
- grid-row: 2 / span 5
- grid-column: first / last
- grid-gap: 1em 2em
-

---
class: inverse

# Useful helpers

- repeat - Don't repeat your self
- minmax
- min-content
- max-content
- auto-fill
- auto-fit

---
class: inverse

# Links

- [W3C - The official spec](https://www.w3.org/TR/css3-grid-layout/)
- [Chris House - A complete guide for CSS Grid
layout](http://chris.house/blog/a-complete-guide-css-grid-layout/)
- [CSS grid labs by Jen Simmons](http://labs.jensimmons.com/)
- [Grid Layout CodePen](http://codepen.io/collection/DgwjNL/)

