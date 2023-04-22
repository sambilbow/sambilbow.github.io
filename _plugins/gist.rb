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
