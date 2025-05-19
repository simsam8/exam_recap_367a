# Object-Based Augmentation Improves Quality of Remote Sensing Semantic Segmentation

## Main ideas

- **Problem it solves, why is it needed?**
  - Remote sensing semantic segmentation relies on high-quality annotated data.
  - Annotating this data is expensive, time-consuming, and difficult.
  - Traditional augmentation methods may not create enough diverse or realistic training samples.

- **How does it differ from other methods?**
  - Instead of applying transformations to the entire image, Object-Based Augmentation (OBA) targets individual objects.
  - Enables finer-grained, diverse augmentations by recombining and transforming object instances.

- **Brief overview of the method.**
  - Objects are segmented using masks.
  - During training, augmented object instances are pasted into new positions in images.
  - Object overlap is avoided to maintain data quality.
  - Augmentations are performed on-the-fly during training.

---

## Follow-up questions

- How are object masks obtained or generated?
- What types of augmentations are applied to objects?
- How does OBA handle class imbalance or rare object classes?
- Does OBA improve performance across all segmentation models?
- How is object overlap prevented during augmentation?
