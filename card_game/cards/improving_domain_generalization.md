# Improving Domain Generalization with Interpolation Robustness

## Main ideas

- **Problem it solves, why is it needed?**
  - Tackles domain generalization (DG): making models work well on unseen domains.
  - Avoids overfitting to training domains and problems with requiring domain labels.
  - Traditional domain alignment can harm semantic representation and needs domain labels.

- **How does it differ from other methods?**
  - No need for domain labels.
  - Introduces **Interpolation Robustness Training (IRT)**—penalizes prediction sensitivity to interpolated features.
  - Works in **feature space** (not input space), preserving semantic meaning better than methods like Mixup.

- **Brief overview of the method.**
  1. Encode two samples to get features: $f(x_i), f(x_j)$.
  2. Interpolate: $f_{\text{interp}} = \lambda f(x_i) + (1 - \lambda) f(x_j)$, where $\lambda \sim \text{Beta}(\alpha, \alpha)$.
  3. Predict on interpolated feature.
  4. Mix labels: $y_{\text{interp}} = \lambda y_i + (1 - \lambda) y_j$.
  5. Compute loss (e.g., KL divergence) between prediction and $y_{\text{interp}}$.
  6. Add this interpolation loss to standard classification loss.

---

## Follow-up questions

- Why is interpolation done in feature space rather than input space?
- How does IRT compare to input-space Mixup or domain alignment methods in practice?
- What is the role of the Beta distribution in the interpolation process?
- Could this method be extended to self-supervised or contrastive settings?
- How sensitive is performance to the choice of $\alpha$ in the Beta distribution?
