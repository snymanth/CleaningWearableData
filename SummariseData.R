cleanData = cleanData %>% group_by(subject,activity_label) %>% summarise_if(is.numeric,mean) %>% select(-activity_id)
