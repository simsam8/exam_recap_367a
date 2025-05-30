# Super-Resolution of Sentinel-2 images: Learning a globally applicable deep learning network

## Problem they are trying to solve / Purpose of method

__Super-resolve the lower resolution bands to 10m ground sampling distance__.

The bands in Sentinel-2 images have different ground sampling distances,
which means that some of the bands have higher resolution and more 
information than others.

## How does it differ from other methods?

It upsamples bands using higher resolution bands?
(i guess that is whats new)

## How the method works

The idea behind the method is to use the higher resolution bands 
to transfer the texture and upsample the lower resolution bands.
It uses two networks, one for 2x upsampling and one for 6x upsampling.
In the input it combines the higher resolution bands, with 
the upsampled lower resolution bands.

It uses the higher resolution bands as a label in a supervised approach.
