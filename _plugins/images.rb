require "jekyll-minimagick"

module Jekyll
  class ImageTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "<p><a href=\"/images/original/#{@text}\"><img class=\"img-polaroid\" src=\"/images/thumbnail/#{@text}\" /></a></p>"
    end
  end
end

Liquid::Template.register_tag('image', Jekyll::ImageTag)

