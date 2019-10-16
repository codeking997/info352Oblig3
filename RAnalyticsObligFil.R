file <- read.csv(file="appendix.csv", header=TRUE, sep=",")

Course = file$Course_Title
CleanCourse = gsub(" ", "_", Course)
write.table(file = "Course.txt", CleanCourse, row.names = FALSE)

instructor = file$Instructor
CleanInstructor = gsub(",", "\n", instructor)
CleanInstructor = gsub(" ", "", CleanInstructor)
#CleanInstructor = gsub("\"", "", CleanInstructor)
write.table(file = "instructor.txt", CleanInstructor, row.names = FALSE)