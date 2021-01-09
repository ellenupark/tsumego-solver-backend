class ProblemsController < ApplicationController
    def index
        problems = Problem.all
        render json: ProblemSerializer.new(problems)
    end
end
