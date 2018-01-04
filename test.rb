require "lib/dijkstra_gem.rb"
grafos = DijkstraGem.new(6)
grafos.add_distance(1,[[2,4],[3,3]])
grafos.add_distance(2,[[4,3]])
grafos.add_distance(3,[[4,5],[5,3]])
grafos.add_distance(4,[[6,2]])
grafos.add_distance(5,[[6,1]])
puts grafos.search_best_way(1,6)