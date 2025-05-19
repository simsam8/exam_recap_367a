# Binary Classification: Is Boosting Stronger than Bagging?

## Main ideas

- **Problem it solves, why is it needed?**
  - Evaluates when Boosting outperforms Bagging and vice versa in binary classification.
  - Addresses lack of clarity about which ensemble method is more effective under different conditions.
  - Explores how Boosting and Bagging handle bias and variance.

- **How does it differ from other methods?**
  - Both combine weak classifiers to improve performance, but:
    - **Bagging**: reduces **variance**, uses **bootstrapped samples**, trains models **independently**, uses **majority vote**.
    - **Boosting**: reduces **bias and variance**, focuses on **misclassified samples**, trains models **sequentially**, uses **weighted vote**.

- **Brief overview of the method.**
  - Empirical comparison of Boosting (AdaBoost, Arcing) and Bagging across 23 datasets.
  - Base learners: **CART**, **C4.5**, **Naive Bayes**.
  - Boosting trains learners in sequence, reweighting data based on errors.
  - Bagging trains learners on different bootstrap samples independently.
  - **Findings**:
    - Boosting often reduces bias and variance but is sensitive to **noise**.
    - Bagging is more consistent at reducing **variance**, especially for unstable learners like CART.
    - Boosting can improve both **stable and unstable** learners.

---

## Follow-up questions

- Why is Boosting more sensitive to noise than Bagging?
- How do CART and C4.5 differ in terms of stability?
- In what cases would Naive Bayes benefit more from Boosting than from Bagging?
- What implications do these results have for choosing an ensemble method in real-world applications?
- How does the concept of "overfitting resistance" in Boosting work?
