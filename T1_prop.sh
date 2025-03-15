SUBJECTS_DIR=/home/student2/2022_WMPFC/WMPFC_sub010_2/T1


recon-all -all -s OUTPUT.nii -hires -i s.nii -expert expert.opt

(s----nii.4d)


freeview -v OUTPUT.nii/mri/T1.mgz

=================

mri_label2vol --seg ribbon.mgz --temp rawavg.mgz --o ribbon-in-rawavd.mgz --regheader  ribbon.mgz

mri_convert ribbon-in-rawavd.mgz ribbon-in-rawavd.nii

mri_convert rawavg.mgz rawavg.nii
