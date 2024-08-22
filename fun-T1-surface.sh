

Terminal 1 ======= ANTS---fun 2 T1

1. 3dcalc -a epi1.nii[0] -expr 'a' -prefix epi1.1st.nii

2. antsRegistrationSyN.sh -d 3 -m T1.nii_c32.nii -f epi1.1st.nii -t s -o ANTs_SyN_

Terminal 2 ======= SUMA----T1 2 surface
@SUMA_Make_Spec_FS -sid subj010_2 -fspath T1/OUTPUT.nii/ -NIFTI


================fun--t1--surface

3dNwarpApply -prefix ./T1_syN.nii -source ./T1.nii_c32.nii  -nwarp ./ANTs_SyN_1Warp.nii.gz ./matt.1D -overwrite

align_epi_anat.py -dset1to2 -dset1 ./T1/OUTPUT.nii/SUMA/subj010_2_SurfVol.nii -dset2 ANTs_SyN_Warped.nii.gz.nii -dset2_strip -giant_move -suffix _al.nii -master_dset2 -overwrite






align_epi_anat.py -dset1to2 -dset1 ./T1/OUTPUT.nii/SUMA/subj010_1_SurfVol.nii -dset2 T1_syN.nii -dset2_strip 3dSkullStrip -giant_move -suffix _al.nii -master_dset2 0.8 -overwrite

afni -niml &suma -spec ./T1/OUTPUT.nii/SUMA/subj010_2_both.spec -sv subj010_2_SurfVol.nii





