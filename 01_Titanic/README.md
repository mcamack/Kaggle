# Kaggle Titanic
## Kaggle_Titanic.m
* This code imports the train.csv and test.csv files, cleans some data, generates new features, and stores (up to) 53 features into Xtrain and Xtest. Additionally, the 'survived' column in train.csv is put into Ytrain for training the neural network.

## Kaggle_Titanic_nn2.m
* Uses trainscg to train with scaled conjugate gradient backpropagation
* 1 hidden layer with 17 nodes  
![Alt text](network.png?raw=true)
* Training data is split into a train/validation/test ratio of 60/20/20

## Training
![Alt text](performance.png?raw=true)
![Alt text](hist.png?raw=true)  
![Alt text](Confusion.png?raw=true)  
Decent performance for True Positives (TP), True Negatives (TN), False Positives (FP), and False Negatives (FN)  
* Ytest = net(Xtest)
* Submit = Ytest > 0.6    %cutoff to decide survivors
* dlmwrite('my_solution.csv', Submit', ',')
* uploaded csv to Kaggle website (https://www.kaggle.com/c/titanic/leaderboard)

# Testing and Results
Scored a 0.78469 which is higher than what I got when forking one of the highest rated Kaggle Kernels.
