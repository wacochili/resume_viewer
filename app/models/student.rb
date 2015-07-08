class Student
  attr_accessor :id, :first_name, :last_name, :email, :phone_number, :skills, :short_bio, :linkedin, :twitter, :blog_site, :resume, :github, :photo, :experiences, :educations, :educations_name, :educations_degrees, :educations_details

  def initialize(hash)
    @id = hash["id"]
    @first_name = hash["first_name"]
    @last_name = hash["last_name"]
    @email = hash["email"]
    @phone_number = hash["phone_number"]
    @short_bio = hash["short_bio"]
    @skills = hash["skills"][0]["name"]
    @linkedin = hash["linkedin"]
    @twitter = hash["twitter"]
    @blog_site = hash["blog_site"]
    @resume = hash["resume"]
    @github = hash["github"]
    @photo = hash["photo"]
    @experiences = hash["experiences"][0]["details"]
    @educations = hash["educations"]
    @educations_name = hash["educations"][1]["university_name"]


    @educations_degrees = []
    hash["educations"].each do |hash|
      @educations_degrees << hash["degree"]
    end

    # @educations_details = hash["educations"][1]["details"]
  end

  def self.find(id)
    student_hash = Unirest.get("http://localhost:3000/students/#{id}.json").body
    Student.new(student_hash)
  end

end