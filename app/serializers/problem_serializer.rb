class ProblemSerializer < ActiveModel::Serializer
  attributes :id, :size, :board, :answer, :move, :player, :attempts, :solved
end
