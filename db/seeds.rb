# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: "Demo User", password: "password")
teacher = Teacher.create(username: "Demo Teacher", password: "password")

course = Course.create(title: "Demo Teacher's First Course")
lesson = Lesson.create(title: "A Wonderful Lesson", content: "Here is the content for the lesson!", video_url: "https://www.youtube.com/watch?v=QojnRc7SS9o")

course.lessons << lesson
teacher.courses << course
user.courses << course