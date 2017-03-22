![Alt text](Titanic.png?raw=true)  
The training data for this competition contains a number of features variables (age, sex, cabin, etc.) for a subset of passengers on the ship, as well as a target variable (survived = 0 or 1). This data is used to train a neural network for predicting the survival status of the remaining passengers in the test data set.  
# Kaggle_Titanic.m
* This code imports the train.csv and test.csv files, cleans some data, generates new features, and stores (up to) 53 features into Xtrain and Xtest. Additionally, the 'survived' column in train.csv is put into Ytrain for training the neural network.

# Kaggle_Titanic_nn2.m
* Uses trainscg to train with scaled conjugate gradient backpropagation
* 9 input features (played around with more of the 53 I made, but got worse performance)
* 1 hidden layer with 17 nodes (this was the best number between underfitting and overfitting)
![Alt text](network.png?raw=true)
* Training data is split into a train/validation/test ratio of 60/20/20

# Training
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
