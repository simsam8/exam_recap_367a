# Differentiable Model Selection for Ensemble Learning

## Problem they are trying to solve / Purpose of method

In ensemble methods, there is often an issue of 
which learners to choose from.

__Expand__

- What are the previous problems that needs to be solved?
- Why is the method introduced/needed?

## How does it differ from other methods?

This method introduces a way to learnable way 
to choose which learners/trees to use in predictions 
for ensemble methods.

__expand?__

- Compare what is different from other methods.
- What makes this method unique?

## How the method works

This method picks the top k learners for each input sample
and use their weighted predictions. (__need to double check__)

They introduce a trick to make this selection learnable,
essentially using the one-hot encodings of the top-k learners and 
passing them through a kernel/function to get usable gradients 
during back-propagation. (I think this is correct, need to verify)

__Need more details__

- Explain the details of the method, simple overview first,
then more details.
