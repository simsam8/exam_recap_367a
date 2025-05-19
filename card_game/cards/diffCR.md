# DiffCR - A Fast Conditional Diffusion Framework for Cloud Removal from Optical Satellite Images

## Main ideas

- **Problem it solves, why is it needed?**  
  - Clouds cover about 66-67% of Earth’s surface, obstructing optical satellite images.  
  - Cloud cover reduces the usefulness of satellite imagery for monitoring and analysis.

- **How does it differ from other methods?**  
  - Unlike previous cloud removal methods based on GANs, which can be unstable, DiffCR uses diffusion models for better stability and quality.

- **Brief overview of the method**  
  - DiffCR is a conditional diffusion model that learns to generate cloud-free images from cloudy inputs.  
  - Training uses a forward process adding noise to clean images to learn noise distribution.  
  - Inference uses a reverse denoising process conditioned on the cloudy input to reconstruct the clean image.  
  - Key components: Condition Encoder (cloudy features), Time Encoder (diffusion timestep), Denoising Autoencoder (noise removal), Fusion Block (feature merging).

- Limitations  
  - Struggles to remove clouds over water bodies.  
  - Computationally expensive due to iterative denoising.

---

## Follow-up questions

- What advantages do diffusion models have over GANs for image restoration?  
- How does conditioning on the cloudy image improve the denoising process?  
- Why is cloud removal over water bodies particularly challenging?  
- Are there ways to reduce DiffCR’s computational cost while maintaining quality?  
- How might the design of the Condition Encoder affect performance?
