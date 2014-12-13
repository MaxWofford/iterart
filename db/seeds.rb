# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

case Rails.env
when "development"
  DevPost.create!(title: 'Hello world!', body: 'This is the dev post\'s content')
  (0..3).each do |i|
    @user = User.create!(username: "user#{i}", email: "test#{i}@example.com", password: 'password', password_confirmation: 'password')
    (0..[*1..25].sample).each do |n|
      @image = File.new("#{Rails.root}/app/assets/images/seed/development/sample_image_#{[*1..9].sample}.jpg")
      @art = ArtworkIteration.create!(user_id:     @user.id,
                                      name:        "Artwork #{i}-#{n}",
                                      image:       @image)
      @project = Project.where(id: @art.project_id).first
      @project.in_progress = [true, false].sample
      @project.name = "Project #{@project.id}"
      @project.save
    end
  end
when "production"
end
