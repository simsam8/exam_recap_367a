# Learning to Maximize Mutual Information for Dynamic Feature Selection

## Main ideas

- **Problem it solves, why is it needed?**
  - Traditional feature selection is static and inefficient for inputs that require different features.
  - Existing dynamic feature selection (DFS) methods often need labeled data or rely on heuristics.

- **How does it differ from other methods?**
  - Maximizes mutual information to learn a generalizable selection policy.
  - Does not require supervision at test time.
  - Avoids greedy heuristics and fixed feature ordering.

- **Brief overview of the method.**
  - Treats feature acquisition as a sequential decision-making task.
  - At each step, selects the feature providing the most additional info about the label.
  - Uses a variational bound to approximate and maximize conditional mutual information (CMI).
  - Trained without labels and generalizes to unseen tasks.

---

## Follow-up questions

- How is the mutual information estimated or approximated in this method?
- What kind of variational bound is used, and how is it derived?
- How does the policy learn to select features without labeled data?
- How does the method compare to supervised DFS in terms of performance?
- Is the feature acquisition process computationally efficient at test time?
