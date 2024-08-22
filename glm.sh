1==========================
cat mat.epi*.aff12.1D > mat_epi_all.1D
2=========================
prt
3================================
3dDeconvolve -force_TR 3.8 -TR_times 3.8 -local_times -input epi1.volreg.nii epi2.volreg.nii epi3.volreg.nii epi4.volreg.nii epi5.volreg.nii epi6.volreg.nii epi7.volreg.nii epi8.volreg.nii -polort A -num_stimts 15 -stim_file 1 'mat_epi_all.1D[0]' -stim_base 1 -stim_label 1 roll -stim_file 2 'mat_epi_all.1D[1]' -stim_base 2 -stim_label 2 pitch -stim_file 3 'mat_epi_all.1D[2]' -stim_base 3 -stim_label 3 yaw -stim_file 4 'mat_epi_all.1D[3]' -stim_base 4 -stim_label 4 dI-S -stim_file 5 'mat_epi_all.1D[4]' -stim_base 5 -stim_label 5 dR-L -stim_file 6 'mat_epi_all.1D[5]' -stim_base 6 -stim_label 6 dA-P -stim_times 7 ./stimuli/sample.txt "BLOCK(3.8,1)" -stim_label 7 Sample -stim_times 8 ./stimuli/delay_c1.txt "BLOCK(11.4,1)" -stim_label 8 Delay_C1 -stim_times 9 ./stimuli/delay_c2.txt "BLOCK(11.4,1)" -stim_label 9 Delay_C2 -stim_times 10 ./stimuli/delay_c3.txt "BLOCK(11.4,1)" -stim_label 10 Delay_C3 -stim_times 11 ./stimuli/delay_c4.txt "BLOCK(11.4,1)" -stim_label 11 Delay_C4 -stim_times 12 ./stimuli/delay_c5.txt "BLOCK(11.4,1)" -stim_label 12 Delay_C5 -stim_times 13 ./stimuli/delay_c6.txt "BLOCK(11.4,1)" -stim_label 13 Delay_C6 -stim_times 14 ./stimuli/test.txt "BLOCK(3.8,1)" -stim_label 14 Test -stim_times 15 ./stimuli/ITI.txt "BLOCK(7.6,1)" -stim_label 15 ITI -gltsym 'SYM: +0.1667*Delay_C1 +0.1667*Delay_C2 +0.1667*Delay_C3 +0.1667*Delay_C4 +0.1667*Delay_C5 +0.1667*Delay_C6' -glt_label 1 All_Condi -gltsym 'SYM: +0.1667*Delay_C1 +0.1667*Delay_C2 +0.1667*Delay_C3 +0.1667*Delay_C4 +0.1667*Delay_C5 +0.1667*Delay_C6 -ITI' -glt_label 2 All_Condi-ITI -tout -x1D X.all_condi.xmat.1D -xjpeg X.all_condi.jpg -fitts fitts.all_condi.nii -errts errts.all_condi.nii -bucket stats.all_condi.nii -overwrite 

