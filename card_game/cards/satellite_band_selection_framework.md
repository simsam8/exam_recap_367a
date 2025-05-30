# A Satellite Band Selection Framework For Amazon Forest Deforestation Detection Task

## Main ideas

- **Problem it solves, why is it needed?**  
  - Detects deforestation in the Amazon forest.  
  - Addresses effective forest monitoring using satellite imagery.  
  - Focuses on selecting a subset of spectral bands that provide the most informative data for detection.  
  - Uses PRODES (Brazil’s deforestation monitoring program) data as ground truth/reference.  

- **How does it differ from other methods?**  
  - Avoids manual band monitoring and purely deep learning-based band selection.  
  - Uses an evolutionary algorithm (UMDA) for band selection, unlike traditional methods or black-box deep learning approaches.  
  - Integrates texture features and segmentation to improve band selection and deforestation detection.  

- **Brief overview of the method.**  
  1. Creates a segmented dataset from 9 Landsat-8 images using PCA and SLIC superpixel segmentation.  
  2. Extracts Haralick texture features per segment and divides data into train/val/test splits.  
  3. Applies UMDA (a probabilistic evolutionary algorithm that samples new solutions based on top performers) to select optimal spectral bands.  
  4. Reconstructs images using selected bands, performs data augmentation, then trains a semantic segmentation model (DeepLabV3+) for deforestation detection.

---

## Follow-up questions

- What is PRODES and how is its data used in this context?  
- Why are only 9 Landsat-8 images used for dataset creation?  
- How does UMDA compare with other evolutionary or heuristic band selection methods?  
- What specific benefits do Haralick texture features bring to band selection for deforestation?  
- How does semantic segmentation improve deforestation detection compared to simpler classification methods?  
- Could the approach generalize to other forest types or satellite sensors?
