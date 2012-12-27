# Show In Browser 
show_in_browser is a very simple gem that opens an html string inside your default browser.

It very simply achieves this by writing the html string to `/tmp/browser.html` and calls `open /tmp/browser.html` on it which opens it in your default html program.