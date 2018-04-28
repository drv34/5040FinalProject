from sklearn import tree
import csv
import numpy as np
import matplotlib.pyplot as plt
import scipy.io
from sklearn import model_selection
from sklearn.svm import SVC
from sklearn.neighbors import KNeighborsClassifier as KNN
from sklearn.naive_bayes import GaussianNB
from sklearn.ensemble import GradientBoostingClassifier as GB
import os.path

with open('features/submission.csv', 'wb') as file:
    file.write('id,prediction')
    for i in range (1,8):
        filename = os.path.dirname(os.path.abspath(__file__)) + '/features/patient_' + str(i) + '.mat'
        trainingfile = scipy.io.loadmat(filename, squeeze_me = True)
        training_array = datafile.get('patient_' + str(i))

        X_train = data_array[:, :-1]
        Y_train = data_array[:, -1]

        filename = os.path.dirname(os.path.abspath(__file__)) + '/features/patient_' + str(i) + '_test.mat'
        testfile = scipy.io.loadmat(filename, squeeze_me = True)
        test_array = testfile.get('patient_' + str(i) + '_test')

        X_test = test_array
        X_test = np.nan_to_num(X_test)

        classifier = GB().fit(X_train, Y_train)
        predictions = classifier.predict_proba(X_test)
        print predictions
        counter = 1
        for p in predictions:
            file.write('\npatient_' + str(i) + '_' + str(counter) + ',' + str(p[1]))
            counter = counter + 1
