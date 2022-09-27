class BackLinksGenerator < Jekyll::Generator
    def generate(site)
  
      all_notes = site.collections['docs'].docs
      all_posts = site.posts.docs
      all_pages = site.pages
  
      all_docs = all_notes + all_posts + all_pages 
  
      # Identify backlinks and add them to each doc
      all_docs.each do |current_note|
        notes_linking_to_current_note = all_docs.filter do |e|
          e.content.include?(current_note.url)
        end
        current_note.data['backlinks'] = notes_linking_to_current_note
      end
  
    end
  
  end