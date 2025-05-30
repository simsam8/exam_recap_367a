# Automatic Data Augmentation via Invariance Constrained Learning

## Main ideas

- **Problem it solves, why is it needed?**
  - Removes reliance on fixed, handcrafted augmentation policies.
  - Avoids expensive and complex search-based or gradient-based augmentation tuning.
  - Provides a way to learn data augmentation dynamically and sample-specifically, based on model behavior.
  
- **How does it differ from other methods?**
  - Formulates augmentation as a **constrained optimization problem**, enforcing **invariance**.
  - Uses **primal-dual optimization** to jointly update model parameters and the augmentation policy.
  - Employs **MCMC sampling** (e.g., Metropolis-Hastings) to handle **non-differentiable transformations**.
  - Adjusts augmentation **dynamically during training** (when, how much, and which transformations).
  
- **Brief overview of the method.**
  - Define candidate transformations (e.g., rotate, crop, color jitter).
  - Add an **invariance constraint**: model predictions should be stable under these transformations.
  - Introduce a Lagrange multiplier ($\gamma$) to balance invariance vs. task loss.
  - Use **primal-dual updates** to optimize both model weights and the strength of the invariance constraint.
  - Sample augmentations using **MCMC**, weighted by their effect on loss.
  - If invariance is naturally satisfied, $\gamma \to 0$, reducing unnecessary augmentation.

---

## Follow-up questions

- What types of transformations can this method handle that gradient-based approaches can't?
- How does the MCMC process work in practice — what proposal distributions are used?
- How is the threshold $\epsilon$ for invariance constraint chosen?
- How does this method compare in computational cost vs. AutoAugment or RandAugment?
- Does it generalize well across different tasks or domains (e.g., vision, NLP)?
