# SatMAE: Pre-Training Transformers for Temporal and Multi-Spectral Satellite Imagery

## Main ideas

- Problem it solves, why is it needed?  
  - Satellite images include multiple spectral bands (e.g., IR, UV) and temporal data, making standard RGB-based pretraining insufficient.  
  - Self-supervised pretraining on such complex, unlabeled data improves downstream tasks like classification and segmentation.

- How does it differ from other methods?  
  - Groups spectral bands based on similarity (e.g., RGB alone, SWIR and IR grouped together) rather than treating all bands equally.  
  - Incorporates temporal information by stacking time frames as additional channels or grouped inputs.  
  - Uses a masked autoencoder approach tailored to multi-spectral and temporal satellite data.

- Brief overview of the method  
  - Splits input images into 16×16 patches and randomly masks a large fraction.  
  - Encodes only visible patches with a ViT encoder.  
  - Decoder reconstructs the full image, using position embeddings and encoded tokens.  
  - Learns feature representations by minimizing reconstruction loss between original and predicted patches.

---

## Follow-up questions

- How does the grouping of spectral bands affect the quality of learned features?  
- What are the advantages of masking a large fraction of patches in this context?  
- How is temporal data handled differently in various configurations?  
- How does SatMAE performance compare with traditional MAE trained on only RGB data?  
- What reconstruction loss is used and why?
