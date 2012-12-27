class ShowInBrowser
  class << self

    def puts(html)
      escaped_html = shell_escape(html)
      `f="/tmp/browser.html"
       rm $f
       echo "#{html}" >> $f
       open $f
      `
      puts escaped_html
    end

    def shell_escape(str)
      return "''" if str.empty?

      str = str.dup
      str.gsub!(/([^A-Za-z0-9_\-.,:\/@\n])/n, "\\\\\\1")
      str.gsub!(/\n/, "'\n'")
      return str
    end

  end
end