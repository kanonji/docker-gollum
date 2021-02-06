Precious::App.set(:wiki_options, {
  :live_preview => false,
  :universal_toc => true,
  :h1_title => false,
})

Gollum::Filter::PlantUML.configure do |config|
    config.url = ENV['PLANTUML_URL_BASE']
    config.verify_ssl = false
    config.test = true
end
