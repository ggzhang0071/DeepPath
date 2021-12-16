img="nvcr.io/nvidia/tensorflow:18.08-py3" 

docker run --gpus all  --privileged=true   --workdir /git --name "deeppath"  -e DISPLAY --ipc=host -d --rm  -p 6611:4452  \
-v /raid/git/DeepPath:/git/DeepPath \
 -v /raid/git/datasets:/git/datasets \
 $img sleep infinity

docker exec -it deeppath /bin/bash

#docker images  |grep "tensroflow"  |grep "19."

#docker stop  biobert