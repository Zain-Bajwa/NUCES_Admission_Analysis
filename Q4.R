# install the openxlsx library.
install.packages ( "openxlsx" )
# Load the openxlsx library.
library( openxlsx )

FAST_Admission<-read.xlsx("D:/MSDS/Semester 1/Stats and Math/Project/Admission 2019 Data for ISB Campus.xlsx.")


View(FAST_Admission)

# ################################################## Question 4 ################################################## #

#  Intermediate Marks of all students offered admission based on NU-Test
NU_Inter_Marks = tail(FAST_Admission[!is.na(FAST_Admission$X35)  , ]$X20, -1)

#  Intermediate Marks of all students offered admission based on NTS-Test
NTS_Inter_Marks = tail(FAST_Admission[!is.na(FAST_Admission$X33)  , ]$X20, -1)

# Bs-Merit of all student based on NU-Test
BS_Marit_NU = tail(FAST_Admission[!is.na(FAST_Admission$X35)  , ]$X31, -1)

# BBA/BS/AF-Merit of all student based on NU-Test
BBA_BS_AF_Merit_NU = tail(FAST_Admission[!is.na(FAST_Admission$X35)  , ]$NU.Merit.Marks, -1)

# Merit of all student based on NTS-Test
NTS_Test_Merit = tail(FAST_Admission[!is.na(FAST_Admission$X33)  , ]$X29, -1)

# Remove NA values and convert into integer
NU_Inter_Marks = as.integer(NU_Inter_Marks[!is.na(NU_Inter_Marks)])
NTS_Inter_Marks = as.integer(NTS_Inter_Marks[!is.na(NTS_Inter_Marks)])
BS_Marit_NU = as.integer(BS_Marit_NU[!is.na(BS_Marit_NU)])
BBA_BS_AF_Merit_NU = as.integer(BBA_BS_AF_Merit_NU[!is.na(BBA_BS_AF_Merit_NU)])
NTS_Test_Merit = as.integer(NTS_Test_Merit[!is.na(NTS_Test_Merit)])

# Remove outliers in Inter-Marks
outliers = boxplot(NU_Inter_Marks, plot = FALSE)$out
NU_Inter_Marks <- NU_Inter_Marks[-which(NU_Inter_Marks %in% outliers)]


# Mean
mean(NU_Inter_Marks)
mean(NTS_Inter_Marks)
mean(BS_Marit_NU)
mean(BBA_BS_AF_Merit_NU)
mean(NTS_Test_Merit)

