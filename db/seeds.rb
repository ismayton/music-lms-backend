@horn_teacher = Teacher.create({ username: "Horn Teacher", password: "password" })
@horn_hippie = Teacher.create({ username: "Horn Hippie", password: "password" })
@violin_teacher = Teacher.create({ username: "Violin Teacher", password: "password" })

@horn_course = Course.create(title: "Horn-a-palooza!")
@violin_course = Course.create(title: "Violins is the Answer...")
@sibelius_course = Course.create(title: "Sibelius Tutorials")
@software_course = Course.create(title: "Software Tutorials: Basics for Musicians")

@horn_teacher.courses << @horn_course
@violin_teacher.courses << @violin_course
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
        user.courses << @horn_course
        user.courses << @sibelius_course
        user.courses << @software_course
    end
    VIOLIN_STUDENTS.each do |student|
        user = User.create(student)
        user.courses << @violin_course
        user.courses << @sibelius_course
        user.courses << @software_course
    end
end

HORN_COURSE_LESSONS = [
    { title: "Horn Lesson 1", content: "First lesson for the horn!", video_url: "https://www.youtube.com/embed/o_IfWSKZSiQ" },
    { title: "Horn Lesson 2", content: "Second lesson for the horn!", video_url: "https://www.youtube.com/embed/hM8hAfZ52R8" },
    { title: "Horn Lesson 3", content: "Third lesson for the horn!", video_url: "https://www.youtube.com/embed/sTkFCEm0IBA" }
]

VIOLIN_COURSE_LESSONS = [
    { title: "Violin Lesson 1", content: "First lesson for the violin!", video_url: "https://www.youtube.com/embed/D4OOD2Z0c4U" },
    { title: "Violin Lesson 2", content: "Second lesson for the violin!", video_url: "https://www.youtube.com/embed/kwSFCqxVy-k" },
    { title: "Violin Lesson 3", content: "Third lesson for the violin!", video_url: "https://www.youtube.com/embed/Indrt17P4F0" }
]

SIBELIUS_COURSE_LESSONS = [
    { 
        title: "TOP 10 SIBELIUS TIPS FOR BEGINNERS | Sibelius Tutorial", 
        content: "Hey friends! In this one, I count down my top 10 most-useful beginner's tips for Sibelius. These apply for all versions of Sibelius 7 and newer.
        \n 0:47​ Tip #10
        \n 1:16​ TIP #9
        \n 2:06​ Tip #7
        \n 2:36​ Tip #6
        \n 3:14​ Tip #5
        \n 4:20​ Tip #4
        \n 5:07​ Tip #3
        \n 6:06​ Tip #2
        \n 6:51​ Tip #1
        \n 7:30​ Outro", 
        video_url: "https://youtube.com/embed/ujrCLHNGelk" 
    },
    { 
        title: "SIBELIUS MUSIC NOTATION SOFTWARE | BASICS FOR MUSICIANS | Sibelius Tutorial", 
        content: "Hey friends! Welcome to the first installment of #TutorialTuesday​! This is my first long-form tutorial and I loved putting it together for y'all. We cover a ton of Sibelius basics while having a liiiiiiiiiitlle bit of fun 😜. Keep in mind that the mouse clicks didn't register correctly because I was using a faulty screencapture software... Living and Learning 
        \n These tips work for any version of Sibelius 7 or higher.", 
        video_url: "https://youtube.com/embed/2eGn-onCA6w" 
    },
    { 
        title: "HIDE 'CAUTIONARY' KEY SIGNATURE | Sibelius Tutorial | Composer's Guide", 
        content: "This tutorial covers how to hide a cautionary key and cautionary key space at the end of a movement when you make multiple movement pieces in a single Sibelius document. These tools work for any version of Sibelius 7 or newer.", 
        video_url: "https://youtube.com/embed/0Ahhqx3Zvls" 
    },
    { 
        title: "CREATE A TEMPO CHANGE | Sibelius Tutorial | Composer's Guide", 
        content: "TO SKIP INTRO 0:28​ This tutorial covers how to change the tempo of a Sibelius document. I go over how to hide the tempo to show only text at the start of a section or movement.
        \n Under the TEXT tab, go to STYLE and select TEMPO TEXT. When the cursor appears, RIGHT-CLICK to show the dropdown menu with note values and their corresponding shortcuts. 
        \n This tutorial applies to all versions of Sibelius 7 or newer. Happy Composing!", 
        video_url: "https://youtube.com/embed/qeBWKQYc4-I" 
    },
    { 
        title: "HOW TO CREATE MULTIPLE MOVEMENTS | Sibelius Tutorial | Composer's Guide", 
        content: "EDIT: MAKE SURE YOU SELECT THE FINAL BARLINE OF YOUR MOVEMENT AND THEN IN HOME TAB, SELECT \"INSPECTOR\" THEN IN THE INSPECTOR PANEL, CHECK \"SECTION END.\"
        \n This tutorial covers how to create multiple Movements within one single Sibelius document. These tools work for any version of Sibelius 7 or newer.", 
        video_url: "https://youtube.com/embed/ZP-vtC3lbAA" 
    },
    { 
        title: "WRITING FOR BAROQUE GUITAR - PART 1 | Sibelius Tutorial | Composer's Guide", 
        content: "This is part 1 of 2 tutorials discussing techniques when writing or Baroque Guitar.
        \n DISCLAIMER-Italian and French Tablature Video coming out soon, this video doesn't include EVERYTHING about older styles of baroque guitar music/transcriptions. 
        \n I put together this video to demonstrate my way of writing \"modern\" tabs for the baroque guitar as well as chord diagrams and rhythmic notation.", 
        video_url: "https://youtube.com/embed/6AUC-7F6T1s" 
    },
    { 
        title: "WRITING FOR BAROQUE GUITAR - PART 2 | Tab Notation: Italian, French, Alfabeto | Sibelius Tutorial", 
        content: "In this tutorial, we cover Italian, French, and Alfabeto notation for baroque guitar. This video is for people who want to make guitar parts that are accurate to the style of notation in the baroque era.
        \n ...yes, it is VERY extra... but also, you'll make your baroque guitar friends so stoked that you know how to do this!!", 
        video_url: "https://youtube.com/embed/79o2i2_9Lp0" 
    },
    { 
        title: "CHANGE SCORE ORDER | Sibelius Tutorial | Composer's Guide", 
        content: "In this tutorial, I demo a quick trick to switch the score order in your Sibelius document without relaunching the quickstart dialog. Find the \"Add or Remove Instruments\" button in the \"Home\" tab and select it. Then, simply select the instrument(s) you wish to move, and then click \"move up\" or \"move down.\"
        \n This trick works for any version of Sibelius, 7 or newer.", 
        video_url: "https://youtube.com/embed/ZjhZhrBXusU" 
    },
    { 
        title: "ADD YOUR OWN CUSTOM QUICKSTART TEMPLATE | Sibelius Tutorial", 
        content: "Here's a quick vid about creating and saving basic Sibelius templates.
        \n This works for any version of sibelius 7 or newer", 
        video_url: "https://youtube.com/embed/DefdgNs1GL4" 
    },
    { 
        title: "CREATE A REPEAT SIGN IN THE MIDDLE OF A BAR | ADVANCED Sibelius Tutorial | Composer's Guide", 
        content: "In this tutorial, we discuss how to create a repeat sign to appear as if it is \"in the middle of a bar.\" This is particularly useful for people who want to start pieces with pickups and repeat to the start while keeping the rhythmic integrity of the \"would-be\" pickup bar. 
        \n This hack works for any version of Sibelius 7 or newer.", 
        video_url: "https://youtube.com/embed/_PrX15bUzWo" 
    },
    { 
        title: "SHOW FULL INSTRUMENT NAMES IN SCORE | Sibelius Tutorial | Composer's Guide", 
        content: "TO SKIP INTRO: 0:39​ This video is a response to comments I received on https://www.youtube.com/watch?v=ZP-vt...​ on how to show full instrument names in a new movement. 
        \n MAJOR shoutout to @newtrinitybaroque for posting this solution!", 
        video_url: "https://youtube.com/embed/lJ9VXeOGeDE" 
    },
    
    { 
        title: "NOTATE \"CHINA CYMBAL\" | DRUMSET NOTATION | Sibelius Tutorial | Composer's Guide", 
        content: "This tutorial covers the process of changing a regular notehead to an ornate cross with a circle. This is usually used to designate a \"China Cymbal\" hit in a drum set part.
        \n This hack works for versions of Sibelius 7 and higher.", 
        video_url: "https://youtube.com/embed/752UBTP01b4" 
    }
]

SOFTWARE_COURSE_LESSONS = [
    { 
        title: "FINAL CUT PRO X | BASICS FOR MUSICIANS | Software Tutorial", 
        content: "Hey friends! This is a walkthrough tutorial where I ramble, scramble, and gamble my way through all of my favorite tips and tricks in Final Cut Pro X. 
        \n Below is a list of all the general topics covered. Watch the whole video to make sure you don't miss anything though ;)", 
        video_url: "https://youtube.com/embed/i4Iw9o-hUEQ" 
    },
    { 
        title: "LOGIC PRO X | BASCIS FOR MUSICIANS | Software Tutorial", 
        content: "Hey friends! This is another walkthrough tutorial where I ramble, scramble, and gamble my way through all of my favorite starter-pack tips and tricks in Logic Pro X! 
        \n There are so many things we have yet to cover, but over a half hour we introduce how to record into logic and go through a basic mixing process for a simple project.", 
        video_url: "https://youtube.com/embed/QwGC7xsjHkE" 
    },
    { 
        title: "SIBELIUS MUSIC NOTATION SOFTWARE | BASICS FOR MUSICIANS | Sibelius Tutorial", 
        content: "Hey friends! Welcome to the first installment of #TutorialTuesday​! This is my first long-form tutorial and I loved putting it together for y'all. We cover a ton of Sibelius basics while having a liiiiiiiiiitlle bit of fun 😜. Keep in mind that the mouse clicks didn't register correctly because I was using a faulty screencapture software... Living and Learning 
        \n These tips work for any version of Sibelius 7 or higher.", 
        video_url: "https://youtube.com/embed/2eGn-onCA6w" 
    },
    { 
        title: "4 ZOOM TIPS FOR MUSIC TEACHERS | BASICS FOR MUSICIANS | Remotely Teach Music With Zoom", 
        content: "Hey friends! These are my top 4 tips for teaching music on zoom. 
        \n (Number 4 is V IMPORTANT)", 
        video_url: "https://youtube.com/embed/wnwLOg3zKs4" 
    }
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
    SIBELIUS_COURSE_LESSONS.each do |lesson|
        lesson = Lesson.create(lesson)
        @sibelius_course.lessons << lesson
    end
    SOFTWARE_COURSE_LESSONS.each do |lesson|
        lesson = Lesson.create(lesson)
        @software_course.lessons << lesson
    end
end

create_users
create_lessons