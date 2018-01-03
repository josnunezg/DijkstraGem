class DijkstraGem

  def initialize(nodos)
    @nodos = {}
    @nodes_visited = {}
    @best_way = []
    @best_way_test = []
    @final = 0
    @way = []
    (1..nodos).each do |i|
      @nodos[i] = []
      @nodes_visited[i] = i == 1
    end
  end


  def add_distance nodo, points = []
    points.each do |pnt|
      return nil unless pnt.class == Array
      self.distance nodo, pnt[0], pnt[1]
    end
  end

  def search_best_way a , b
    @final = b
    @way << a
    @best_way = [a,0]
    @best_way_test = [a,0]
    dijkstra(@nodos[a])
    @way.join(" - ")
  end

  protected

  def distance nodo, point, dist
    @nodos[nodo] << [point, dist]
  end

  def dijkstra nodo
    return true if nodo == @nodos[@final]
    begin
      best_nodo = {}
      nodo.each {|n| best_nodo[n[1]] = n[0] unless @nodes_visited[n[0]]}
      _best_nodo = good_way(best_nodo.sort)
      _nodo = _best_nodo[1]
      _dist = _best_nodo[0]
      @nodes_visited[@best_way[0]] = true
      @best_way = [_nodo, _dist]
      @way << _nodo
      dijkstra(@nodos[_nodo])
    rescue Exception => e
      return false
    end
  end

  def good_way best_nodo
    bn = []
    best_nodo.each do |bst|
      if test_dijkstra(@nodos[bst[1]])
        bn = bst
        break
      end
    end
    @best_way_test = []
    bn
  end

  def test_dijkstra nodo
    return true if nodo == @nodos[@final]
    begin
      best_nodo = {}
      nodo.each {|n| best_nodo[n[1]] = n[0] unless @nodes_visited[n[0]]}
      best_nodo = best_nodo.sort.to_h
      _nodo = best_nodo.values[0]
      _dist = best_nodo.keys[0]
      @best_way_test = [_nodo, _dist]
      test_dijkstra(@nodos[_nodo])
    rescue Exception => e
      return false
    end
  end

end