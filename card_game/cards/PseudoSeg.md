# PseudoSeg: Designing Pseudo Labels for Semantic Segmentation

## Main ideas

- **Problem it solves, why is it needed?**  
  - Semantic segmentation with limited pixel-wise labels.  
  - Leverages unlabeled data to improve performance in low-label regimes.

- **How does it differ from other methods?**  
  - One-stage training framework instead of multi-stage pipelines common in semi-supervised segmentation.  
  - Simpler and potentially faster training.

- **Brief overview of the method.**  
  - Uses Grad-CAM to generate initial class activation maps indicating important regions for classification.  
  - Applies a self-attention-like refinement to propagate Grad-CAM outputs based on similarity from backbone features (key, query, value mechanism).  
  - Refined maps alone are low-res and insufficient as pseudo labels.  
  - Fuse refined Grad-CAM (SGC) maps with decoder predictions by normalizing and sharpening (temperature scaling).  
  - Resulting fused maps serve as pseudo labels for cross-entropy loss on strongly augmented unlabeled images, enabling consistency training with hard pseudo labels.

---

## Follow-up questions

- How does the self-attention refinement specifically improve over vanilla Grad-CAM?  
- What benefits come from fusing decoder predictions with refined Grad-CAM maps?  
- Why is a temperature sharpening step necessary in fusion?  
- How does this approach compare quantitatively to multi-stage semi-supervised segmentation methods?  
- Can this framework be adapted for other pixel-wise tasks beyond semantic segmentation?
