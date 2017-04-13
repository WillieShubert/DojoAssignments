require "stringer/version"

module Stringer
  def self.spacify *strings
      strings.join(" ")
  end

  def self.minify string, length
    if length > string.length
      return string
    end
    "#{string[0...length]}..."
  end

  def self.replacify string, find, replace
    text = string.split(" ")

    text.map! do |word|
      if word == find
        replace
      else
        word
      end
    end
    text.join(" ")
  end

  def self.tokenize string
    string.split(" ")
  end

  def self.removify string, word
    text = string.split(" ")
    text.reject! { |elem| elem == word }
    text.join(" ")
  end
end
