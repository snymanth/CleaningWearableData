
activityLabelsFile = paste0(testDataPath,"\\activity_labels.txt")
featuresFile = paste0(testDataPath,"\\features.txt")

testSubjectFile = paste0(testDataPath,"\\test\\subject_test.txt")
testXFile = paste0(testDataPath,"\\test\\X_test.txt")
testYFile = paste0(testDataPath,"\\test\\Y_test.txt")
trainSubjectFile = paste0(testDataPath,"\\train\\subject_train.txt")
trainXFile = paste0(testDataPath,"\\train\\X_train.txt")
trainYFile = paste0(testDataPath,"\\train\\Y_train.txt")

if(file.exists(activityLabelsFile)){
  activityLabels = read.table(activityLabelsFile,sep = "",header = F,col.names = c("activity_id","activity_label"))
}else{
  stop(paste0("File does not exist: ",activityLabelsFile))
}

if(file.exists(featuresFile)){
  features = read.table(featuresFile,sep = "",header = F,col.names = c("feature_id","feature"))[[2]]
}else{
  stop(paste0("File does not exist: ",featuresFile))
}

if(file.exists(testSubjectFile)){
  testSubjects = read.table(testSubjectFile,sep = "",header = F,col.names = c("subject"))
}else{
  stop(paste0("File does not exist: ",testSubjectFile))
}

if(file.exists(testXFile)){
  testXData = read.table(testXFile,sep = "",header = F,col.names = features)
}else{
  stop(paste0("File does not exist: ",testXFile))
}

if(file.exists(testYFile)){
  testYData = read.table(testYFile,sep = "",header = F,col.names = c("activity_id"))
}else{
  stop(paste0("File does not exist: ",testYFile))
}


if(file.exists(trainSubjectFile)){
  trainSubjects = read.table(trainSubjectFile,sep = "",header = F,col.names = c("subject"))
}else{
  stop(paste0("File does not exist: ",testSubjectFile))
}

if(file.exists(trainXFile)){
  trainXData = read.table(trainXFile,sep = "",header = F,col.names = features)
}else{
  stop(paste0("File does not exist: ",testXFile))
}

if(file.exists(trainYFile)){
  trainYData = read.table(trainYFile,sep = "",header = F,col.names = c("activity_id"))
}else{
  stop(paste0("File does not exist: ",testYFile))
}






