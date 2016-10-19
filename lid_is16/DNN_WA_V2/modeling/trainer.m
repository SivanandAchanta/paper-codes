
% Train DNN-WA
if gpu_flag
traindnnwa_gpu
else
%traindnnwa_cpu
traindnnwa_cpu_v1
end
