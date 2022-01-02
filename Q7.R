# install the openxlsx library.
install.packages ( "openxlsx" )
# Load the openxlsx library.
library( openxlsx )


FAST_Admission <-read.xlsx("D:/MSDS/Semester 1/Stats and Math/Project/Admission 2019 Data for ISB Campus.xlsx.")
View(FAST_Admission)
# ################################################## Question# 7 ################################################## #

# All boards of intermediate
Board_of_Intermediate = FAST_Admission$Intermediate[c(-1)]

# Admission offered based on NTS-Test
NTS_Test_admission = FAST_Admission$X33[c(-1)]
# Admission offered based on NU-Test
NU_Test_admission = FAST_Admission$X35[c(-1)]

NTS_Test_admission[is.na(NTS_Test_admission)]=""
NU_Test_admission[is.na(NU_Test_admission)]=""

# Admission offered based on NTS/NU Test
NU_NTS_Test_admission = paste( NTS_Test_admission,NU_Test_admission,sep = "")


table(Board_of_Intermediate, NU_NTS_Test_admission != "",dnn = c("All boards of intermediate"," Admission offered in NU"))
prop.table(table(Board_of_Intermediate, NU_NTS_Test_admission != "",dnn = c("All boards of intermediate"," Admission offered in NU ") ),margin = 1)

