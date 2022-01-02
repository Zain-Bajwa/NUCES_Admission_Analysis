# install the openxlsx library.
install.packages ( "openxlsx" )
# Load the openxlsx library.
library( openxlsx )


FAST_Admission<-read.xlsx("D:/MSDS/Semester 1/Stats and Math/Project/Admission 2019 Data for ISB Campus.xlsx.")
View(FAST_Admission)
# ################################################## Question 1 ################################################## #
# Matric-marks based on NTS/NU test offered

offered_admission = tail(FAST_Admission[!is.na(FAST_Admission$X33) | !is.na(FAST_Admission$X35) ,]$X16, -1)
# Convert into integer
offered_admission = as.integer(offered_admission)


# Five-Number-Summery thoes students have offered
print( fivenum(offered_admission))
boxplot(offered_admission, main = "Box plot of Matric-Marks based on NU/NTS test" , ylab = "Matric-Marks")

# Getting outliers in Matric-Marks offered admission.
outliers_offered_admission = boxplot(offered_admission, plot = FALSE)$out
# Remove outliers
offered_admission <- offered_admission[-which(offered_admission %in% outliers_offered_admission)]

# Five-Number-Summery thoes students have offered
print( fivenum(offered_admission))
boxplot(offered_admission, main = "Box plot of Matric-Marks based on NU/NTS test" , ylab = "Matric-Marks")


# All students thoes have not offered but they took NU/NTS/SATI/SATII test and NU made merit of students

not_offered_admission = tail( FAST_Admission[(is.na(FAST_Admission$X33) & is.na(FAST_Admission$X35) 
                                          & (!is.na(FAST_Admission$X21) | !is.na(FAST_Admission$NU.Test.Marks) | !is.na(FAST_Admission$X24) | (is.na(FAST_Admission$X26) & is.na(FAST_Admission$X28))) 
                                          & (is.na(FAST_Admission$X29) | is.na(FAST_Admission$NU.Merit.Marks) | is.na(FAST_Admission$X31)) ) ,]$X16, -1)
# Remove NA values 
not_offered_admission = not_offered_admission[ !is.na(not_offered_admission) ]
# Convert into integer
not_offered_admission = as.integer(not_offered_admission)

# Five-Number-Summery thoes students have not offered
print(fivenum(not_offered_admission))
boxplot(not_offered_admission, main = "Box plot of Matric-Marks of students not offersd based on NU/NTS test" , ylab = "Matriculation Marks")

# Getting outliers in Matric-Marks not offered admission.
outliers_not_offered_admission = boxplot(not_offered_admission, plot = FALSE)$out
# Remove outliers
not_offered_admission <- not_offered_admission[-which(not_offered_admission %in% outliers_not_offered_admission)]

# Five-Number-Summery thoes students have not offered
print(fivenum(not_offered_admission))
boxplot(not_offered_admission, main = "Box plot of Matric-Marks of students not offersd based on NU/NTS test" , ylab = "Matriculation Marks")

# Probability
print( length(offered_admission) /(length(offered_admission) + length( not_offered_admission ) ))


