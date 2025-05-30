# Differentiable Model Selection for Ensemble Learning

## Main ideas

- **Problem it solves, why is it needed?**
  - Improves ensemble learning by dynamically selecting an optimal subset of base learners per input.
  - Addresses limitations of traditional ensembles that use fixed/global aggregation ignoring input-specific strengths.
  - Enables differentiable, trainable selection to exploit error diversity, especially when base learners are weak or specialized.

- **How does it differ from other methods?**
  - Introduces end-to-end Combinatorial Ensemble Learning (e2e-CEL) combining ML and combinatorial optimization.
  - Uses a differentiable knapsack solver layer for discrete model selection, trained via backpropagation.
  - Learns input-conditioned sub-ensemble selection, unlike global/static methods like Super Learner or voting.
  - Employs perturbation-based smoothing (Gumbel trick) to maintain differentiability through discrete decisions.

- **Brief overview of the method.**
  - A selection network scores all base learners per input.
  - Differentiable knapsack-based top-k selection chooses the sub-ensemble.
  - Selected base learners’ predictions are aggregated via differentiable soft voting.
  - The entire pipeline is trained end-to-end to optimize final classification loss.

---

## Follow-up questions

- How exactly does the differentiable knapsack layer work and maintain gradient flow?
- What are the advantages and limitations of using perturbation-based smoothing like the Gumbel trick?
- How does e2e-CEL handle scalability when the number of base learners is very large?
- Can the method be extended beyond classification tasks (e.g., regression or ranking)?
- How sensitive is the method to the choice of k (number of selected base learners)?
