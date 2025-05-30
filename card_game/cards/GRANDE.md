# GRANDE: Gradient-Based Decision Tree Ensembles for Tabular Data

## Main ideas

- **Problem it solves, why is it needed?**  
  - Bridges the performance gap between deep learning and gradient-boosted decision trees (GBDTs) on tabular data.  
  - Addresses GBDTs’ scalability and optimization difficulties and deep networks’ poor generalization on tabular data.  
  - Aims for a scalable, stable, and interpretable model combining strengths of trees and neural nets.

- **How does it differ from other methods?**  
  - Embeds decision trees within a neural network enabling gradient-based end-to-end training.  
  - Uses attention-based soft feature splits instead of hard, greedy splits.  
  - Supports dense stacking of differentiable tree modules with residual connections to avoid vanishing gradients.  
  - Improves on prior differentiable trees (NODE, DNDT) by better scalability and gradient flow.

- **Brief overview of the method.**  
  - Constructs differentiable tree modules that softly route data using learned attention over features.  
  - Stacks modules with residual connections inspired by transformers/ResNets for deeper models.  
  - Trains the entire model end-to-end via gradient descent with standard deep learning tools.  
  - Achieves scalability, interpretability, and strong tabular data performance.

---

## Follow-up questions

- How exactly does the soft attention mechanism work for feature splits in GRANDE?  
- What role do residual connections play in preventing gradient vanishing in deep differentiable trees?  
- How does GRANDE’s interpretability compare to traditional GBDTs?  
- Can GRANDE be integrated with existing GBDT frameworks or replace them entirely?  
- What are the computational trade-offs compared to classical GBDTs and pure neural nets?  
