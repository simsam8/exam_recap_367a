# Mamba: Linear-Time Sequence Modeling with Selective State Spaces

## Main ideas

- **Problem it solves, why is it needed?**
  - Transformers dominate sequence modeling but have quadratic time and memory complexity.
  - Mamba aims to achieve similar performance with **linear** time and space complexity using state space models (SSMs).
  - It avoids inefficiencies of self-attention, especially for long sequences.

- **How does it differ from other methods?**
  - Uses **Selective SSMs** instead of self-attention for context-aware updates.
  - Allows **parallel training** via a technique called **parallel associative scan**.
  - Handles **long-range dependencies** more efficiently than traditional SSMs and transformers.
  - Enables continuous-time modeling and avoids pairwise comparisons.

- **Brief overview of the method.**
  - Inputs pass through two parallel paths: one for local nonlinearity, one for context via SSM.
  - Upscaling is applied to increase representation power.
  - The SSM path includes a convolution and selective SSMs to capture contextual dependencies.
  - Both paths are merged via a similarity function and passed through a down-projection.
  - Stacks of these Mamba blocks form deeper models.

---

## Follow-up questions

- What is the difference between structured SSMs and selective SSMs?
- How does the parallel associative scan work and why is it important?
- Why is the convolution method preferred for structured SSMs?
- How does Mamba retain linear time complexity despite using selective updates?
- How is context integrated into the model without attention?
