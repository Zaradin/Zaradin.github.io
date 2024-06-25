require 'open-uri'
require 'json'
require 'nokogiri'
require 'jekyll'

module Jekyll
  class JekyllDisplayMediumPosts < Generator
    safe true
    priority :high

    def generate(site)
      jekyll_coll = Jekyll::Collection.new(site, 'medium_posts_json')
      site.collections['medium_posts_json'] = jekyll_coll

      rss_feed_url = "https://medium.com/feed/@Josh-Crotty"
      rss_content = URI.open(rss_feed_url).read
      rss_doc = Nokogiri::XML(rss_content)

      rss_doc.xpath('//item').each do |item|
        title_node = item.at_xpath('title')
        next unless title_node

        title = title_node.content.strip
        path = "./medium_posts/" + title.gsub(/[^0-9A-Za-z]/, '') + ".md"
        path = site.in_source_dir(path)
        doc = Jekyll::Document.new(path, { :site => site, :collection => jekyll_coll })

        puts "====== #{title} ======"

        link_node = item.at_xpath('link')
        pub_date_node = item.at_xpath('pubDate')
        content_node = item.at_xpath('content:encoded')
        categories = item.xpath('category').map(&:content)

        link = link_node ? link_node.content.strip : ''
        pub_date = pub_date_node ? pub_date_node.content.strip : ''
        content = content_node ? content_node.content : ''

        doc.data['title'] = title
        doc.data['link'] = link
        doc.data['date'] = pub_date
        doc.data['categories'] = categories

        # Parse the content to extract description and image
        html_content = Nokogiri::HTML(content)
        description = html_content.search('p').to_html
        thumbnail = html_content.at_xpath('//img/@src')

        doc.data['description'] = description
        doc.data['image'] = thumbnail ? thumbnail.value : ''

        jekyll_coll.docs << doc
      end
    end
  end
end