Jekyll::Hooks.register :posts, :pre_render do |doc|
  # We want to catch all pages, posts, docs in collections
  doc.content = doc.content.gsub(
    /\=\=(.*)\=\=/i,
    '<mark markdown="span">\1</mark>'
  )
  # setting the markdown="span" flag tells Kramdown to parse what's between the tags, 
  # otherwise it is ignored.
end

    #https://talk.jekyllrb.com/t/plugin-help-markdown-in-string-processed-by-plugin-not-being-rendered/4771