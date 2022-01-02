# install the openxlsx library.
install.packages ( "openxlsx" )
# Load the openxlsx library.
library( openxlsx )


FAST_Admission <-read.xlsx("D:/MSDS/Semester 1/Stats and Math/Project/Admission 2019 Data for ISB Campus.xlsx.")
View(FAST_Admission)
# ################################################## Question 8 ################################################## #

# ###################################################### Sindh ###############################################
# Province Sindh NU-Test BBA
temp = FAST_Admission[!is.na(FAST_Admission$Intermediate) & !is.na(FAST_Admission$NU.Test.Marks) &
       (FAST_Admission$Intermediate == "Hyderabad" | FAST_Admission$Intermediate == "Larkana" |
        FAST_Admission$Intermediate == "Mirpur Khas" | FAST_Admission$Intermediate == "Agha Khan" |
        FAST_Admission$Intermediate == "Karachi" | FAST_Admission$Intermediate == "Sukkur" |
        FAST_Admission$Intermediate == "Sindh Technical") ,]
# mean of sindh province of NU-Test for BBA
mean(as.numeric(temp$NU.Test.Marks))
remove(temp)

# Province Sindh NU-Test BS
temp = FAST_Admission[!is.na(FAST_Admission$Intermediate) & !is.na(FAST_Admission$X24) &
                              (FAST_Admission$Intermediate == "Hyderabad" | FAST_Admission$Intermediate == "Larkana" |
                                       FAST_Admission$Intermediate == "Mirpur Khas" | FAST_Admission$Intermediate == "Agha Khan" |
                                       FAST_Admission$Intermediate == "Karachi" | FAST_Admission$Intermediate == "Sukkur" |
                                       FAST_Admission$Intermediate == "Sindh Technical") ,]
# mean of sindh province of NU-Test for BS
mean(as.numeric(temp$X24))
nrow(temp)
remove(temp)

# ###################################################### Punjab ###############################################
# Province Punjab NU-Test BBA
temp = FAST_Admission[!is.na(FAST_Admission$Intermediate) & !is.na(FAST_Admission$NU.Test.Marks) &
                        (FAST_Admission$Intermediate == "Peshawar" | FAST_Admission$Intermediate == "Punjab Technical" |
                        FAST_Admission$Intermediate == "Sargodha" | FAST_Admission$Intermediate == "D.G.Khan" |
                        FAST_Admission$Intermediate == "Faislabad" | FAST_Admission$Intermediate == "Rawalpindi" |
                        FAST_Admission$Intermediate == "Bahawalpur" | FAST_Admission$Intermediate == "Multan" |
                        FAST_Admission$Intermediate == "Sialkot" | FAST_Admission$Intermediate == "Lahore" |
                        FAST_Admission$Intermediate == "Gujranwala" | FAST_Admission$Intermediate == "Sahiwal" |
                        FAST_Admission$Intermediate == "Armed Forces" ) ,]
# mean of Punjab province of NU-Test for BBA
mean(as.numeric(temp$NU.Test.Marks))
remove(temp)

# Province Punjab NU-Test BS
temp = FAST_Admission[!is.na(FAST_Admission$Intermediate) & !is.na(FAST_Admission$X24) &
                (FAST_Admission$Intermediate == "Peshawar" | FAST_Admission$Intermediate == "Punjab Technical" |
                     FAST_Admission$Intermediate == "Sargodha" | FAST_Admission$Intermediate == "D.G.Khan" |
                     FAST_Admission$Intermediate == "Faislabad" | FAST_Admission$Intermediate == "Rawalpindi" |
                     FAST_Admission$Intermediate == "Bahawalpur" | FAST_Admission$Intermediate == "Multan" |
                     FAST_Admission$Intermediate == "Sialkot" | FAST_Admission$Intermediate == "Lahore" |
                     FAST_Admission$Intermediate == "Gujranwala" | FAST_Admission$Intermediate == "Sahiwal" |
                                       FAST_Admission$Intermediate == "Armed Forces" ) ,]
# mean of Punjab province of NU-Test for BS
mean(as.numeric(temp$X24))
nrow(temp)
remove(temp)

# ###################################################### Balochistan ###############################################
# Province Balochistan NU-Test BBA
temp = FAST_Admission[!is.na(FAST_Admission$Intermediate) & !is.na(FAST_Admission$NU.Test.Marks) &
                              (FAST_Admission$Intermediate == "Quetta" ) ,]

# mean of Balochistan province of NU-Test for BBA
mean(as.numeric(temp$NU.Test.Marks))
remove(temp)

# Province Balochistan NU-Test BS
temp = FAST_Admission[!is.na(FAST_Admission$Intermediate) & !is.na(FAST_Admission$X24) &
                              (FAST_Admission$Intermediate == "Quetta" ) ,]

# mean of Balochistan province of NU-Test for BS
mean(as.numeric(temp$X24))
nrow(temp)
remove(temp)

# ###################################################### Khyber Pakhtunkhwa ###############################################
# Province Khyber Pakhtunkhwa NU-Test BBA
temp = FAST_Admission[!is.na(FAST_Admission$Intermediate) & !is.na(FAST_Admission$NU.Test.Marks) &
                              (FAST_Admission$Intermediate == "D.I.Khan" | FAST_Admission$Intermediate == "Abbotabad" |
                                       FAST_Admission$Intermediate == "Mardan" | FAST_Admission$Intermediate == "D.G.Khan" |
                                       FAST_Admission$Intermediate == "Malakand Div" | FAST_Admission$Intermediate == "Bannu" |
                                       FAST_Admission$Intermediate == "Kohat" ) ,]
# mean of Khyber Pakhtunkhwa province of NU-Test for BBA
mean(as.numeric(temp$NU.Test.Marks))
remove(temp)

# Province Khyber Pakhtunkhwa NU-Test BS
temp = FAST_Admission[!is.na(FAST_Admission$Intermediate) & !is.na(FAST_Admission$X24) &
                              (FAST_Admission$Intermediate == "D.I.Khan" | FAST_Admission$Intermediate == "Abbotabad" |
                                       FAST_Admission$Intermediate == "Mardan" | FAST_Admission$Intermediate == "D.G.Khan" |
                                       FAST_Admission$Intermediate == "Malakand Div" | FAST_Admission$Intermediate == "Bannu" |
                                       FAST_Admission$Intermediate == "Kohat" ) ,]
# mean of Khyber Pakhtunkhwa province of NU-Test for BS
mean(as.numeric(temp$X24))
nrow(temp)
remove(temp)

# ###################################################### Federal ###############################################
# Province Federal NU-Test BBA
temp = FAST_Admission[!is.na(FAST_Admission$Intermediate) & !is.na(FAST_Admission$NU.Test.Marks) &
                                       FAST_Admission$Intermediate == "Federal" ,]

# mean of Federal province of NU-Test for BBA
mean(as.numeric(temp$NU.Test.Marks))
remove(temp)

# Province Federal NU-Test BS
temp = FAST_Admission[!is.na(FAST_Admission$Intermediate) & !is.na(FAST_Admission$X24) &
                              FAST_Admission$Intermediate == "Federal" ,]
# mean of Federal province of NU-Test for BS
mean(as.numeric(temp$X24))
nrow(temp)
remove(temp)

