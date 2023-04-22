---
layout: post
title: "💎 jekyll + chatgpt"
seo_title: "💎 jekyll + chatgpt"
date: 2023-04-22 00:00:00-0000
description: supercharged blog learning
tags: open-source website
related_posts: false
img: /assets/img/jekyll.png
---
## Summary
I've been learning more Jekyll-related things like Ruby, some new Markdown tricks, and the web trio to make a nicer site. ChatGPT has been really helpful in moving towards a working understanding of how I can edit the template that I'm using ([al-folio](https://github.com/alshedivat/al-folio)). It takes a fair amount of time to engineer prompts, but it helps that I know generally what the code I want should perform.

<br>

## Code Blocks
For example, I wanted to edit the way that code blocks were rendered in my recent [blog post](/blog/2023/north-star-on-linux). One thing led to another and I ended up trying to render codeblocks straight from files in my `/assets/` folder instead of adding the code to the `.md` file. This way, if I needed to update the code (in this case, `.json` configuration files), I could upload an update to my site folder via a git commit. 

This was achieved by some Ruby code that ChatGPT generated that rendered the contents of the file within the correct HTML tags, generating the code block with a Liquid template called `code_block.html`.


<br>

## Gist Code Blocks
After a couple of hours of co-engineering 🤔, I ended up deciding to host the file on Gist, and prompting ChatGPT to edit the code, which it "decided" to do by writing a Ruby plugin. Brilliant! A later iteration added an error fallback in the event that I was being rate-limited by GitHub's API.


{% raw %}
```rb
module Jekyll
  class GistTag < Liquid::Tag
    def initialize(tag_name, input, tokens)
      super
      @gist_id = input.strip
    end

    def render(context)
      uri = URI("https://api.github.com/gists/#{@gist_id}")
      response = Net::HTTP.get(uri)

      if response.include?("API rate limit exceeded")
        return "`Error: API rate-limited by GitHub, follow link instead`"
      end

      json = JSON.parse(response)

      # Extract the first file from the gist
      filename, file = json['files'].first

      # Capture the file contents as a string
      captured = Liquid::Template.parse("{% capture gist_content %}#{file['content']}{% endcapture %}").render(context)

      # Build the code block with the captured contents and custom data attribute
      code_block = Liquid::Template.parse("{% highlight #{file['language']} %}{{ gist_content }}{% endhighlight %}").render(context)

      # Wrap the code block in a div with the correct classes and custom data attribute
      code_block = "<div class='language-#{file['language'].downcase} highlighter-rouge' data-gist-url='https://gist.github.com/#{json['owner']['login']}/#{@gist_id}'>#{code_block}</div>"

      # Return the generated code block
      code_block
    end
  end
end

Liquid::Template.register_tag('gist', Jekyll::GistTag)
```
{% endraw %}

This allows me to add the following tag to my `.md` posts:

{% raw %}
```md
{% gist 3b7b257b535b3dd6fa7b53ad7e453ed0 %}
```
{% endraw %}

and have it render in a native Jekyll codeblock, using `rouge` and `highlight`.

{% gist 3b7b257b535b3dd6fa7b53ad7e453ed0 %}

<br>

## Link to Gist button

Additionally, I prompted ChatGPT to create a button in the top right hand corner of Gist codeblocks that links to their page, in the same style as the copy to clipboard button:

```js
var gistUrl = codeBlock.closest('div').dataset.gistUrl;
if (gistUrl) {
    var githubButton = document.createElement('button');
    githubButton.className = 'github';
    githubButton.type = 'button';
    githubButton.ariaLabel = 'View Gist on GitHub';
    githubButton.innerHTML = '<i class="fab fa-github"></i>';
    codeBlock.append(githubButton);

    // open GitHub link to view Gist
    githubButton.addEventListener('click', function () {
    window.open(gistUrl, '_blank');
    });
}
```

<br>

## Advantages compared to `GistID.js`

I think this suits the styling of the website more than the native `GistID.js` codeblock, which is provided by sourcing `https://gist.github.com/<githubUser>/<gistID>.js` for example.  The `jekyll-gist` [plugin](https://github.com/jekyll/jekyll-gist) provides a Liquid tag that does this for you when calling {% raw %}`{% gist <gistID> %}`{% endraw %}. It looks like this:
<script src="https://gist.github.com/sambilbow/3b7b257b535b3dd6fa7b53ad7e453ed0.js"> </script>

I like the border, line numbers, and file name so I might implement that. But overall, the styling from `rouge` is nicer, the functionality of the copy to clipboard button is brilliant, and overall it relies on less JavaScript I believe.


## Conclusion

I might add some snippets here and there to future blog posts about Jekyll, but for the moment, I hope this shows the power of ChatGPT in playing with libraries and languages you're not to familiar with.