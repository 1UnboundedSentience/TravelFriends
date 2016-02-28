# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create!([
  { name: 'Jane Austin', email: 'travel@agent.com', password: '123456', password_confirmation: '123456', sex:'female'},
  { name: 'Adrian Sameli', email: 'adrian@aderama.com', password: '123456', password_confirmation: '123456', sex:'male'},
  { name: 'Alex Pawlak', email: 'alexpawlak@gmail.com', password: '123456', password_confirmation: '123456', sex:'male'},
  { name: 'Jason Xu', email: 'jsnx21@gmail.com', password: '123456', password_confirmation: '123456', sex:'male'}
])


plans = Customer.create([
  { first_name: 'John', last_name: 'Smith', mobile_phone: '+1 (123) 456-7890', email:'john@smith.com',
    sex:'male', bio:'John is a very cool guy who travels a lot', payment_method:'Visa Creditcard', country:'USA', currency:'USD'},
  { first_name: 'Mary', last_name: 'Miller', mobile_phone: '+1 (123) 456-7890', email:'mary@miller.com',
    sex:'female', bio:'Mary does not yet know where she wants to travel', payment_method:'Visa Creditcard', country:'UK', currency:'USD'},
    { first_name: 'Barak', last_name: 'Obama', mobile_phone: '+1 (123) 456-7890', email:'barak@obama.com',
      sex:'male', bio:'Obama has been to most countries, but never has time for sightseeing', payment_method:'Visa Creditcard', country:'USA', currency:'USD'},
      { first_name: 'Hillary', last_name: 'Clinton', mobile_phone: '+1 (123) 456-7890', email:'hillary.clinton@gmail.com',
        sex:'female', bio:'Hillary is an aged woman with a lot of travel experienced.', payment_method:'Visa Creditcard', country:'USA', currency:'USD'}
])

plans = TravelPlan.create([
  { title: 'Silkroad with the family', description: 'John travels with his family from Beijing to Istanbul and needs a lot of support..',
    travel_start: Date.parse("01/01/2016"), travel_end: Date.parse("02/01/2016"),
    status: 'closed', user_id:'1', customer_id:'1' },
    { title: 'Roadtrip around the world', description: 'John is on a sabbatical timeout from work and wants to visit 3 countries on each continent.',
      travel_start: Date.parse("03/01/2016"), travel_end: Date.parse("04/01/2016"),
      status: 'open', user_id:'1', customer_id:'1' },
      { title: 'Panamericana in 60 days', description: 'John found some work in Chile and now wants to drive from Cape Verde to Alaska with an old van.',
        travel_start: Date.parse("03/01/2016"), travel_end: Date.parse("05/01/2016"),
        status: 'open', user_id:'1', customer_id:'1' },
        { title: 'China for 40 days', description: 'Mary found a new job in Beijing, but wants to discover the country before starting.',
          travel_start: Date.parse("02/01/2015"), travel_end: Date.parse("05/02/2015"),
          status: 'closed', user_id:'1', customer_id:'2' },
          { title: 'Himalaya Roundtrip', description: 'Mary finished her job in Bejing and now wants to climb Mount Everest in the Himalayas.',
            travel_start: Date.parse("07/06/2015"), travel_end: Date.parse("10/01/2015"),
            status: 'closed', user_id:'1', customer_id:'2' }
  ])
