Raw data
1======unzip
unzip -x (file.zip)
e.g. unzip -x WMPFC_20230921.zip

2======cd Raw data/file
dcm2niix -o ~/2022_WMPFC/WMPFC_sub007_1/ -f T1.nii ./7_MP2RAGE_tra_UNI-DEN/

-------------------------------------------------------
-o ~/ (output file) -f T1.nii ./7_MP2RAGE_tra_UNI-DEN/
*****find DEN and write DEN(number!!!!!)

3======DICOM 2 nii
for n in {1..8};do dcm2niix -o ~/2022_WMPFC/WMPFC_sub008_1/ -f run${n} "./1$[n-1]_cmrr_mbep2d1_bold_p8iso_20230525_final_Run${n}";done

----------
8 runs
output file
task name

4==========OUTPUT FILE
========================time slice
4.1/ rm *.json
4.2/ 3dTcat -prefix epi1.nii run1_c32.nii[2..$] 
4.3/ 3dinfo run1_c32.nii (130tr)
4.4/ 3dinfo epi1.nii (-------test one epi---128tr)
then pipeline:
for n in {2..8};do 3dTcat -prefix "epi${n}.nii" "./run${n}_c32.nii";done

4=============piple

for n in {1..8};do 3dTcat -prefix "epi${n}.nii" "./run${n}_c32.nii";done [WRONG]

for n in {1..8};do 3dTcat -prefix "epi${n}.nii" "./run${n}_c32.nii[2..$]";done

4.5/ rm run*.nii

5=============head motion
3dvolreg -verbose -zpad 2 -base epi1.nii[0] -1Dfile epi1.1D -prefix epi1.volreg.nii -cubic -1Dmatrix_save mat.epi1.aff12.1D epi1.nii 

3dvolreg -verbose -zpad 2 -base epi1.nii[0] -1Dfile epi2.1D -prefix epi2.volreg.nii -cubic -1Dmatrix_save mat.epi2.aff12.1D epi2.nii
----------------------------
5.1/ plot
1dplot mat.epi1.aff12.1D 

6====================fliter
3dTproject -prefix epi1.detrend.nii -stopband 0 0.015 -input epi1.volreg.nii

