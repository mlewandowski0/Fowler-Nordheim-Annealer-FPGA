#move code

# recreate from scratch
rm -rf run_on_cluster

# create the directory tree
mkdir run_on_cluster
mkdir run_on_cluster/configs

cp NeuroSA_runner.py run_on_cluster/NeuroSA_runner.py
cp utils.py run_on_cluster/utils.py

# move the problems to run
cp G15.npy run_on_cluster/G15.npy
cp toy.npy run_on_cluster/toy.npy

# move the config (TODO: do something better than manual running)
cp -r configs/* run_on_cluster/configs/

# move the running script (TODO: automate the process of submission)
cp submit_jobs.job  run_on_cluster/submit_jobs.job

# zip the package for sending to cluster
zip -r cluster.zip run_on_cluster/*
