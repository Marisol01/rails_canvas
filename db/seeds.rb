# added this..fake data

roles = ['teacher', 'ta', 'student']
10.times do
  course =  Course.create(
    name: Faker::ChuckNorris.fact
  )

  10.times do 
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )
    Enrollment.create(
      role: roles.sample,
      course_id: course.course_id,
      user_id: user.id
    )
  end
end

puts 'All the data is seeded'
