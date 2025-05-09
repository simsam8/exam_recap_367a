# Segment-Then-Classify: Few-shot instance segmentation for environmental remote sensing

## Problem they are trying to solve / Purpose of method

- Climate change
- Satellite data
- Data scarcity
- Extensive training

__Need more details__

- What are the previous problems that needs to be solved?
- Why is the method introduced/needed?

## How does it differ from other methods?

__Not sure, needs more details__

- Compare what is different from other methods.
- What makes this method unique?

## How the method works

Step 1 Masks:

- Segment anything Model (SAM)
- Create masks
- Non-Maximum supression + filtering

Step 2 Classification:

- Vision Transformer trained on masks from step 1.

__Need more details__
