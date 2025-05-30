# SatSynth: Augmenting Image-Mask Pairs through Diffusion Models for Aerial Semantic Segmentation

## Main ideas

- Problem it solves, why is it needed?  
  - Semantic segmentation models need large amounts of annotated data, which is costly and limited, especially for satellite imagery.  
  - Better synthetic data augmentation can improve model performance and help address humanitarian challenges relying on satellite data.  

- How does it differ from other methods?  
  - Unlike traditional methods using GANs or simple geometric augmentations (flips, crops, rotations), SatSynth uses diffusion models for generating synthetic image-label pairs.  

- Brief overview of the method  
  - Uses a Denoising Diffusion Probabilistic Model (DDPM) to learn the joint distribution of images and segmentation masks \(p(x,y)\).  
  - Samples new synthetic image-mask pairs from the trained diffusion model as data augmentation.  
  - Evaluates performance improvements on semantic segmentation tasks using this augmented data.

---

## Follow-up questions

- How does the quality of diffusion-generated synthetic data compare to GAN-generated data for segmentation?  
- What specific diffusion model architecture is used and why?  
- How is the joint distribution \(p(x,y)\) modeled and conditioned during training?  
- Are there limitations or failure modes in the synthetic mask generation?  
- How much does augmentation with SatSynth improve downstream segmentation accuracy compared to baseline augmentations?  
