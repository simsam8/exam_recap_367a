# Scheduled Sampling for Sequence Prediction with RNNs

## Main ideas

- Problem it solves, why is it needed?  
  - Teacher forcing trains RNNs using ground-truth previous tokens, causing exposure bias.  
  - At inference, the model relies on its own previous predictions, leading to error accumulation.  
  - Scheduled Sampling reduces this train-test mismatch by exposing the model to its own predictions during training.

- How does it differ from other methods?  
  - Teacher forcing always uses ground-truth inputs during training.  
  - Scheduled Sampling gradually replaces ground-truth inputs with model predictions based on a sampling schedule.  
  - It does not change the model architecture, only the training input selection.

- Brief overview of the method  
  - At each timestep during training, input is chosen either from ground truth or model prediction.  
  - The probability of using ground-truth decreases over training according to a schedule (e.g., linear, exponential, inverse sigmoid).  
  - The model optimizes the usual sequence prediction loss under these mixed conditions.  
  - This helps the model learn to recover from its own errors and improves robustness at inference.

---

## Follow-up questions

- How do different sampling schedules (linear vs exponential vs inverse sigmoid) affect training and final performance?  
- Can Scheduled Sampling be combined with other techniques like reinforcement learning or adversarial training?  
- What are potential failure cases or limitations of Scheduled Sampling?  
- How would Scheduled Sampling work with architectures beyond RNNs, like Transformers?  
- How to determine the best schedule parameters for a specific dataset or task?
