Markdown is a simple way to format text using plain characters. It allows you to create headings, bold or italic text, lists, links, and more without needing to learn complex coding languages. Markdown is a good thing to use because it helps you write clean and consistent documents that are easy to read and share across different platforms. Below are a few of the ways you can flavour your text all within a text document. Jekyll takes care of formatting this into the website for you.

<!------------>
<!--  TEXT  -->
<!------------>

# This is a heading 1 (biggest)

## This is a heading 2

### This is a heading 3

#### This is a heading 4 (smallest)

> This is a quote

**This is bold**

*This is italic*

***This is bold and italic***

~~This is strikethroughed~~

Unordered list
- Unordered list item 1
- Unordered list item 2

Ordered list
1. Ordered list item 1
2. Ordered list item 2

Check list
- [ ] Checkbox
- [x] Completed

[link text](https://example.com/)

---
<!-- That was a separator ^ -->

<!-- This, and that ^ are comments, not seen in the webpage page, just for you and I -->




<!------------>
<!-- IMAGES -->
<!------------>

<!-- Copy below for an image. It creates a row with a single column with an image that you specify in path="<image file>". Don't forget the file extension (.png or .jpg). title="<alt>" provides alt-text-->

<div class="row">
    <div class="col-sm mt-1 mt-md-0">
        {% include figure.html path="assets/img/" title="a photo" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

<!-- Say you want more than one column of photos (e.g. 2 side by side). Add another one of the middle div sections, and it will automatically resize to fit two in the space, etc. etc. -->

<div class="row">
    <div class="col-sm mt-1 mt-md-0">
        {% include figure.html path="assets/img/" title="a photo" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-1 mt-md-0">
        {% include figure.html path="assets/img/" title="a photo" class="img-fluid rounded z-depth-1" %}
    </div>
</div>



<!------------>
<!-- VIDEOS -->
<!------------>

<!-- Vimeo embed? Copy this, and replace <id> with the bit after ".com/". For example https://vimeo.com/682730121 <id> would be vimeo_id="682730121"  -->

<div class="row">
    <div class="col-sm mt-1 mt-md-0">
        {% include figure.html vimeo_id="<id>" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

<!-- YouTube embed? Copy this, and replace <id> with the bit after ".com/watch?v=". For example https://www.youtube.com/watch?v=gVKEM4K8J8A <id would be gVKEM4K8J8A -->

<div class="row" >
    <div class="col-sm mt-3 mt-md-0">
        <div class ="embed-responsive embed-responsive-16by9"><iframe src="https://www.youtube-nocookie.com/embed/<id>" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
    </div>
</div>