class TodosController < ApplicationController
  
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.content = params[:todo][:content]
    if @todo.save
      if request.xhr?
        respond_to do |format|
          puts "response is xhr ?"
          format.html do
            puts "response formated as html"
            render partial: 'todo' , locals: {todo: @todo}
          end
            puts "response formated as Json"
            format.json {render json: @todo}
        end
      else
      redirect_to root_url
      end
    end
  end

  def index
    @todos = Todo.all
    @todo = Todo.new
  end
end
