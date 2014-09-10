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
    @lesson = Lesson.new
    @sections = Section.all
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.create(params[:lessons])
    if @lesson.save
      flash[:notice] = "You successfully created a lesson!"
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/new.html.erb')
    end
  end

  def edit
    @lesson = Lesson.find(params[:id])
    @sections = Section.all
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lessons])
      flash[:notice] = "You successfully updated this lesson!"
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/edit.html.erb')
    end
  end
end
