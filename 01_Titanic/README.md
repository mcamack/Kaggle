# Kaggle Titanic
## Kaggle_Titanic.m
* This code imports the train.csv and test.csv files, cleans some data, generates new features, and stores (up to) 53 features into Xtrain and Xtest. Additionally, the 'survived' column in train.csv is put into Ytrain for training the neural network.

## Kaggle_Titanic_nn2.m
* Uses trainscg to train with scaled conjugate gradient backpropagation
* 1 hidden layer with 17 nodes
* Training data is split into a train/validation/test ratio of 60/20/20
* Ytest = net(Xtest) 
* Submit = Ytest > 0.6    %cutoff to decide survivors
* dlmwrite('my_solution.csv', Submit', ',')
* uploaded csv to Kaggle website (https://www.kaggle.com/c/titanic/leaderboard)

# Results
* scored a 0.78469 which is higher than what I got when forking one of the highest rated Kaggle Kernels. Not bad for a first try.
