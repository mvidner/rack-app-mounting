An example of mounting several HTTP apps under a common root,
using [Rack](http://rack.github.io/) and [Sinatra](http://www.sinatrarb.com/).

Use one of

- ruby foo.rb
    - <http://localhost:4567/double/Hello>
- ruby bar.rb
    - <http://localhost:4567/triple/Ho>
- rackup
    - <http://localhost:9292/double/Hello>
    - <http://localhost:9292/bar/triple/Ho>
