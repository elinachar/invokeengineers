# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://invokeengineers.com/"
# SitemapGenerator::Sitemap.compress = false

SitemapGenerator::Sitemap.create do

  add about_path, changefreq: 'yearly'

  add projects_path, :priority => 0.7, :changefreq => 'daily'

  Project.find_each do |project|
    add project_path(project), :lastmod => project.updated_at
  end

end
