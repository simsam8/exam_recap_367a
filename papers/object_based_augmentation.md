# Object-Based Augmentation Improves Quality of Remote Sensing Semantic Segmentation

## Problem they are trying to solve / Purpose of method

Remote sensing semantic segmentation requires high quality 
data, but it is time consuming, expensive, and difficult
to obtain it.

The standard approach is to apply image augmentations.

## How does it differ from other methods?

Object-Based Augmentation apply augmentations to objects in 
the image instead of augmenting the image itself.

## How the method works

The Object-Based Augmentation (OBA) targets objects instead of
the whole image. This us to create many combinations.
For this approach to work, all objects that can be augmented
needs a mask.

When creating the augmentations, object overlap is prohibited, 
and the augmentations are generated during training.


