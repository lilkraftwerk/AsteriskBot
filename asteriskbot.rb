require 'json'



def make_random_asterisk_phrase
  parsed_verbs = JSON.parse(open('./allverbs.json', 'r').read)
  parsed_adverbs = JSON.parse(open('./alladverbs.json', 'r').read)

  "*" + parsed_verbs.sample + " " + parsed_adverbs.sample + "*"
end
