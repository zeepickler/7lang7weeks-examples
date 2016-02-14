concatenate([], List, List).
concatenate([Head]|Tail1], List, [Head|tail2]) :- 
  concatenate(Tail1, List, Tail2).