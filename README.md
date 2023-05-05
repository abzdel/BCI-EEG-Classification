[![Makefile CI](https://github.com/abzdel/BCI-EEG-Classification/actions/workflows/makefile.yml/badge.svg?branch=main)](https://github.com/abzdel/BCI-EEG-Classification/actions/workflows/makefile.yml)
# Improving Feedback in Massive Open Online Course (MOOC) Learning through EEG Analysis
As online learning platforms become increasingly popular, one of the main challenges is obtaining feedback from students about lesson clarity. In traditional classroom settings, teachers can observe their students' facial expressions and body language for signs of confusion, but online learning can lack real-time responses and even the absence of facial expressions if cameras are turned off. To address this issue, graduate student researchers at Carnegie Mellon University designed a classifier using a commercially available electroencephalography (EEG) headset recorder device, which showed weak but above-chance performance in determining whether a student was confused or not (Wang, Li, et. al, 2011).

Our research seeks to reproduce their results and improve upon their classifier by implementing a more stringent model selection process, feature selection, scaling, and grid search cross-validation for hyperparameter optimization. Specifically, we explore the effectiveness of these techniques in improving the accuracy of the EEG-based feedback interaction model for Massive Open Online Courses (MOOCs). By applying these techniques, we aim to improve the accuracy of the classifier and demonstrate the effectiveness of the techniques in improving EEG-based feedback interaction for online learning platforms.

***Our [paper](https://github.com/abzdel/BCI-EEG-Classification/blob/main/reports/EEG%20Analysis%20-%20Amanda%20Breton%20%2B%20Alex%20Bzdel.pdf) and [slides](https://github.com/abzdel/BCI-EEG-Classification/blob/main/reports/EEG%20Analysis%20-%20Amanda%20Breton%20%2B%20Alex%20Bzdel%20Slides.pdf) can be found in the [reports](https://github.com/abzdel/BCI-EEG-Classification/tree/main/reports) folder of this repository***

# Methods
We aimed to improve the accuracy of a classification task using multiple methods. We tested six industry-standard classifiers, including logistic regression, KNN, SVM, random forest, decision tree, and Naive Bayes, with grid search cross-validation to optimize hyperparameters.

We also implemented LASSO regularization for feature selection and analyzed a correlation heatmap to identify important features. We scaled the data using standardization before training, and tested each model using raw data, scaled data, feature-selected data, and scaled feature-selected data. 

Our results showed that the subset of features including Beta1, Alpha1, Gamma2, and Theta achieved the best balance between multicollinearity and individual feature importance. Additionally, our investigation into generating statistical features from the theta band did not result in significant improvements to classification accuracy.

Our findings, as presented in the Results section below, demonstrate a notable enhancement in the accuracy of the classification task by leveraging the various methods discussed above, including the use of multiple models and the implementation of grid search cross-validation, feature selection using LASSO, and scaling of data.

# Architectural Diagram
![bci-classification-diagram drawio](https://user-images.githubusercontent.com/55398496/236544662-1322e18a-d4e2-4683-8cd0-5bac819f4647.png)


# Results
We were able to improve the accuracy of the classification tasks in three out of four cases. Here are our results for the student-specific, personalized models:
![image](https://user-images.githubusercontent.com/55398496/236548236-a66526f1-1abe-4158-a28c-606d2737589c.png)

Our decision tree was the best model for both predefined and student-defined confusion. The models that achieved the accuracies in the figure above were achieved by standardizing the data and using the entire feature set rather than selecting the subset of features we mention in Methods. Our model had 83% accuracy for user-defined confusion as compared to the 56% baseline in the original paper (27% increase). We were unable to increase the accuracy for the predefined confusion target.

Here are our results for the student-independent, more generalized models:
![image](https://user-images.githubusercontent.com/55398496/236548822-ecb24724-36ef-4290-b52d-6cc4023bb4d8.png)

Random forest models performed the best for these student-independent experiments, with the best model for predefined confusion trained on standardized and feature-selected data. We saw an accuracy of 65% for this task, as compared to 57% in the original paper (8% increase). The best model for student-defined confusion used the entire feature set with no standardization. For this model, we had an accuracy of 74%, increased from the original researchers' 51% (23% increase).

The decision tree and KNN models had moderately worse results but took less time to train than random forests. Decision trees and random forests were the best performers due to their hierarchical approach in decision making and were more interpretable than other models. We have a further analysis of overfitting and the impact of regularization in our paper.



# Authors

Alex Bzdel
- [LinkedIn](https://www.linkedin.com/in/alexbzdel/)
- [GitHub](https://github.com/abzdel)
 
Amanda Breton
- [LinkedIn](https://www.linkedin.com/in/amandabreton/)
- [GitHub](https://github.com/anbreton)
