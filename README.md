# Show In Browser 
show_in_browser is a very simple gem that opens an html string inside your default html application (you will need to set a browser to be the default application that opens up `.html` files.

## Installation
```ruby
gem install show_in_browser
```

## Usage

```ruby
ShowInBrowser.show("<h1>HelloWorld!</h1>")
```

I have found this is useful for printing error messages when debugging an api that returns an HTML error page or debugging apps that are crawling websites (so I can see what they have actually crawled in the browser).

## Implementation

It very simply achieves this by writing the html string to `/tmp/browser.html` and calls `open /tmp/browser.html` (in bash) on it which opens it in your default html application.


