%% Import train.csv first
% Import test.csv second and all variable names will end in 1

%% Clean and create features, combine into Xtrain
vtrain1 = Age;
vtrain2 = contains(Cabin, 'A','IgnoreCase',true);
vtrain3 = contains(Cabin, 'B','IgnoreCase',true);
vtrain4 = contains(Cabin, 'C','IgnoreCase',true);
vtrain5 = contains(Cabin, 'D','IgnoreCase',true);
vtrain6 = contains(Cabin, 'E','IgnoreCase',true);
vtrain7 = contains(Cabin, 'F','IgnoreCase',true);
vtrain8 = contains(Cabin, 'G','IgnoreCase',true);
vtrain9 = contains(Cabin, 'T','IgnoreCase',true);
vtrain10 = contains(Embarked, 'S','IgnoreCase',true);
vtrain11 = contains(Embarked, 'C','IgnoreCase',true);
vtrain12 = contains(Embarked, 'Q','IgnoreCase',true);
vtrain13 = Fare;
vtrain14 = Parch;
vtrain15 = PassengerId;
vtrain16 = Pclass;
vtrain17 = contains(Sex, 'female'); %male=0, female=1
vtrain18 = SibSp;
vtrain19 = contains(Ticket, 'A/','IgnoreCase',true) | contains(Ticket, 'A./','IgnoreCase',true);
vtrain20 = contains(Ticket, 'C ','IgnoreCase',true);
vtrain21 = contains(Ticket, 'C.A','IgnoreCase',true) | contains(Ticket, 'CA','IgnoreCase',true);
vtrain22 = contains(Ticket, 'F.C.','IgnoreCase',true);
vtrain23 = contains(Ticket, 'Fa','IgnoreCase',true);
vtrain24 = contains(Ticket, 'LINE','IgnoreCase',true);
vtrain25 = contains(Ticket, 'PP','IgnoreCase',true);
vtrain26 = contains(Ticket, 'PC','IgnoreCase',true);
vtrain27 = contains(Ticket, 'S.C','IgnoreCase',true) | contains(Ticket, 'SC','IgnoreCase',true);
vtrain28 = contains(Ticket, 'S.O./P.P','IgnoreCase',true);
vtrain29 = contains(Ticket, 'S.O.C.','IgnoreCase',true);
vtrain30 = contains(Ticket, 'S.O.P.','IgnoreCase',true);
vtrain31 = contains(Ticket, 'S.P.','IgnoreCase',true);
vtrain32 = contains(Ticket, 'S.W.','IgnoreCase',true) | contains(Ticket, 'SW','IgnoreCase',true);
vtrain33 = contains(Ticket, 'PARIS','IgnoreCase',true);
vtrain34 = contains(Ticket, 'BASLE','IgnoreCase',true);
vtrain35 = contains(Ticket, 'SCO','IgnoreCase',true);
vtrain36 = contains(Ticket, 'SO/','IgnoreCase',true);
vtrain37 = contains(Ticket, 'SOTON','IgnoreCase',true);
vtrain38 = contains(Ticket, 'STON','IgnoreCase',true);
vtrain39 = contains(Ticket, 'W./C','IgnoreCase',true) | contains(Ticket, 'W/C','IgnoreCase',true);
vtrain40 = contains(Ticket, 'W.E.P','IgnoreCase',true) | contains(Ticket, 'WE/P','IgnoreCase',true);
vtrain41 = contains(Name, 'Mr.','IgnoreCase',true);
vtrain42 = contains(Name, 'Mrs.','IgnoreCase',true);
vtrain43 = contains(Name, 'Miss.','IgnoreCase',true);
vtrain44 = contains(Name, 'Master','IgnoreCase',true);
vtrain45 = contains(Name, 'Mme.','IgnoreCase',true);
vtrain46 = contains(Name, 'Lady.','IgnoreCase',true) | contains(Name, 'Sir.','IgnoreCase',true);
vtrain47 = contains(Name, 'Col.','IgnoreCase',true);
vtrain48 = contains(Name, 'Dr.','IgnoreCase',true);
vtrain49 = contains(Name, 'Countess','IgnoreCase',true);
vtrain50 = contains(Name, 'Major.','IgnoreCase',true);
vtrain51 = contains(Name, 'Rev.','IgnoreCase',true);
vtrain52 = contains(Name, 'Ms.','IgnoreCase',true);
vtrain53 = contains(Name, 'Capt.','IgnoreCase',true);

Xtrain = [vtrain1, vtrain2, vtrain3 ,vtrain4 ,vtrain5, vtrain6, vtrain7, vtrain8, vtrain9, vtrain10, ...
         vtrain11, vtrain12, vtrain13, vtrain14, vtrain15, vtrain16, vtrain17, vtrain18, vtrain19, vtrain20, ...
         vtrain21, vtrain22, vtrain23, vtrain24, vtrain25, vtrain26, vtrain27, vtrain28, vtrain29, vtrain30, ...
         vtrain31, vtrain32, vtrain33, vtrain34, vtrain35, vtrain36, vtrain37, vtrain38, vtrain39, vtrain40, ...
         vtrain41, vtrain42, vtrain43, vtrain44, vtrain45, vtrain46, vtrain47, vtrain48, vtrain49, vtrain50, ...
         vtrain51, vtrain52, vtrain53];
Xtrain2 = [vtrain1, vtrain2, vtrain3, vtrain13, vtrain14, vtrain16, vtrain17, vtrain18, vtrain39];
Xtrain3 = [vtrain1, vtrain2, vtrain8, vtrain13, vtrain14, vtrain15, vtrain16, vtrain17, ...
    vtrain18, vtrain19, vtrain24, vtrain33, vtrain39, vtrain41, vtrain42, vtrain43, vtrain44, ...
    vtrain48, vtrain53];

     
% Create Ytrain vector from Survived
Ytrain = Survived;


%% Test Data
vtest1 = Age1; %replace NaN with mean Age
vtest2 = contains(Cabin1, 'A','IgnoreCase',true);
vtest3 = contains(Cabin1, 'B','IgnoreCase',true);
vtest4 = contains(Cabin1, 'C','IgnoreCase',true);
vtest5 = contains(Cabin1, 'D','IgnoreCase',true);
vtest6 = contains(Cabin1, 'E','IgnoreCase',true);
vtest7 = contains(Cabin1, 'F','IgnoreCase',true);
vtest8 = contains(Cabin1, 'G','IgnoreCase',true);
vtest9 = contains(Cabin1, 'T','IgnoreCase',true);
vtest10 = contains(Embarked1, 'S','IgnoreCase',true);
vtest11 = contains(Embarked1, 'C','IgnoreCase',true);
vtest12 = contains(Embarked1, 'Q','IgnoreCase',true);
vtest13 = Fare1;
vtest14 = Parch1;
vtest15 = PassengerId1;
vtest16 = Pclass1;
vtest17 = contains(Sex1, 'female'); %male=0, female=1
vtest18 = SibSp1;
vtest19 = contains(Ticket1, 'A/','IgnoreCase',true) | contains(Ticket1, 'A./','IgnoreCase',true);
vtest20 = contains(Ticket1, 'C ','IgnoreCase',true);
vtest21 = contains(Ticket1, 'C.A','IgnoreCase',true) | contains(Ticket1, 'CA','IgnoreCase',true);
vtest22 = contains(Ticket1, 'F.C.','IgnoreCase',true);
vtest23 = contains(Ticket1, 'Fa','IgnoreCase',true);
vtest24 = contains(Ticket1, 'LINE','IgnoreCase',true);
vtest25 = contains(Ticket1, 'PP','IgnoreCase',true);
vtest26 = contains(Ticket1, 'PC','IgnoreCase',true);
vtest27 = contains(Ticket1, 'S.C','IgnoreCase',true) | contains(Ticket1, 'SC','IgnoreCase',true);
vtest28 = contains(Ticket1, 'S.O./P.P','IgnoreCase',true);
vtest29 = contains(Ticket1, 'S.O.C.','IgnoreCase',true);
vtest30 = contains(Ticket1, 'S.O.P.','IgnoreCase',true);
vtest31 = contains(Ticket1, 'S.P.','IgnoreCase',true);
vtest32 = contains(Ticket1, 'S.W.','IgnoreCase',true) | contains(Ticket1, 'SW','IgnoreCase',true);
vtest33 = contains(Ticket1, 'PARIS','IgnoreCase',true);
vtest34 = contains(Ticket1, 'BASLE','IgnoreCase',true);
vtest35 = contains(Ticket1, 'SCO','IgnoreCase',true);
vtest36 = contains(Ticket1, 'SO/','IgnoreCase',true);
vtest37 = contains(Ticket1, 'SOTON','IgnoreCase',true);
vtest38 = contains(Ticket1, 'STON','IgnoreCase',true);
vtest39 = contains(Ticket1, 'W./C','IgnoreCase',true) | contains(Ticket1, 'W/C','IgnoreCase',true);
vtest40 = contains(Ticket1, 'W.E.P','IgnoreCase',true) | contains(Ticket1, 'WE/P','IgnoreCase',true);
vtest41 = contains(Name1, 'Mr.','IgnoreCase',true);
vtest42 = contains(Name1, 'Mrs.','IgnoreCase',true);
vtest43 = contains(Name1, 'Miss.','IgnoreCase',true);
vtest44 = contains(Name1, 'Master','IgnoreCase',true);
vtest45 = contains(Name1, 'Mme.','IgnoreCase',true);
vtest46 = contains(Name1, 'Lady.','IgnoreCase',true) | contains(Name1, 'Sir.','IgnoreCase',true);
vtest47 = contains(Name1, 'Col.','IgnoreCase',true);
vtest48 = contains(Name1, 'Dr.','IgnoreCase',true);
vtest49 = contains(Name1, 'Countess','IgnoreCase',true);
vtest50 = contains(Name1, 'Major.','IgnoreCase',true);
vtest51 = contains(Name1, 'Rev.','IgnoreCase',true);
vtest52 = contains(Name1, 'Ms.','IgnoreCase',true);
vtest53 = contains(Name1, 'Capt.','IgnoreCase',true);

Xtest = [vtest1, vtest2, vtest3 ,vtest4 ,vtest5, vtest6, vtest7, vtest8, vtest9, vtest10, ...
         vtest11, vtest12, vtest13, vtest14, vtest15, vtest16, vtest17, vtest18, vtest19, vtest20, ...
         vtest21, vtest22, vtest23, vtest24, vtest25, vtest26, vtest27, vtest28, vtest29, vtest30, ...
         vtest31, vtest32, vtest33, vtest34, vtest35, vtest36, vtest37, vtest38, vtest39, vtest40, ...
         vtest41, vtest42, vtest43, vtest44, vtest45, vtest46, vtest47, vtest48, vtest49, vtest50, ...
         vtest51, vtest52, vtest53];
 
Xtest2 = [vtest1, vtest2, vtest3, vtest13, vtest14, vtest16, vtest17, vtest18, vtest39];
Xtest3 = [vtest1, vtest2, vtest8, vtest13, vtest14, vtest15, vtest16, vtest17, ...
    vtest18, vtest19, vtest24, vtest33, vtest39, vtest41, vtest42, vtest43, vtest44, ...
    vtest48, vtest53];