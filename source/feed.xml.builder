xml.instruct! :xml, :version => '1.0'
xml.rss :version => "2.0",  'xmlns:atom' => "http://www.w3.org/2005/Atom" do
  xml.channel do
    xml.title "Vimfest"
    xml.description "Vimfest is the yearly community-driven Vim 'Hackathon' in Berlin, organized by the Vim Berlin user group and Vim enthusiasts from other cities."
    xml.link "http://vimfest.org"
    site_url = "http://vimfest.org"
    blog.articles.each do |article|
      xml.item do
        xml.title article.title
        xml.link URI.join(site_url, article.url)
        xml.description article.body
        xml.pubDate article.date.to_date.rfc822
        xml.guid URI.join(site_url, article.url)
      end
    end
  end
end

