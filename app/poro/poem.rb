class Poem
  attr_reader :title,
              :author,
              :poem,
              :tones
  def initialize(poem)
    @title = poem[:title]
    @author = poem[:author]
    @poem = create_poem(poem[:lines])
    @tones = tone_array(IbmApiService.search_tone(@poem))
  end

  def create_poem(lines)
    lines.each_with_object("") do |line, string|
      string << line
    end
  end

  def tone_array(tones)
    tones[:document_tone][:tones].each_with_object([]) do |tone, array|
      array << tone[:tone_name]
    end
  end
end
