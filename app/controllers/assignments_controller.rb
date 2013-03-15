class AssignmentsController < ApplicationController
  def index
  end
  def new
    @assignment = Assignment.new
  end
  def create

    @assignment = Assignment.create(params[:assignment])
    @assignments = Assignment.all

  end
  def show
  end
  def edit
  end
  def update
  end
  def destroy
  end
end