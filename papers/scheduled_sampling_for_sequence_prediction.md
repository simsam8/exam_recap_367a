# Scheduled sampling for sequence prediction with RNNs

## Problem they are trying to solve / Purpose of method

- Discrepancy between inference and training
- Previous methods either don't work for RNNs or are too 
computationally expensive

The goal if this method is to reduce the error from inference,
without using too much computational time and power.
They want to teach the model how to correct its own errors better.

- What are the previous problems that needs to be solved?
- Why is the method introduced/needed?

## How does it differ from other methods?

__Don't know yet, check paper__

- Compare what is different from other methods.
- What makes this method unique?

## How the method works

Notes from slides

- In each step decide what token
- Start off with mainly true token
- Decay according to a schedule

__Unclear, need to check paper__

- Explain the details of the method, simple overview first,
then more details.
