class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params[:student])
    @students = Student.all
  end

  def index
    @students = Student.all
  end
end