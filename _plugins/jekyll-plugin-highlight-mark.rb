Jekyll::Hooks.register :documents, :pre_render do |doc|
    # We want to catch all pages, posts, docs in collections
    doc.content = doc.content.gsub(
      /\=\=(.*)\=\=/i,
      '<p markdown="span">\1</p>'
    )
    # setting the markdown="span" flag tells Kramdown to parse what's between the tags, 
    # otherwise it is ignored.
  end