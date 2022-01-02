# install the openxlsx library.
install.packages ( "openxlsx" )
# Load the openxlsx library.
library( openxlsx )


FAST_Admission <-read.xlsx("D:/MSDS/Semester 1/Stats and Math/Project/Admission 2019 Data for ISB Campus.xlsx.")
View(FAST_Admission)
# ################################################## Question 6 ################################################## #

# Matric-Marks of all students thoes have been offered admission in BBA/BS(AF) based on NU-Test.
Matric_Marks_BBA_BS_AF = tail(FAST_Admission[!is.na(FAST_Admission$NU.Merit.Marks), ]$X16, -1)
# NU-Test score of BBA/BS(AF)
BBA_BS_AF_NU_Score = tail(FAST_Admission[!is.na(FAST_Admission$NU.Merit.Marks), ]$NU.Merit.Marks, -1)

# Matric-Marks of all students thoes have been offered admission in BS based on NU-Test 
Matric_Marks_BS = tail(FAST_Admission[!is.na(FAST_Admission$X24), ]$X16, -1)
# NU-Test score of BS. 
BS_NU_Score = tail(FAST_Admission[!is.na(FAST_Admission$X24), ]$X24, -1)


cor(as.integer(Matric_Marks_BBA_BS_AF), as.integer(BBA_BS_AF_NU_Score))

cor(as.integer(Matric_Marks_BS),as.integer(BS_NU_Score))


