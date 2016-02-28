# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create!([
  { name: 'Travel Agent', email: 'travel@agent.com', password: '123456', password_confirmation: '123456', sex:'female'},
  { name: 'Adrian Sameli', email: 'adrian@aderama.com', password: '123456', password_confirmation: '123456', sex:'male'},
  { name: 'Alex Pawlak', email: 'alexpawlak@gmail.com', password: '123456', password_confirmation: '123456', sex:'male'},
  { name: 'Jason Xu', email: 'jsnx21@gmail.com', password: '123456', password_confirmation: '123456', sex:'male'}
])


plans = Customer.create([
  { first_name: 'John', last_name: 'Smith', mobile_phone: '+1 (123) 456-7890', email:'john@smith.com',
    sex:'male', bio:'frequent traveler', payment_method:'Visa Creditcard', country:'USA', currency:'USD'},
  { first_name: 'Mary', last_name: 'Miller', mobile_phone: '+1 (123) 456-7890', email:'mary@miller.com',
    sex:'female', bio:'frequent traveler', payment_method:'Visa Creditcard', country:'UK', currency:'USD'},
  { first_name: 'Barak', last_name: 'Obama', mobile_phone: '+1 (123) 456-7890', email:'barak@obama.com',
    sex:'male', bio:'frequent traveler', payment_method:'Visa Creditcard', country:'USA', currency:'USD'}
])

plans = TravelPlan.create([
  { title: 'Silkroad with the family', description: '',
    travel_start: Date.parse("01/01/2016"), travel_end: Date.parse("02/01/2016"),
    status: 'closed', user_id:'1', customer_id:'1' },
    { title: 'Roadtrip around the world', description: '',
      travel_start: Date.parse("03/01/2016"), travel_end: Date.parse("04/01/2016"),
      status: 'open', user_id:'1', customer_id:'1' },
    { title: 'Panamericana in 60 days', description: '',
      travel_start: Date.parse("03/01/2016"), travel_end: Date.parse("05/01/2016"),
      status: 'open', user_id:'1', customer_id:'1' }
  ])
