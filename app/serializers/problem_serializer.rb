class ProblemSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :board_size, :board, :answer, :move, :player, :attempts, :solved
end
