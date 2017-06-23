#!/usr/bin/env ruby
# coding: utf-8

remove = [
  '<link rel="https://api.w.org/" href="http://www.gabrieldegennaro.com.br/projects/api_builder/wp-json/">',
  '<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.gabrieldegennaro.com.br/projects/api_builder/xmlrpc.php?rsd">',
  '<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://www.gabrieldegennaro.com.br/projects/api_builder/wp-includes/wlwmanifest.xml"> ',
  '<meta name="generator" content="WordPress 4.8">',
  '<link rel="canonical" href="http://www.gabrieldegennaro.com.br/projects/api_builder/">',
  '<link rel="shortlink" href="http://www.gabrieldegennaro.com.br/projects/api_builder/">',
  '<link rel="alternate" type="application/json+oembed" href="http://www.gabrieldegennaro.com.br/projects/api_builder/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fwww.gabrieldegennaro.com.br%2Fprojects%2Fapi_builder%2F">',
  '<link rel="alternate" type="text/xml+oembed" href="http://www.gabrieldegennaro.com.br/projects/api_builder/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fwww.gabrieldegennaro.com.br%2Fprojects%2Fapi_builder%2F&amp;format=xml">',
  '<link rel="icon" href="http://www.gabrieldegennaro.com.br/projects/api_builder/wp-content/uploads/2017/06/bullet.png" sizes="32x32">',
  '<link rel="icon" href="http://www.gabrieldegennaro.com.br/projects/api_builder/wp-content/uploads/2017/06/bullet.png" sizes="192x192">',
  '<link rel="apple-touch-icon-precomposed" href="http://www.gabrieldegennaro.com.br/projects/api_builder/wp-content/uploads/2017/06/bullet.png">',
  '<meta name="msapplication-TileImage" content="http://www.gabrieldegennaro.com.br/projects/api_builder/wp-content/uploads/2017/06/bullet.png">',
  '<link rel="https://api.w.org/" href="http://www.gabrieldegennaro.com.br/projects/api_builder/wp-json/">',
  '<link rel="alternate" type="application/rss+xml" title="API | Builder » Home Comments Feed" href="http://www.gabrieldegennaro.com.br/projects/api_builder/home/feed/">',
  'window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/www.gabrieldegennaro.com.br\/projects\/api_builder\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.8"}};',
]

File.open("foo.html", "w") do |out|
  IO.readlines("index.html").each do |l|
    l.sub!("http://www.gabrieldegennaro.com.br/projects/api_builder/wp-content/themes/api_builder/screenshot.png", "misc/screenshot.png")
    l.sub!('href="http://www.gabrieldegennaro.com.br/projects/api_builder', 'href="https://www.apibuilder.io')
    remove.each do |text|
      l.sub!(text, "")
    end
    out << l.strip << "\n"
  end
end

