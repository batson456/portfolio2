HTML Truncator
==============

Wants to truncate an HTML string properly? This gem is for you.
It's powered by [Nokogiri](http://nokogiri.org/)!


How to use it
-------------

It's very simple. Install it with rubygems:

    gem install html_truncator

Or, if you use bundler, add it to your `Gemfile`:

    gem "html_truncator", "~>0.2"

Then you can use it in your code:

    require "html_truncator"
	HTML_Truncator.truncate("<p>Lorem ipsum dolor sit amet.</p>", 3)
	# => "<p>Lorem ipsum dolor…</p>"

The HTML_Truncator class has only one method, `truncate`, with 3 arguments:

* the HTML-formatted string to truncate
* the number of words to keep (real words, tags and attributes aren't count)
* some options like the ellipsis (optional, '…' by default).

And an attribute, `ellipsable_tags`, which lists the tags that can contain the ellipsis
(by default: p ol ul li div header article nav section footer aside dd dt dl).


Examples
--------

A simple example:

	HTML_Truncator.truncate("<p>Lorem ipsum dolor sit amet.</p>", 3)
	# => "<p>Lorem ipsum dolor…</p>"

If the text is too short to be truncated, it won't be modified:

    HTML_Truncator.truncate("<p>Lorem ipsum dolor sit amet.</p>", 5)
    # => "<p>Lorem ipsum dolor sit amet.</p>"

If you prefer, you can have the length in characters instead of words:

    HTML_Truncator.truncate("<p>Lorem ipsum dolor sit amet.</p>", 12, :length_in_chars => true)
    # => "<p>Lorem ipsum …</p>"

You can customize the ellipsis:

    HTML_Truncator.truncate("<p>Lorem ipsum dolor sit amet.</p>", 3, :ellipsis => " (truncated)")
    # => "<p>Lorem ipsum dolor (truncated)</p>"

And even have HTML in the ellipsis:

    HTML_Truncator.truncate("<p>Lorem ipsum dolor sit amet.</p>", 3, :ellipsis => '<a href="/more-to-read">...</a>')
    # => "<p>Lorem ipsum dolor<a href="/more-to-read">...</a></p>"

The ellipsis is put at the right place, inside `<p>`, but not `<i>`:

    HTML_Truncator.truncate("<p><i>Lorem ipsum dolor sit amet.</i></p>", 3)
    # => "<p><i>Lorem ipsum dolor</i>…</p>"

You can indicate that a tag can contain the ellipsis but adding it to the ellipsable_tags:

    HTML_Truncator.ellipsable_tags << "blockquote"
    HTML_Truncator.truncate("<blockquote>Lorem ipsum dolor sit amet.</blockquote>", 3)
    # => "<blockquote>Lorem ipsum dolor…</blockquote>"

You can know if a string was truncated with the `html_truncated?` method:

    HTML_Truncator.truncate("<p>Lorem ipsum dolor sit amet.</p>", 3).html_truncated?
    # => true 


Alternatives
------------

Rails has a `truncate` helper, but as the doc says:

> Care should be taken if text contains HTML tags or entities,
  because truncation may produce invalid HTML (such as unbalanced or incomplete tags).

I know there are some Ruby code to truncate HTML, like:

* [https://github.com/hgimenez/truncate_html](https://github.com/hgimenez/truncate_html)
* [https://gist.github.com/101410](https://gist.github.com/101410)
* [http://henrik.nyh.se/2008/01/rails-truncate-html-helper](http://henrik.nyh.se/2008/01/rails-truncate-html-helper)
* [http://blog.madebydna.com/all/code/2010/06/04/ruby-helper-to-cleanly-truncate-html.html](http://blog.madebydna.com/all/code/2010/06/04/ruby-helper-to-cleanly-truncate-html.html)

But I'm not pleased with these solutions: they are either based on regexp for
parsing the content (too fragile), they don't put the ellipsis where expected,
they cut words and sometimes leave empty DOM nodes. So I made my own gem ;-)


Issues or Suggestions
---------------------

Found an issue or have a suggestion? Please report it on
[Github's issue tracker](http://github.com/nono/HTML-Truncator/issues).

If you wants to make a pull request, please check the specs before:

    rspec spec


Credits
-------

Thanks to François de Metz for his awesome help!
Thanks to [kuroir](https://github.com/kuroir) and [benhutton](https://github.com/benhutton) for their suggestions.

Copyright (c) 2011 Bruno Michel <bmichel@menfin.info>, released under the MIT license
