# Segment-Then-Classify: Few-shot instance segmentation for environmental remote sensing

## Main ideas

- Problem it solves, why is it needed?  
  - Addresses data scarcity in environmental remote sensing instance segmentation.  
  - Reduces reliance on large annotated datasets and labor-intensive labeling.  
  - Enables high accuracy with few labeled examples.

- How does it differ from other methods?  
  - Unlike detect-then-segment models (e.g., YOLOv8) that need extensive training data and bounding box labels, STC uses a segment-then-classify approach.  
  - Utilizes SAM in zero-shot mode to generate masks without training.  
  - Classifies masks using a lightweight classifier (ViT), requiring less data.

- Brief overview of the method  
  - Segment using SAM with a 32x32 point grid to generate object masks.  
  - Filter masks with noise removal and non-maximum suppression.  
  - Crop patches from masks and classify with ViT into 10 classes plus “other.”  
  - Evaluated on NWPU VHR-10 dataset using mAP@0.5 metric.

---

## Follow-up questions

- How does SAM’s zero-shot segmentation handle overlapping or small objects?  
- What are the advantages and limitations of using ViT for mask classification in this context?  
- How does STC’s data efficiency compare quantitatively with YOLOv8?  
- Could fine-tuning SAM improve performance on cluttered scenes or small objects?  
- How transferable is the STC approach to other remote sensing datasets or domains?
