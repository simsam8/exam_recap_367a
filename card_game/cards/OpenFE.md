# OpenFE: Automated Feature Generation with Expert-Level Performance

## Main ideas

- Problem it solves, why is it needed?
  - Manual feature generation is time-consuming and labor-intensive.
  - Existing automated methods use expand-and-reduce but struggle with evaluating a large number of candidate features.
  
- How does it differ from other methods?
  - Uses incremental feature selection instead of full model retraining for each set of features.
  - More efficient and scalable evaluation of feature candidates.

- Brief overview of the method.
  - **Expansion step**: 
    - Features are divided into numerical and categorical types.
    - Operators are randomly chosen and applied to generate new feature candidates.
  - **Reduction step**: 
    - A model is trained on the original dataset.
    - FeatureBoost uses model predictions and candidate features to evaluate their incremental value.
    - Two-stage pruning:
      - Stage 1: Early removal of weak features.
      - Stage 2: Joint testing of remaining features, selecting top performers.
    - Selected features are added to the dataset.
  - The process repeats until a sufficient number of features are selected.

---

## Follow-up questions

- What is FeatureBoost and how does it evaluate incremental performance?
- How does the random selection of operators affect performance or diversity of features?
- How does the two-stage pruning improve feature selection efficiency?
- What are some example operators used in the expansion step?
- How does OpenFE handle categorical features differently from numerical ones?
