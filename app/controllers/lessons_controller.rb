class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def new
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.create(:name => params[:name],
                            :description => params[:description])
    if @lesson.save
      flash[:notice] = "You successfully created a lesson!"
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/new.html.erb')
    end
  end
end
