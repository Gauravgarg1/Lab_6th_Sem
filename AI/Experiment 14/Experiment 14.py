import pandas as pd
import numpy as np
import string
import seaborn as sns
import matplotlib.pyplot as plt
from nltk.corpus import stopwords
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.feature_extraction.text import TfidfTransformer
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from collections import Counter
from sklearn.metrics import classification_report,confusion_matrix
from sklearn.model_selection import GridSearchCV
%matplotlib inline
# Load data
data = pd.read_excel('data.xlsx')
# Rename names columns 
data.columns = ['label', 'messages']
data["length"] = data["messages"].apply(len)
data.sort_values(by='length', ascending=False).head(10)
data.hist(column = 'length', by ='label',figsize=(12,4), bins = 5)
def transform_message(message):
    message_not_punc = [] # Message without punctuation
    i = 0
    for punctuation in message:
        if punctuation not in string.punctuation:
            message_not_punc.append(punctuation)
    # Join words again to form the string.
    message_not_punc = ''.join(message_not_punc) 

    # Remove any stopwords for message_not_punc, but first we should     
    # to transform this into the list.
    message_clean = list(message_not_punc.split(" "))
    while i <= len(message_clean):
        for mess in message_clean:
            if mess.lower()  in stopwords.words('english'):
                message_clean.remove(mess)
        i =i +1
    return  message_clean
vectorization = CountVectorizer(analyzer = transform_message )
X = vectorization.fit(data['messages'])

X_transform = X.transform([data['messages']])

# TF-IDF
tfidf_transformer = TfidfTransformer().fit(X_transform)
X_tfidf = tfidf_transformer.transform(X_transform)
print(X_tfidf.shape)
# Classification Model

X_train, X_test, y_train, y_test = train_test_split(X_tfidf, data['messages'], test_size=0.30, random_state = 50)    
clf = SVC(kernel='linear').fit(X_train, y_train)
# Test model

predictions = clf.predict(X_test)
print('predicted', predictions)
# Is our model reliable?

print (classification_report(y_test, predictions))
print(confusion_matrix(y_test,predictions))