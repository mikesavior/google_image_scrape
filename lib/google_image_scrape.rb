require 'nokogiri'
require 'json'

class GoogleImageScrape
  class << self
    def scrape_images(source_file)

      html_content = File.read(source_file)
      doc = Nokogiri::HTML(html_content)

      artworks = []

      doc.css('[class^="klitem"]').each do |artwork|
        name_element = artwork['aria-label']
        name = name_element.strip if name_element
        
        extensions_element = artwork.at_css('[class^="ellip"]')
        extensions = extensions_element.text.strip.split(',') if extensions_element

        link = artwork['href']
        image_element = artwork.at_css('[class^="rISBZc"]')
        image = image_element['src']

        artworks << {
          name: name,
          extensions: extensions,
          link: "https://www.google.com" + link.to_s,
          image: image
        }
      end
      
      output = { artworks: artworks }
      output_file_path = './results.json'
      File.write(output_file_path, JSON.pretty_generate(output))

      puts "Results saved to file: #{output_file_path}."
    end
  end
end
