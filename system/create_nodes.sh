for i in {1..6}; do 
uvt-kvm create ubuntu0$i release=trusty arch=amd64 --disk 20 --bridge br-int --memory 4096 --password ubuntu; done
