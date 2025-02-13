---
layout: page
title: Cognify
subtitle: Final Year Project
---

**Student Name:** Josh Crotty<br>
**Student Number:** 20096881<br>
**Academic Title:** Cloud-Based System for detection of Alzheimer’s Disease using Deep Learning on MRI Images
**Supervisor:** Dr. Bernard Bulter

---

## **Project Description**

Cognify is a cloud-based AI system designed to analyse MRI images and detect signs of Alzheimer’s Disease (AD) using deep learning techniques. This system leverages Magnetic Resonance Imaging (MRI) to provide a reliable and efficient diagnostic tool for researchers and healthcare professionals.
To ensure optimal performance, multiple deep learning models are trained and compared. A variety of hyperparameter tuning strategies are explored to improve accuracy and robustness. The models are evaluated using key performance metrics such as accuracy, sensitivity (recall), specificity, AUC-ROC, and F1-score. This project will focus on the comparison of selected models along with the effects of augmentation and transfer learning, compiling, and analysing each of the metrics to determine an effective architecture for Alzheimer’s Disease classification.

Additionally, sample MRI images from the ADNI dataset are showcased below to illustrate the type of data used in the project. The final report detailing the methodology, results, and findings is available below.

### **Sample scan set**

<figure>
  <img src="{{ site.baseurl }}/assets/img/ADNI_axial_plane_3_labels.png" alt="MRI Sample" width="600"/>
  <figcaption style="font-style: italic;">Unprocessed middle slice from each label in the axial plane. (CN: cognitively normal; MCI: mild cognitive impairment; AD: Alzheimer’s disease)</figcaption>
</figure>

### **Prototype model loss and accuracy curves**

Figures below show the prototype model ResNet-50 training and testing loss curves along with test accuracy over 20 epochs.

<div style="display: flex; justify-content: center; align-items: center; gap: 20px;">
  <figure>
    <img src="{{ site.baseurl }}/assets/img/model_prototype_train_and_test_loss.png" alt="Training and Test Loss Curve" width="400"/>
    <figcaption><b>Figure 1:</b>Train and Test Loss Curves</figcaption>
  </figure>

  <figure>
    <img src="{{ site.baseurl }}/assets/img/model_prototype_test_accuracy.png" alt="Model Accuracy Curve" width="400"/>
    <figcaption><b>Figure 2:</b>Test Accuracy</figcaption>
  </figure>
</div>

---

## **Technologies**

| Category                    | Technology Used                        |
| --------------------------- | -------------------------------------- |
| **Frontend**                | React, Material UI, NiiVue             |
| **Backend**                 | Node.js, Express.js                    |
| **Database**                | MongoDB                                |
| **Authentication**          | JWT                                    |
| **Deep Learning**           | PyTorch, MONAI                         |
| **Model Deployment**        | Streamlit, Docker, TorchServe, AWS     |
| **Data Processing**         | NumPy, Pandas, FSL (FLIRT/BET), Nipype |
| **Documentation & Writing** | LaTeX, Overleaf, Zotero, Matplotlib    |

---

## **Project Report**

🔗 [Click here to download the full report (PDF)]({{ site.baseurl }}/assets/docs/Final_Year_Project.pdf)

<embed src="{{ site.baseurl }}/assets/docs/Final_Year_Project.pdf" width="100%" height="600px" />

---
