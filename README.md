# freeSurfer_reconn
## Reconstructing the Cortical Surface
#### command
```
recon-all -subjid ${SUBID} -i ${FILE} -all
```
#### output file 
***folder --> ./mri***  
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; `brainmask.mgz --> strips the skull`  
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; `lh.orig --> the location of the white-matter and grey-matter interface in left hemispheres`  
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; `rh.orig --> the location of the white-matter and grey-matter interface in right hemispheres`  
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; `lh.white --> detect the white matter edge in left hemispheres`  
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; `rh.white --> detect the white matter edge in right hemispheres`  
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; `lh.pial --> detect the grey matter edge in left hemispheres`  
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; `rh.pial --> detect the grey matter edge in right hemispheres`  



