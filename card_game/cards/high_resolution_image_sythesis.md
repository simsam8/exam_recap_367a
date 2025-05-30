# High-Resolution Image Synthesis with Latent Diffusion Models

## Main ideas

- **Problem it solves, why is it needed?**  
  - High computational cost of pixel-space diffusion for high-res images.  
  - Limited scalability of prior models to high resolutions without heavy resources or compromises.  
  - Semantic understanding is weak in pixel-space diffusion models.

- **How does it differ from other methods?**  
  - Performs diffusion in a learned lower-dimensional latent space instead of pixel space, reducing computational load.  
  - Modular architecture: separates autoencoder (compression) and diffusion (generation) steps.  
  - Flexible conditioning options (e.g., text, semantic maps) for controlled, semantically rich generation.

- **Brief overview of the method.**  
  - Compress images with a pretrained autoencoder to latent representations.  
  - Run a U-Net-based diffusion model in latent space, using cross-attention for conditioning.  
  - Decode generated latents back to image space, achieving efficient and high-quality synthesis.

---

## Follow-up questions

- How does latent space diffusion reduce computational complexity compared to pixel-space diffusion?  
- What are the benefits of separating the autoencoder and diffusion model training?  
- How does conditioning (e.g., text embeddings) influence the generation process?  
- What architectural features of the U-Net support high-quality latent diffusion?  
- How does the autoencoder ensure the latent space preserves semantic information?
