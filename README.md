# MYOB DevOps Technical Test

The solution is built with a docker image and pipeline actions for CI. 

To test you can fetch the latest image from ghcr.io

docker pull ghcr.io/zac0011/ops-tech-challenge:main

Alternatively it can be built with docker build, passing the enviromental variable "SECRET"

## Issues found

 /token Does not respond in JSON and stats break it. Also reading should have error handling

 /health is now displaying the correct header

 /metrics are always null, since I commented out the stats section in token, to temporarily have /token running

