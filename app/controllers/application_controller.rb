class ApplicationController < ActionController::API
    def index
        problems = Problem.all
        render json: ProblemSerializer.new(problems)
    end
end
