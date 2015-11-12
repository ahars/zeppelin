dir='/Users/ahars/Github/zeppelin'

docker build --rm -t ahars/zeppelin $dir
docker run -t -i --rm \
	--name zeppelin \
	-v $dir:/opt/zeppelin/ \
	ahars/zeppelin \
	/bin/bash
