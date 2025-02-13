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
To ensure optimal performance, multiple deep learning models are trained and compared. A variety of hyperparameter tuning strategies are explored to improve accuracy and robustness. The models are evaluated using key performance metrics such as accuracy, sensitivity (recall), specificity, AUC-ROC, and F1-score. The goal is to identify the most effective model for real-world detection.

Additionally, sample MRI images from the ADNI dataset are showcased below illustrate the type of data used in the project. The final report detailing the methodology, results, and findings is available below.

### **Sample scan set**

<figure>
  <img src="{{ site.baseurl }}/assets/img/ADNI_axial_plane_3_labels.png" alt="MRI Sample" width="600"/>
  <figcaption style="font-style: italic;">Unprocessed middle slice from each label in the axial plane. (CN: cognitively normal; MCI: mild cognitive impairment; AD: Alzheimer’s disease)</figcaption>
</figure>

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
