# Super-Resolution of Sentinel-2 images: Learning a globally applicable deep learning network

## Main ideas

- Problem it solves, why is it needed?  
  - Sentinel-2 bands have varying ground sampling distances; some bands have lower resolution (20m or 60m) compared to the highest resolution bands (10m).  
  - Super-resolution upscales these lower resolution bands to 10m, improving spatial detail for better analysis.

- How does it differ from other methods?  
  - Uses higher resolution bands as input to guide the upsampling of lower resolution bands.  
  - Employs two separate networks for 2x and 6x upsampling to handle different scale factors.  
  - Uses a supervised approach with high-resolution bands as ground truth for learning texture transfer.

- Brief overview of the method  
  - Inputs combine higher resolution bands with initially upsampled lower resolution bands.  
  - Two deep learning networks learn to enhance the lower resolution bands by transferring texture and details from higher resolution bands.  
  - The model is trained globally, aiming for applicability across different regions and image conditions.

---

## Follow-up questions

- How are the two networks (2x and 6x) architecturally different or similar?  
- What kind of loss function is used to enforce texture transfer?  
- How does the model handle spectral consistency across bands?  
- Are there limitations in spatial or spectral domains for this super-resolution method?  
- How does it compare quantitatively and qualitatively to other super-resolution or pan-sharpening methods?  
