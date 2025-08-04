dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results or Tasks")
dir.create("plots")
install.packages("readr")

patient_info<- read.csv(file.choose())
View(patient_info)
str(patient_info)

patient_info$gender<-as.factor(patient_info$gender)
str(patient_info)

patient_info$diagnosis<- as.factor(patient_info$diagnosis)
str(patient_info)

patient_info$smoker<- as.factor(patient_info$smoker)
str(patient_info)




install.packages("dplyr")

patient_info$smoking_status<- ifelse(patient_info$smoker == "Yes", 1, 0)
str(patient_info)

write.csv(patient_info, file = "clean_data/patient_info_clean.csv")

