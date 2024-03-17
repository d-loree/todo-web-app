module SitesHelper
  def nav_link(text, path)
    active_class = current_page?(path) ? 'active' : ''

    content_tag :li, class: 'nav-item' do
      link_to text, path, class: "nav-link #{active_class}"
    end
  end
end
