# Dijkstra Gem



## Installation

Add this line to your application's Gemfile:

    gem 'dijkstra_gem'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dijkstra_gem

## Usage

This is a gem that sees the best path between two points in a graph
	
Configure DijkstraGem

	dijkstra = DijkstraGem.new(6)

6 = number of points or nodos

	dijkstra.add_distance(1,[[2,4],[3,3]])
	dijkstra.add_distance(2,[[4,3]])
	dijkstra.add_distance(3,[[4,5],[5,3]])
	dijkstra.add_distance(4,[[6,2]])
	dijkstra.add_distance(5,[[6,1]])

add_distance(nodo, [[nodo,distance]])
in this function the node and the nodes with which it is connected are added


To see the best way between two points
we will use the function search_best_way (a, b) a => start point, b => end point

	dijkstra.search_best_way(1,6)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
