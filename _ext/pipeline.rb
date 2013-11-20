require 'bootstrap-sass'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new( '/news' )
  extension Awestruct::Extensions::Paginator.new( :posts, '/news/index', :per_page=>5 )
  extension Awestruct::Extensions::Tagger.new( :posts, '/news/index', '/news/tags', :per_page=>5)
  extension Awestruct::Extensions::TagCloud.new( :posts, '/news/tags/index.html', :layout=>'base' )
  extension Awestruct::Extensions::Atomizer.new( :posts, '/news.atom', :num_entries=>20 )
  extension Awestruct::Extensions::Indexifier.new(['doc/apidocs070'])
  extension Awestruct::Extensions::Disqus.new()
  extension Awestruct::Extensions::Sitemap.new
  helper Awestruct::Extensions::Partial
  helper Awestruct::Extensions::GoogleAnalytics
end

