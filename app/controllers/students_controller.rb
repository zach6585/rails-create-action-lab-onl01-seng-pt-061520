require 'pry'
class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new 
    puts 'here'
    @student.first_name = params[:first_name]
    puts 'here11'
    @student.last_name = params[:last_name]
    'here3'
    @student.save
    'here5'
    redirect_to student_path(@student)
  end

end
