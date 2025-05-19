# SAM 2: Segment Anything in Images and Videos

## Main ideas

- **Problem it solves, why is it needed?**  
  - Extends static image segmentation (original SAM) to dynamic video segmentation.  
  - Addresses video challenges like occlusion, motion blur, deformation, lighting changes.  
  - Fills the need for a unified segmentation system applicable to images and videos for AR/VR, robotics, video editing, etc.  
  - Improves efficiency and generalization over existing video segmentation methods.

- **How does it differ from other methods?**  
  - Unified architecture for both images (single-frame video) and videos.  
  - Streaming memory bank maintains object context across frames instead of relying on trackers.  
  - Interactive refinement allows prompt-based corrections on any frame without restarting.  
  - Data engine plus SA-V dataset enables large-scale, diverse training and faster annotation (8.4× speedup).  
  - Superior speed and accuracy: 6× faster and more accurate on images than SAM, 3× fewer interactions than previous video methods.

- **Brief overview of the method.**  
  - Input: video/image + user prompt (point, box, mask).  
  - Components: MAE-pretrained Hiera image encoder, prompt encoder, mask decoder, memory encoder & memory bank with attention for spatio-temporal info.  
  - Predicts masklets: segmented objects across frames with occlusion detection.  
  - Large dataset SA-V created via 3-phase annotation (manual, assisted, interactive).  
  - Joint training on images and videos with simulated interactive prompts.  
  - Real-time, state-of-the-art performance in zero-shot and semi-supervised settings.

---

## Follow-up questions

- How does the streaming memory architecture specifically improve tracking through occlusion?  
- What advantages does the MAE-pretrained Hiera encoder bring compared to previous image encoders?  
- How does SAM 2Mask assist the annotation propagation process?  
- In what ways can users interactively refine segmentation masks during video processing?  
- How does the model detect occlusion and decide when an object is not visible?  
- What are the differences in training when handling images vs. videos in the joint training regime?  
- How does SAM 2’s zero-shot performance compare on standard benchmarks like DAVIS or YouTube-VOS?
