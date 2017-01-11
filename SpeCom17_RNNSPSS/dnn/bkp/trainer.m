% Step 5 : Training
if gpu_flag
   if gv_flag
      traindnn_gpu_gv
   else
      traindnn_gpu
   end
else
    traindnn_cpu
end
