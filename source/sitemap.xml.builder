xml.instruct!
xml.urlset 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9", 'xmlns:xsi' => "http://www.w3.org/2001/XMLSchema-instance", 'xsi:schemaLocation' => "http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" do
  sitemap.resources.select { |page| page.path =~ /\.html/ && (page.path.start_with?('views/') == false) }.each do |page|
    xml.url do
      xml.loc "#{data.sitemap.url}#{page.path}"
      xml.priority page.data.priority || "0.5"
    end
  end
end