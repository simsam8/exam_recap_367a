# Fourier Features Let Networks Learn High Frequency Functions in Low Dimensional Domains

**DISCLAIMER**: Summarized by AI

## Problem They Are Trying to Solve / Purpose of Method

The paper addresses the **inability of standard coordinate-based MLPs to learn high-frequency functions**
in low-dimensional domains (e.g., 2D images, 3D spatial data).
This is due to a phenomenon known as **spectral bias**, where MLPs naturally favor learning smooth,
low-frequency functions and struggle with representing fine details.

This becomes a major limitation in computer vision and graphics tasks,
where accurate modeling of complex signals—such as textures,
sharp edges, or fine 3D geometry—is essential.

**Purpose of the Method**:  
The authors propose a **Fourier feature mapping** as a simple,
effective input preprocessing step to:

- Overcome spectral bias.
- Improve convergence speed and final accuracy.
- Enable MLPs to learn **higher-frequency content** reliably in low-dimensional domains.

## How Does It Differ From Other Methods?

- **Standard MLPs** struggle to learn high-frequency functions due to their inductive bias (spectral bias).
- **Prior works** like NeRF use “positional encodings” (a type of sinusoidal mapping),
but these are often heuristically chosen and axis-aligned.
- The authors generalize this idea using **Fourier features**,
a principled approach rooted in kernel theory (Random Fourier Features, RFF).
- By analyzing the **Neural Tangent Kernel (NTK)** of MLPs, they show that:
  - Standard MLPs have a rapidly decaying NTK spectrum (bad for high frequencies).
  - Fourier feature mappings **transform the NTK into a tunable, stationary kernel** with broader frequency support.

**What Makes This Method Unique**:

- The use of **randomized Fourier features** to control the bandwidth of the NTK.
- A theoretical foundation (via NTK analysis) for why Fourier mappings work.
- Demonstrated improvements across diverse tasks: image regression, 3D shape modeling,
CT/MRI reconstruction, and view synthesis.


## How the Method Works

**Overview**:  

- Instead of feeding raw coordinates (e.g., (x, y) or (x, y, z)) into an MLP,
the coordinates are **transformed into a higher-dimensional space using sinusoidal functions** (Fourier features).
- The transformed inputs capture a broader range of frequencies,
enabling the MLP to fit high-frequency details more effectively.

**Details**:

1. **Fourier Feature Mapping**:  
   Input coordinate $v \in \mathbb{R}^d$ is mapped to:  
   $$\gamma(v) = [\cos(2\pi b_1^T v), \sin(2\pi b_1^T v), \ldots, \cos(2\pi b_m^T v), \sin(2\pi b_m^T v)]$$
   where each $b_j$ is a frequency vector sampled from a Gaussian distribution.

2. **Effect on Neural Tangent Kernel (NTK)**:
   - The Fourier mapping turns the NTK into a **stationary (shift-invariant) kernel** with tunable frequency content.
   - This allows high-frequency components of the target signal to be learned faster during training.

3. **Training**:
   - MLPs are trained as usual on tasks like image regression or shape modeling.
   - The transformed inputs result in significantly better performance, especially on **high-frequency regions**.

4. **Tuning**:
   - The key hyperparameter is the **scale (standard deviation) of the frequency sampling distribution**.
   - The shape of the distribution (Gaussian, uniform, etc.) is less important than its scale.

**Empirical Results**:

- Across tasks including 2D image regression, 3D shape modeling, CT/MRI reconstruction, and view synthesis (e.g., NeRF):
  - Fourier feature mappings **outperform** both standard MLPs and those using positional encodings.
  - Gaussian random Fourier features with tuned scale perform the best.
