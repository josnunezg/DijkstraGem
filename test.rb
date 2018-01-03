require "lib/dijkstra_gem.rb"
grafos = DijkstraGem.new(6)
grafos.add_distance(1,[[2,4],[3,2]])
grafos.add_distance(2,[[3,1],[4,5]])
grafos.add_distance(3,[[4,8]])
grafos.add_distance(4,[[5,2],[6,6]])
grafos.add_distance(5,[[6,2]])
puts grafos.search_best_way(1,6)