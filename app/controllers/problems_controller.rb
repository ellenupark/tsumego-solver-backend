class ProblemsController < ApplicationController
    before_action :set_problem, only: [:show]

    def index
        problems = Problem.all
        render json: ProblemSerializer.new(problems)
    end

    def show
        problem = Problem.find_by_id(params[:id])
        render json: ProblemSerializer.new(problem)
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
        problem = Problem.find_by_id(params[:id])

        if problem.update(problem_params)
            render json: ProblemSerializer.new(problem)
        else
            render json: {errors: problem.errors.full_messages.to_sentence}
        end
    end

    
    private
      def set_problem
        problem = Problem.find_by_id(params[:id])
      end
  
      def problem_params
        params.require(:problem).permit(:board_size, :prompt, :user_made, :move, :player, :attempts, :solved, :board, :answer).tap do |whitelisted|
            whitelisted[:board] = params[:problem][:board]
            whitelisted[:answer] = params[:problem][:answer]

        end
        # params.require(:problem).permit(:board_size, :prompt, :user_made, :move, :player, :attempts, :solved, board: [], answer: [])
      end
end
