@horn_hippie = Teacher.create({ username: "Horn Hippie", password: "password" })

@sibelius_course = Course.create(title: "Sibelius Tutorials")
@software_course = Course.create(title: "Software Tutorials: Basics for Musicians")

@horn_hippie.courses << @sibelius_course
@horn_hippie.courses << @software_course

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

    end
    VIOLIN_STUDENTS.each do |student|
        user = User.create(student)
    end
end

SIBELIUS_COURSE_LESSONS = [
    { 
        title: "TOP 10 SIBELIUS TIPS FOR BEGINNERS", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/1.md"
    },
    { 
        title: "SIBELIUS MUSIC NOTATION SOFTWARE", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/2.md"
    },
    { 
        title: "HIDE 'CAUTIONARY' KEY SIGNATURE", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/3.md"
    },
    { 
        title: "CREATE A TEMPO CHANGE", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/4.md"
    },
    { 
        title: "HOW TO CREATE MULTIPLE MOVEMENTS", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/5.md"
    },
    { 
        title: "WRITING FOR BAROQUE GUITAR - PART 1", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/6.md"
    },
    { 
        title: "WRITING FOR BAROQUE GUITAR - PART 2", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/7.md"
    },
    { 
        title: "CHANGE SCORE ORDER", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/8.md"
    },
    { 
        title: "ADD YOUR OWN CUSTOM QUICKSTART TEMPLATE", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/9.md"
    },
    { 
        title: "CREATE A REPEAT SIGN IN THE MIDDLE OF A BAR", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/10.md"
    },
    { 
        title: "SHOW FULL INSTRUMENT NAMES IN SCORE", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/11.md"

    },
    
    { 
        title: "NOTATE \"CHINA CYMBAL\" | DRUMSET NOTATION", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/12.md"
    }
]

SOFTWARE_COURSE_LESSONS = [
    { 
        title: "FINAL CUT PRO X", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/software-tutorials/1.md"
    },
    { 
        title: "LOGIC PRO X", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/software-tutorials/2.md"
    },
    { 
        title: "SIBELIUS MUSIC NOTATION SOFTWARE", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/sibelius-tutorials/2.md"
    },
    { 
        title: "4 ZOOM TIPS FOR MUSIC TEACHERS", 
        markdown_url: "https://raw.githubusercontent.com/ismayton/horn-hippie-media-academy/main/software-tutorials/3.md"
    }
]

def create_lessons
    SIBELIUS_COURSE_LESSONS.each do |lesson|
        lesson = Lesson.create(lesson)
        @sibelius_course.lessons << lesson
    end
    SOFTWARE_COURSE_LESSONS.each do |lesson|
        lesson = Lesson.create(lesson)
        @software_course.lessons << lesson
    end
end

def subscribe_users 
    User.all.each do |user| 
        user.courses << @sibelius_course
    end
end


create_users
create_lessons
subscribe_users