# frozen_string_literal: true

require_relative "TamagochiAddon/version"
require 'sanitize'

module TamagochiAddon
  def make_html(content, name_file = 'index.html')
    content = Sanitize.fragment(content, Sanitize::Config::RELAXED)
    text = "<!DOCTYPE html> \n" \
           "<html> \n" \
           "   <head>\n" \
           "     <meta charset=""utf-8"">\n" \
           "     <title>Tamagochi</title>\n" \
           "      <link\n" \
           "     href=""https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css""\n" \
           "     rel=""stylesheet""\n" \
           "     integrity=""sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x""\n" \
           "     crossorigin=""anonymous"">\n" \
           "   </head>\n" \
           "<body class=""text-center"">\n" \
           "#{content}\n" \
           "</body>\n" \
           "</html>\n"
    
    File.open(name_file, "w") { |f| f.write text }
  end
end
