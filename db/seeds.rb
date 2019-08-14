require 'json'

Dir["**/*.json"].each do |json_file|
  data_hash = JSON.parse(File.read(json_file))
  poem = Poem.create(
     classification: data_hash['classification'],
     title: data_hash['title'],
     reference: data_hash['reference'],
     region: data_hash['region'],
     period: data_hash['period'],
     year: data_hash['year'],
     author: data_hash["author"],
     text: data_hash['text']
  )
  p poem
  data_hash['keywords'].each do |keyword|
    tag = Tag.find_or_create_by(name: keyword)
    ptag = PoemTag.create(tag_id: tag.id, poem_id: poem.id)
    p tag
    p ptag
  end
  p poem.tags
end
