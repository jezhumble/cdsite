# Navigation helper Liquid tags, vendored from the guides_style_cd theme gem.
# These drive the recursive expand/collapse behaviour of the sidebar nav in
# _includes/sidebar-children.html. They run at build time (GitHub Actions),
# so they are not subject to GitHub Pages' allowed-plugins restriction.

require 'liquid'

module GuidesStyleCD
  class ShouldExpandNavTag < ::Liquid::Tag
    NAME = 'guides_style_18f_should_expand_nav'
    ::Liquid::Template.register_tag(NAME, self)

    attr_reader :parent_reference, :url_reference

    def initialize(_tag_name, markup, _)
      super
      references = markup.split(',').map(&:strip)
      @parent_reference = references.shift
      @url_reference = references.shift
    end

    def render(context)
      scope = context.scopes.detect { |s| s.member?(url_reference) }
      parent_url = scope[url_reference]
      page_url = context['page']['url']
      page_url == parent_url || page_url.start_with?(parent_url) ||
        expand_nav_default(scope, context)
    end

    private

    def expand_nav_default(scope, context)
      default = scope[parent_reference]['expand_nav']
      default = context['site']['expand_nav'] if default.nil?
      default.nil? ? false : default
    end
  end

  class PopLastUrlComponent < ::Liquid::Tag
    NAME = 'guides_style_18f_pop_last_url_component'
    ::Liquid::Template.register_tag(NAME, self)

    attr_reader :reference

    def initialize(_tag_name, markup, _)
      super
      @reference = markup.strip
    end

    def render(context)
      scope = context.scopes.detect { |s| s.member?(reference) }
      parent_url = scope[reference]
      result = File.dirname(parent_url)
      result == '/' ? result : "#{result}/"
    end
  end
end
