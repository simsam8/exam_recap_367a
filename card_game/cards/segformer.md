# SegFormer: Simple and Efficient Design for Semantic Segmentation with Transformers 

## Main ideas

- Problem it solves, why is it needed?  
  - Simplify and speed up semantic segmentation with transformers.  
  - Avoids complexity, high computation, slow inference, and large memory of prior methods.  
  - Targets better efficiency, scalability, and flexibility without positional encodings or heavy decoders.

- How does it differ from other methods?  
  - No positional encodings; uses overlapping patch embeddings to keep spatial info.  
  - Uses a lightweight MLP decoder instead of heavy transformer decoders.  
  - Employs a hierarchical Mix Vision Transformer encoder for efficient local and global feature extraction.

- Brief overview of the method  
  - Encoder: Mix Vision Transformer (MiT) with Spatial-Reduction Attention (SRA) and Mix-Feedforward Network (Mix-FFN) to reduce tokens and improve generalization.  
  - Overlapping patch merging preserves spatial continuity.  
  - Decoder: simple MLP head fuses multi-scale encoder features with minimal complexity.

---

## Follow-up questions

- How does removing positional encoding affect spatial information retention?  
- What advantages does Spatial-Reduction Attention provide in computational efficiency?  
- Why is overlapping patch merging better than non-overlapping patches in segmentation?  
- How does Mix-FFN improve generalization compared to traditional FFNs?  
- How does SegFormer perform across different datasets compared to CNN-based and other transformer models?
