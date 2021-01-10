class ProblemsController < ApplicationController
    before_action :set_problem, only: [:show, :update, :destroy]

    def index
        problems = Problem.all
        render json: ProblemSerializer.new(problems)
    end

    def create
        problem = Problem.new(problem_params)
    
        if problem.save
          render json: ProblemSerializer.new(problem)
        else
            render json: {errors: problem.errors.full_messages.to_sentence}
        end
    end
    
    def update
        if problem.update(problem_params)
          render json: ProblemSerializer.new(problem)
        else
          render json: {errors: problem.errors.full_messages.to_sentence}
        end
    end

    
    private
      def set_problem
        problem = Problem.find(params[:id])
      end
  
      def problem_params
        params.require(:problem).permit(:size, :board, :answer, :move, :player, :attempts, :solved)
      end
end
