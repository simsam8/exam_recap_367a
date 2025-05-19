# Fourier Features Let Networks Learn High Frequency Functions in Low Dimensional Domains

## Main ideas

- **Problem it solves, why is it needed?**  
  Standard coordinate-based MLPs suffer from spectral bias, favoring low-frequency smooth functions and failing to learn high-frequency details in low-dimensional domains like images or 3D data. This limits tasks requiring fine details such as texture and geometry modeling.

- **How does it differ from other methods?**  
  Unlike heuristic or axis-aligned positional encodings, this method uses randomized Fourier feature mappings grounded in kernel theory (Random Fourier Features), which transform the MLP’s Neural Tangent Kernel (NTK) into a stationary kernel with broad frequency support, enabling tunable control over frequency learning.

- **Brief overview of the method.**  
  Inputs are mapped via sinusoidal functions of random frequencies sampled from a Gaussian to a higher-dimensional space. This mapping broadens the frequency range the MLP can learn, overcoming spectral bias and improving convergence speed and accuracy, especially for high-frequency components. The key hyperparameter is the scale of the frequency distribution.

---

## Follow-up questions

- How exactly does the Fourier feature mapping modify the Neural Tangent Kernel (NTK)?  
- Why is controlling the scale of the frequency distribution more important than its shape?  
- How does this method compare empirically to positional encodings in NeRF or other tasks?  
- Can this approach be applied to higher-dimensional domains, or is it mainly beneficial in low dimensions?  
- What are practical guidelines for tuning the scale hyperparameter in different applications?
