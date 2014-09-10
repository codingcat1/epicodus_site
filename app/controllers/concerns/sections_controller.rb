class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render('sections/index.html.erb')
  end

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end

  def show
    @section = Section.find(params[:id])
    @lessons = Lesson.all
    render('sections/show.html.erb')
  end

  def create
    @section = Section.create(params[:sections])
    if @section.save
      flash[:notice] = "You successfully created a section!"
      redirect_to("/sections/#{@section.id}")
    else
      render('sections/new.html.erb')
    end
  end

  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(params[:sections])
      flash[:notice] = "You successfully updated this section!"
      redirect_to("/sections/#{@section.id}")
    else
      render('sections/edit.html.erb')
    end
  end
end
