require "yaml"
require 'pry'

def load_library(file)
  emo =  YAML.load_file(file)
  emo.each_with_object({}) do |(k, v), a|
    v.each do |inner_k|
      a[k] = {}
      a[k][:english] = v[0]
      a[k][:japanese] = v[1]
    end
  end
end




def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(file, emoticon)
  new = load_library(file)
  new.each do |k, v|
    v.each do |inner|
      if v[:english] == emoticon
        puts k 
      end
    end
  end
end

# structure:

#   {
#       'happy' => {
#         :english => ":)",
#         :japanese => "(＾ｖ＾)"
#       }
#   }