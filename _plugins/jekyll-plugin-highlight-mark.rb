class HighlightsGenerator < Jekyll::Generator
  def generate(site)

    all_docs = site.documents

    # Converts Markdown-plus ==text== to  <mark>text</mark>
    all_docs.each do |current_note|
      current_note.content = current_note.content.gsub(
        /\=\=(.*)\=\=/i,
        '<mark markdown="1">\1</mark>'
      )
    end
  end
end

    #https://talk.jekyllrb.com/t/plugin-help-markdown-in-string-processed-by-plugin-not-being-rendered/4771