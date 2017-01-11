% Step 5 : Training
if gpu_flag
    if gv_flag
        traindnn_gpu_gv
    else
        traindnn_gpu_seqver
    end
else
    traindnn_cpu_seqver_v2
end
