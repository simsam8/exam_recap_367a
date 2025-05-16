# Scheduled Sampling for Sequence Prediction with RNNs

**DISCLAIMER**: Summarized by AI

## Problem they are trying to solve / Purpose of method

- **Previous problem**: Recurrent Neural Networks (RNNs) trained with teacher forcing
(i.e., using ground-truth previous tokens during training) suffer from *exposure bias*.
At test time, the model must generate sequences using its own previous predictions, which may contain errors.
These small errors accumulate and degrade overall performance,
since the model was never trained to recover from its own mistakes.
- **Purpose of method**: To bridge the discrepancy between training and inference,
the authors introduce *Scheduled Sampling*,
a curriculum learning strategy that gradually replaces ground-truth inputs with model-generated ones during training.

## How does it differ from other methods?

- **Teacher Forcing**: Uses true labels as input at every timestep during training, which creates a mismatch with inference conditions.
- **Scheduled Sampling**: Unlike traditional training where the model never learns to cope with its own errors,
scheduled sampling gradually exposes the model to its predictions during training.
This helps it learn to recover from its own mistakes.
- **Unique aspect**: It's a simple yet effective modification to the training procedure that does not change the model architecture,
making it easy to integrate into existing RNN-based models.

## How the method works

**Overview**:
- Scheduled Sampling is a training strategy for sequence prediction models (like RNNs) that
intermittently replaces ground-truth tokens with the model’s own predictions during training,
controlled by a sampling schedule.

**Details**:
1. **Training Loop**: At each time step during training,
the next input token is chosen either from the ground-truth data or from the model's prediction at the previous step.
2. **Sampling Probability**: The probability of choosing the ground-truth token decreases over time,
based on a pre-defined schedule (e.g., linear decay, exponential decay, or inverse sigmoid).
3. **Objective**: The model still minimizes the standard sequence prediction loss,
but it learns under increasingly realistic (inference-like) conditions.

**Benefits**:
- Reduces exposure bias.
- Helps the model learn to correct or recover from its own errors during generation.
