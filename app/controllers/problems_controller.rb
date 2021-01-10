class ProblemsController < ApplicationController
    def index
        problems = Problem.all
        render json: ProblemSerializer.new(problems)
    end

    def create
        problem = Problem.new(pet_params)
    
        if @pet.save
          render json: @pet, status: :created, location: @pet
        else
          render json: @pet.errors, status: :unprocessable_entity
        end
    end
    
      # PATCH/PUT /pets/1
    def update
        if @pet.update(pet_params)
          render json: @pet
        else
          render json: @pet.errors, status: :unprocessable_entity
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
