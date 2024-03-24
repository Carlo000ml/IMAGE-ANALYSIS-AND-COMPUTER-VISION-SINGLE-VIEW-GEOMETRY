# README file
## Images
The folder Images contains the original image, an image with all the features plotted together. In addition a sub-folder with the features plotted separately, a sub-folder with results of Sobel and Canny edge detectors and another sub-folder with the shape reconstruction of the plane orthogonal to the cylinder axis.

## Code
Move the functions from the "Functions" folder to the main folder (Folder with Live Scripts) as well as the image "PalazzoTe.jpg" from the folder "images".
I created a sub-folder "Functions" and "images" just to make the delivery more organized but the code has been written and tested with the functions and the image in the same folder of the Live scripts.


## Elements
It contains all the geometric elements used for the code and all the results obtained. Note, not all the elements in the folder have been used, some of them have been created from aborted experiments. The requested elements can be found as follows:

-  Calibration Matrix
elements\CALIBRATION MATRIX\K.mat
- Lines
l1-> elements\LINES\line_l1.mat

l2-> elements\LINES\line_l2.mat

axis-> elements\LINES\axis.mat

horizon-> elements\LINES\horizon.mat

- Conics
C1-> elements\CONICS\C1.mat

C2-> elements\CONICS\C2.mat

center of C1-> elements\CONICS\centerC1.mat

center of C2-> elements\CONICS\centerC2.mat

- Vanishing points
V -> elements\VANISHING POINTS\V.mat

V_h (Other vanishing point axial plane)-> elements\VANISHING POINTS\V_h.mat


- Circular points

I-> elements\CIRCULAR POINTS\I.mat

J-> elements\CIRCULAR POINTS\J.mat

- Orientation

Orientation axis x -> elements\ORIENTATION\degree_x

Orientation axis y -> elements\ORIENTATION\degree_y

Orientation axis z -> elements\ORIENTATION\degree_z
