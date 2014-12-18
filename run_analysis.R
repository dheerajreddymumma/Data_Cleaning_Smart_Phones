subject_train<-read.table("train/subject_train.txt")

X_train<-read.table("train/X_train.txt")
y_train<-read.table("train/y_train.txt")


activity_labels<-read.table("activity_labels.txt")
y_train[,1]<-factor(y_train[,1],labels=activity_labels[,2])


features<-read.table("features.txt")
names(X_train)<-features[,2]
X_train$Subject<-subject_train[,1]
X_train$Activity<-y_train[,1]

subject_test<-read.table("test/subject_test.txt")
X_test<-read.table("test/X_test.txt")
y_test<-read.table("test/y_test.txt")
y_test[,1]<-factor(y_test[,1],labels=activity_labels[,2])
names(X_test)<-features[,2]
X_test$Subject<-subject_test[,1]
X_test$Activity<-y_test[,1]

X<-rbind(X_train,X_test)
X_modi<-X[,grep("[m][Ee][Aa][Nn][()]|[s][Tt][Dd][()]|Subject|Activity",names(X),value=TRUE)]
names(X_modi)<-gsub("-",".",names(X_modi))
X_last<-aggregate( as.matrix(X_modi[,1:66]), as.list(X_modi[,67:68]), FUN = mean)
X_last<-X_last[order(X_last$Subject,X_last$Activity),]
write.table(X_last,"D:/UCI HAR Dataset/analysis.txt",row.name=FALSE)