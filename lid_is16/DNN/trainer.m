% Step 5 : Training
if gpu_flag
    traindnn_gpu
else
    traindnn_cpu
end