# require modules here
require 'yaml'
require 'pry'
def load_library(path)
  library = YAML.load_file(path)
  library
end

def get_japanese_emoticon(file_path, emoticon)
  emoticon_library = load_library(file_path)
  if emoticon_library["get_emoticon"].keys.include?(emoticon)
  return emoticon_library["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  emoticon_library = load_library(file_path)
  if emoticon_library["get_meaning"].keys.include?(emoticon)
  return emoticon_library["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
