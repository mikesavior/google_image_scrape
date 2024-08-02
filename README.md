# Extract Van Gogh Paintings Code Challenge

The goal was to extract a list of Van Gogh paintings from the attached Google search results page.

![Van Gogh paintings](https://github.com/serpapi/code-challenge/blob/master/files/van-gogh-paintings.png?raw=true "Van Gogh paintings")

Objective: Extract the painting `name`, `extensions` array (date), and Google `link` in an array.


[relevant test]: https://github.com/serpapi/test-knowledge-graph-desktop/blob/master/spec/knowledge_graph_claude_monet_paintings_spec.rb
[sample json]: https://raw.githubusercontent.com/serpapi/code-challenge/master/files/van-gogh-paintings.json
[html file]: https://raw.githubusercontent.com/serpapi/code-challenge/master/files/van-gogh-paintings.html
[expected array]: https://raw.githubusercontent.com/serpapi/code-challenge/master/files/expected-array.json

Test against 2 other similar result pages to make sure it works against different layouts. (Pages that contain the same kind of carrousel. Don't necessarily have to be paintings.) <---- This was a requirement, but the page source is several years old by now. The google artist works' page is substantially different under the hood these days. So instead I opted to turn this into a gem to owe to portability/hacking purposes.



#Usage

- Load Gem
```
	require 'google_image_scrape'

	GoogleImageScrape.scrape_image('path_to_file')
```

Output will be in the working directory you've launched IRB from.

The file is designed to work with the one provided in the challenge- in misc/van-gogh-paintings.html.

This gem is also available on Rubygems for easier use outside of the challenge's repo: https://rubygems.org/gems/googscrape

