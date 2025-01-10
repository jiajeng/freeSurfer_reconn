# ISUBJECT_DIR : subject dir
# NII_DIR : under subject dir, the nii file folder dir
# SUBJECTS_DIR : result folder
ISUBJECT_DIR=/media/sf_MRI_T1
NII_DIR=/T1nii
directory=$ISUBJECT_DIR
SUBJECTS_DIR="/media/sf_MRI_T1/recon/"


if [ ! -d "$directory" ]; then
  exit 1
fi

# $(find ${directory}/SUB* -maxdepth 0 -type d -exec basename {} \;) : ls(fullfile(directory,'SUB*'))
#		        ^
#			      |
#			      |
#			change this(filename pattern e.x. SUB*)
for file in $(find ${directory}/SUB* -maxdepth 0 -type d -exec basename {} \;); do
    FILE_DIR=$directory"/"$file$NII_DIR
    for niifile in "${FILE_DIR}"/*".nii"; do
    	recon-all -subjid ${file} -i ${niifile} -all
    done
done
