
#Combine the quantitave data with the qualititative variables - for the test data set
if(exists("testSubjects") & exists("testYData") & exists("testXData")){
  
  testData = cbind(testSubjects,testYData,testXData)
  #Remove unnecessary variables to conserve memory
  rm(testSubjects,testYData,testXData)

}else{
  stop("Variables not found. Please run LoadData.R first")
}

#Combine the quantitave data with the qualititative variables - for the train data set
if(exists("trainSubjects") & exists("trainYData") & exists("trainXData")){
  
  trainData = cbind(trainSubjects,trainYData,trainXData)
  #Remove unnecessary variables to conserve memory
  rm(trainSubjects,trainYData,trainXData)

}else{
  stop("Variables not found. Please run LoadData.R first")
}

#Merge or append the test and train data sets
allData = rbind(testData,trainData)

#Extract only the mean and std for all the variables
cleanData = allData[c(1:2,grep("(mean\\.)|(std\\.)",names(allData)))]

#Clean up the workspace to conserve memory
rm(allData,testData,trainData)

#Add meaningfull labels for the activities
cleanData = merge(cleanData,activityLabels)








