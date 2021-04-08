#!/usr/bin/env ruby

# file: ogextractor.rb
# description: Reads Twitter and Open Graph metadata from a given URL.

require 'nokorexi'


class OgExtractor

  attr_reader *%i(head title description image url type to_h)

  def initialize(article_url, debug: false)

    @article_url, @debug = article_url, debug
    @properties = %w(title description image url type)
    @doc = Nokorexi.new(article_url).to_doc
    extract_metadata()

  end

  private

  def extract_metadata()

    @head = @doc.root.element('head')

    read_og_meta()
    read_twitter_meta()
    @url ||= @article_url    
    @image = @article_url[/^https?:/] + @image if @image and @image[/^\/\//]

    @to_h = if @card then

      {card: @card, title: @title, img: @image, desc: @description, url:  @url}
              
    else
      
      @card = 'summary'
                          
      if @image and @image.length > 1 then
        
        {card: @card, title: @title, img: @image, desc: @description, url:  @url}

      elsif title    
        
        {card: @card, title: @title, desc: @description, url:  @url}
      
      else

        nil
        
      end    

    end

  end

  def read_meta(properties=@properties, attrx="property='og")

    properties.each do |x|
    
      e = @head.element("meta[@#{attrx}:#{x}']attribute::content")
      next unless e
      
      instance_variable_set('@' + x, e.to_s)
      
    end

  end

  def read_og_meta()

    read_meta()

  end

  def read_twitter_meta()

    read_meta(%w(card title description image), "name='twitter")

  end

end
