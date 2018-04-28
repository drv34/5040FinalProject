from sklearn import tree
import numpy as np
import matplotlib.pyplot as plt
import scipy.io
from sklearn.svm import SVC
from sklearn.neighbors import KNeighborsClassifier
from sklearn import model_selection
import os.path

from sklearn.metrics import classification_report
from sklearn.metrics import confusion_matrix
from sklearn.metrics import accuracy_score

for i in range (1,2):
    filename = os.path.dirname(os.path.abspath(__file__)) + '/features/patient_' + str(i) + '.mat'
    datafile = scipy.io.loadmat(filename, squeeze_me = True)
    data_array = datafile.get('patient_' + str(i))

    X_train = data_array[:, :-1]
    Y_train = data_array[:, -1]

    X_train, X_validation, Y_train, Y_validation = model_selection.train_test_split(X_train, Y_train, test_size=0.2, random_state=7)

    kfold = model_selection.KFold(n_splits=25, shuffle = True)
    cv_results = model_selection.cross_val_score(SVC(), X_train, Y_train, cv=kfold, scoring='accuracy')
    avg_score = sum(cv_results)/len(cv_results)
    # msg = "%f (%f)" % (cv_results.mean(), cv_results.std())
    print(avg_score)
