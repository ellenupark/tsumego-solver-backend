class ProblemSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :size, :board, :answer, :move, :player, :attempts, :solved
end
