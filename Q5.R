# install the openxlsx library.
install.packages ( "openxlsx" )
# Load the openxlsx library.
library( openxlsx )


FAST_Admission <-read.xlsx("D:/MSDS/Semester 1/Stats and Math/Project/Admission 2019 Data for ISB Campus.xlsx.")
View(FAST_Admission)
# ################################################## Question 5 ################################################## #

Admission_BS_Programs = FAST_Admission$Discpline.Pref.[c(-1)]
FAST_Campuses = FAST_Admission$Campus.Pref[c(-1)]
table(FAST_Campuses,Admission_BS_Programs, dnn = c("FAST Campuses   ","FAST BS Programs"))
