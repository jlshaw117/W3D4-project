# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  User.destroy_all

  user1 = User.create!(username: 'mcdonald')
  user2 = User.create!(username: 'crushthemall')
  user3 = User.create!(username: 'hello')
  user4 = User.create!(username: 'user')
  user5 = User.create!(username: 'noob')
  user6 = User.create!(username: 'maverick')
  
  
  Poll.destroy_all
  pol1 = Poll.create!(author_id: user1.id, title: 'fast food')
  pol2 = Poll.create!(author_id: user2.id, title: 'gamer name')

  Question.destroy_all
  q1 = Question.create!(poll_id: pol1.id, body: 'What is the recent COD that came out?')
  q2 = Question.create!(poll_id: pol1.id, body: 'What is your favorite system?')
  q3 = Question.create!(poll_id: pol2.id, body: 'What is the number 1 fast food franchise?')
  q4 = Question.create!(poll_id: pol2.id, body: 'What is the best fast food resturaunt in CA?')
  
  
  AnswerChoice.destroy_all
  choice1 = AnswerChoice.create!(question_id: q1.id, option: 'Black Ops II')
  choice2 = AnswerChoice.create!(question_id: q1.id, option: 'MW4')
  choice3 = AnswerChoice.create!(question_id: q1.id, option: 'Black Ops IV')
  choice4 = AnswerChoice.create!(question_id: q2.id, option: 'PS')
  choice5 = AnswerChoice.create!(question_id: q2.id, option: 'Xbox')
  choice6 = AnswerChoice.create!(question_id: q2.id, option: 'Pc')
  choice7 = AnswerChoice.create!(question_id: q3.id, option: 'McDonalds')
  choice8 = AnswerChoice.create!(question_id: q3.id, option: 'Burger King')
  choice9 = AnswerChoice.create!(question_id: q3.id, option: 'Subway')
  choice10 = AnswerChoice.create!(question_id: q4.id, option: 'In and Out')
  choice11 = AnswerChoice.create!(question_id: q4.id, option: 'Burger King')
  choice12 = AnswerChoice.create!(question_id: q4.id, option: 'Taco Bell')
  
  
  Response.destroy_all

  response1 = Response.create!(user_id: user1.id, answer_id: choice7.id)
  response2 = Response.create!(user_id: user1.id, answer_id: choice2.id)
  response3 = Response.create!(user_id: user1.id, answer_id: choice4.id)
  response4 = Response.create!(user_id: user1.id, answer_id: choice10.id)
  response5 = Response.create!(user_id: user2.id, answer_id: choice9.id)
  response6 = Response.create!(user_id: user2.id, answer_id: choice3.id)
  response7 = Response.create!(user_id: user2.id, answer_id: choice5.id)
  response8 = Response.create!(user_id: user2.id, answer_id: choice12.id)
  response9 = Response.create!(user_id: user3.id, answer_id: choice2.id)
  response10 = Response.create!(user_id: user3.id, answer_id: choice6.id)
  response11 = Response.create!(user_id: user3.id, answer_id: choice8.id)
  response12 = Response.create!(user_id: user3.id, answer_id: choice11.id)
  response13 = Response.create!(user_id: user4.id, answer_id: choice3.id)
  response14 = Response.create!(user_id: user4.id, answer_id: choice5.id)
  response15 = Response.create!(user_id: user4.id, answer_id: choice9.id)
  response16 = Response.create!(user_id: user4.id, answer_id: choice10.id)
  response17 = Response.create!(user_id: user5.id, answer_id: choice3.id)
  response18 = Response.create!(user_id: user5.id, answer_id: choice5.id)
  response19 = Response.create!(user_id: user5.id, answer_id: choice9.id)
  response20 = Response.create!(user_id: user5.id, answer_id: choice10.id)
  response21 = Response.create!(user_id: user6.id, answer_id: choice3.id)
  response23 = Response.create!(user_id: user6.id, answer_id: choice5.id)
  response24= Response.create!(user_id: user6.id, answer_id: choice9.id)
  response25 = Response.create!(user_id: user6.id, answer_id: choice10.id)
  
end
  
  
  
  