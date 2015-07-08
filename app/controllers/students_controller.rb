class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
    
    # @student = Unirest.post("http://localhost:3000/students.json", headers:{ "Accept" => "application/json" }, parameters:{ first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], short_bio: params[:short_bio], linkedin: params[:linkedin], twitter: params[:twitter], blog_site: params[:blog_site], resume: params[:resume], github: params[:github], }).body

    # redirect_to "/students/#{@student['id']}"
  end

end
