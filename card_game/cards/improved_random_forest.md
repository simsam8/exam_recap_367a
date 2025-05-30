# An Improved Random Forest Based on the Classification Accuracy and Correlation Measurement of Decision Trees

## Main ideas

CART: Classification and regression trees

- **Problem it solves, why is it needed?**
  - Traditional random forests suffer from low accuracy of some CARTs and high correlation (low diversity) among them.
  - Existing methods rarely improve both accuracy and diversity simultaneously.
  - Out-of-bag accuracy estimates can be unstable; correlation among trees is often unquantified.

- **How does it differ from other methods?**
  - Simultaneously optimizes for both classification accuracy and tree diversity.
  - Uses three separate validation sets for robust accuracy measurement (instead of OOB).
  - Introduces a dot product-based cosine similarity method to quantify correlation between decision trees.
  - Prunes trees based on both low accuracy and high similarity to others.

- **Brief overview of the method.**
  1. Generate many CARTs using bagging.
  2. Evaluate accuracy of each CART on three separate test sets.
  3. Measure pairwise tree correlation using dot product of feature vectors.
  4. Use grid search to find optimal correlation threshold.
  5. Iteratively prune highly correlated, less accurate CARTs.
  6. Select top-N trees with high accuracy and low correlation for the final ensemble.

---

## Follow-up questions

- Why are three validation sets more stable than OOB estimation?
- How exactly is cosine similarity computed from feature usage?
- How does grid search select the best correlation threshold?
- What are the trade-offs of pruning for diversity vs. accuracy?
- How scalable is the method for very large datasets?
