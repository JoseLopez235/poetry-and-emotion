class PoemSearchFacade
  def self.poem_search(author)
    poems = PoemApiService.search_poems(author)
    poems.map do |poem|
      Poem.new(poem)
    end
  end
end
