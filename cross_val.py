from sklearn import tree
import numpy as np
import matplotlib.pyplot as plt
import scipy.io
from sklearn.svm import SVC
from sklearn import model_selection
import os.path


for i in range (1,8):
    filename = os.path.dirname(os.path.abspath(__file__)) + '/features/patient_' + str(i) + '.mat'
    datafile = scipy.io.loadmat(filename, squeeze_me = True)
    data_array = datafile.get('patient_' + str(i))

    X_train = data_array[:, :-1]
    Y_train = data_array[:, -1]

    kfold = model_selection.KFold(n_splits=15, shuffle = True)
    cv_results = model_selection.cross_val_score(SVC(), X_train, Y_train, cv=kfold, scoring='accuracy')
    msg = "%f (%f)" % (cv_results.mean(), cv_results.std())
    print(msg)
