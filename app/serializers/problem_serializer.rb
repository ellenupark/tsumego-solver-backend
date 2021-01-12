class ProblemSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :prompt, :board_size, :board, :answer, :move, :player, :attempts, :solved, :user_made
end
