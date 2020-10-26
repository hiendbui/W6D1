# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

user1 = User.create(username: 'tony_baloney')
user2 = User.create(username: 'hien_bui')

poll1 = Poll.create(title: "Video Games", user_id: user1.id)
poll2 = Poll.create(title: "Baseball", user_id: user1.id)

poll3 = Poll.create(title: "Coffee", user_id: user2.id)
poll4 = Poll.create(title: "Basketball", user_id: user2.id)

question_1_poll1 = Question.create(question: "What is the name of Crytek's FPS that takes place in the Louisiana Bayou?", poll_id: poll1.id)
question_2_poll1 = Question.create(question: "In what game can you vote out people who are sus?", poll_id: poll1.id)

question_1_poll2 = Question.create(question: "What is Tony Baloney's favorite baseball team?", poll_id: poll2.id)

question_1_poll3 = Question.create(question: "Do you prefer coffee from Ethiopia or Kenya?", poll_id: poll3.id)

question_1_poll4 = Question.create(question: "Who is the greatest basketball player of all time?", poll_id: poll4.id)
question_2_poll4 = Question.create(question: "Who will win a title next year?", poll_id: poll3.id)

answer_1_q1_p1 = AnswerChoice.create(text: 'Hunt: Showdown', question_id: question_1_poll1.id)
answer_2_q1_p1 = AnswerChoice.create(text: 'Crysis Remastered', question_id: question_1_poll1.id)

answer_1_q2_p1 = AnswerChoice.create(text: 'Among Us', question_id: question_2_poll1.id)

answer_1_q1_p2 = AnswerChoice.create(text: 'New York Yankees', question_id: question_1_poll2.id)

answer_1_q1_p3 = AnswerChoice.create(text: 'Ethiopia', question_id: question_1_poll3.id)
answer_2_q1_p3 = AnswerChoice.create(text: 'Kenya', question_id: question_1_poll3.id)

answer_1_q1_p4 = AnswerChoice.create(text: 'LeBron James', question_id: question_1_poll4.id)
answer_2_q1_p4 = AnswerChoice.create(text: 'Michael Jordan', question_id: question_1_poll4.id)

answer_1_q2_p4 = AnswerChoice.create(text: 'Lakers', question_id: question_2_poll4.id)
answer_2_q2_p4 = AnswerChoice.create(text: 'Warriors', question_id: question_2_poll4.id)

response_1_q1_p3 = Response.create(answer_choice_id: answer_1_q1_p3.id, user_id: user2.id )
response_1_q1_p4 = Response.create(answer_choice_id: answer_2_q1_p4.id, user_id: user2.id )
response_1_q2_p4 = Response.create(answer_choice_id: answer_2_q2_p4.id, user_id: user2.id )

response_1_q1_p1 = Response.create(answer_choice_id: answer_1_q1_p1.id, user_id: user1.id )
response_1_q2_p1 = Response.create(answer_choice_id: answer_1_q2_p1.id, user_id: user1.id )
response_1_q1_p2 = Response.create(answer_choice_id: answer_1_q1_p2.id, user_id: user1.id )