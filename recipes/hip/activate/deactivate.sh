export HIP_PATH=$HIP_PATH_CONDA_BACKUP
unset HIP_PATH_CONDA_BACKUP
if [ -z $HIP_PATH ]; then
    unset HIP_PATH
fi

export HIP_CLANG_PATH=$HIP_CLANG_PATH_CONDA_BACKUP
unset HIP_CLANG_PATH_CONDA_BACKUP
if [ -z $HIP_CLANG_PATH ]; then
    unset HIP_CLANG_PATH
fi

