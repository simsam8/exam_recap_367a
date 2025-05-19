# An Improved Random Forest Based on the Classification Accuracy and Correlation Measurement of Decision Trees

## Main ideas

- **Problem it solves, why is it needed?**
  - Traditional Random Forests suffer from:
    - Inclusion of low-quality trees.
    - High correlation among trees.
    - Unstable evaluation metrics.
  - Existing methods typically address only *one* of these issues.
  - This method aims to improve overall robustness and performance.

- **How does it differ from other methods?**
  - Simultaneously addresses:
    - Tree quality (accuracy).
    - Inter-tree correlation.
    - Ensemble stability.
  - Improves selection process of trees in the forest.

- **Brief overview of the method.**
  - Trains a large pool of decision trees.
  - Filters trees based on classification accuracy.
  - Measures pairwise correlation between trees.
  - Removes highly correlated trees.
  - Selects a balanced, high-performing subset of trees for the final ensemble.

---

## Follow-up questions

- How is “tree quality” (accuracy) measured and what threshold is used?
- What metric is used to compute correlation between decision trees?
- How many trees are trained initially and how many are retained?
- Is the selection process greedy or optimization-based?
- How does this impact inference time compared to traditional RF?
