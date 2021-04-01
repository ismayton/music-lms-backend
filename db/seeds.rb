@horn_teacher = Teacher.create({ username: "Horn Teacher", password: "password" })
@violin_teacher = Teacher.create({ username: "Violin Teacher", password: "password" })

@horn_course = Course.create(title: "Horn-a-palooza!")
@violin_course = Course.create(title: "Violins is the Answer...")


@horn_teacher.courses << @horn_course
@violin_teacher.courses << @violin_course

HORN_STUDENTS = [
    { username: "Horn Student 1", password: "password" },
    { username: "Horn Student 2", password: "password" },
    { username: "Horn Student 3", password: "password" }
]

VIOLIN_STUDENTS = [
    { username: "Violin Student 1", password: "password" },
    { username: "Violin Student 2", password: "password" },
    { username: "Violin Student 3", password: "password" }
]

def create_users
    HORN_STUDENTS.each do |student|
        user = User.create(student)
        user.courses << @horn_course
    end
    VIOLIN_STUDENTS.each do |student|
        user = User.create(student)
        user.courses << @violin_course
    end
end

HORN_COURSE_LESSONS = [
    { title: "Horn Lesson 1", content: "First lesson for the horn!", video_url: "https://www.youtube.com/watch?v=QojnRc7SS9o" },
    { title: "Horn Lesson 2", content: "Second lesson for the horn!", video_url: "https://www.youtube.com/watch?v=QojnRc7SS9o" },
    { title: "Horn Lesson 3", content: "Third lesson for the horn!", video_url: "https://www.youtube.com/watch?v=QojnRc7SS9o" }
]

VIOLIN_COURSE_LESSONS = [
    { title: "Violin Lesson 1", content: "First lesson for the violin!", video_url: "https://www.youtube.com/watch?v=QojnRc7SS9o" },
    { title: "Violin Lesson 2", content: "Second lesson for the violin!", video_url: "https://www.youtube.com/watch?v=QojnRc7SS9o" },
    { title: "Violin Lesson 3", content: "Third lesson for the violin!", video_url: "https://www.youtube.com/watch?v=QojnRc7SS9o" }
]

def create_lessons
    HORN_COURSE_LESSONS.each do |lesson|
        lesson = Lesson.create(lesson)
        @horn_course.lessons << lesson
    end
    VIOLIN_COURSE_LESSONS.each do |lesson|
        lesson = Lesson.create(lesson)
        @violin_course.lessons << lesson
    end
end

create_users
create_lessons