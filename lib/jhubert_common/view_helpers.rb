module JhubertCommon
  module ViewHelpers
    def link_to_with_class(label, path, class_name = 'current')
      content_tag('li', link_to(label, path, :class => current_page?(path) ? class_name : ''), :class => current_page?(path) ? class_name : '' )
    end

    def analytics(account_key = nil)
      return unless Rails.env.production?
      html = <<-eos
      <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', '#{account_key}']);
        _gaq.push(['_trackPageview']);

        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

      </script>
eos
      return html.html_safe    
    end

    def flashes(*keys)
      keys.collect do |key| 
        content_tag(:div, flash[key], { :class => "alert alert-#{key == :notice ? 'info' : key}" }, false) if flash[key]
      end.join.html_safe
    end

    def utc_date(date)
      raw %Q(<time class="utc-date" title="#{date}">#{date}</time>)
    end
  end
end
