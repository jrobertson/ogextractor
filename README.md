# Introducing the OgExtractor gem

    require 'ogextractor'

    url = 'https://www.bbc.co.uk/news/uk-politics-56605598'
    oge = OgExtractor.new(url)

    oge.title #=> "Coronavirus: Dozens of MPs criticise 'divisive...
    oge.description #=> "Ministers are accused of &quot;creeping a...
    oge.type  #=> "article" 
    oge.image #=> "https://ichef.bbci.co.uk/news/1024/branded_news...
    oge.url   #=> "https://www.bbc.com/news/uk-politics-56605598" 

    oge.to_h

output:
<pre>
{:card=&gt;"summary_large_image",
 :title=&gt;"Coronavirus: Dozens of MPs criticise 'divisive' Covid passports",
 :img=&gt;"https://ichef.bbci.co.uk/news/1024/branded_news/BB4F/production/_117815974_063818791-1.jpg",
 :desc=&gt;
  "Ministers are accused of &quot;creeping authoritarianism&quot; amid reports that the passports will be trialled.",
 :url=&gt;"https://www.bbc.com/news/uk-politics-56605598"} 
</pre>

## Resources

* ogextractor https://rubygems.org/gems/ogextractor
* Open Graph protocol https://en.wikipedia.org/wiki/Facebook_Platform#Open_Graph_protocol
* About Twitter Cards https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/abouts-cards

ogextractor opengraph twitter metadata socialmedia parser extractor
