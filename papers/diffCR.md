# DiffCR - A Fast Conditional Diffusion Framework for Cloud Removal from Optical Satellite Images

## Problem they are trying to solve / Purpose of method

- 66-67% of Earth's surface is covered by clouds
- Cloud cover obstructs satellite imagery
- Reduces usability of optical satellite images

## How does it differ from other methods?

Other methods use GANs(Generative Adverserial Networks) for 
cloud removal.
DiffCR uses diffusion models for stable and high-quality results.

## How the method works

__DiffCR__ is a conditional diffusion model for removing clouds from satellite images.
It takes a cloudy image as input and learns to generate a cloud-free version 
through a two-step process:

1. __Forward Process__: Adds noise to clean images during training to learn the noise distribution.
2. __Reverse Process__: During inference, denoises a random image step-by-step, conditioned on the cloudy input, to reconstruct the clean scene.

Key components include:

- __Condition Encoder__: Extracts features from the cloudy image.
- __Time Encoder__: Encodes diffusion timestep info.
- __Denoising Autoencoder__: Removes noise using spatial and temporal features.
- __Fusion Block__: Enhances reconstruction by merging time and condition features.


## Limitations

Struggles with water bodies and is computationally expensive.

