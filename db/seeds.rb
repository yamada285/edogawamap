User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end



500.times do
  map = Map.new
  map.name = Faker::Company.name
  map.latitude = Faker::Address.latitude
  map.longitude = Faker::Address.longitude

  parameters = []
  parameters << { closed: true }
  parameters << { open_time: '8:00AM', closing_time: '8:00PM' }
  parameters << { open_time: '8:00AM', closing_time: '5:00PM' }
  parameters << { open_time: '7:00AM', closing_time: '9:00PM' }
  parameters << { open_time: '8:00AM', closing_time: '12:00PM' }

  %w(sunday monday tuesday wednesday thursday friday saturday).each do |day|
    params = parameters.sample
    params[:day] = day
    map.operation_hours.new(params)
  end
  map.save!
end