require 'fileutils'

module Helpers
    def tira_screenshot(name)
        name = name.gsub(" ", "_")
        name = name.gsub(",", "")
        name = name.gsub("(", "")
        name = name.gsub(")", "")
        name = name.gsub("#", "")

        screenshot = 'reports/screenshot/' + "#{$sufix}_" + "#{BROWSER}_" + name + '.png'
        page.save_screenshot(screenshot.downcase!)
        embed(screenshot, 'image/png', 'Veja Imagem') 
    end
end