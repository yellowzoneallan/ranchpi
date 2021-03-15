#!/bin/bash
# file to process k3s containers for loading into registry
curl -sfL https://github.com/k3s-io/k3s/releases/download/v1.20.4%2Bk3s1/k3s-images.txt -o k3s-images.txt
File="k3s-images.txt"
Lines=$(cat $File)
for Line in $Lines
do
  echo "docker pull $Line" >> dockerpull.txt
  echo "docker tag $Line localreg:5000/`echo $Line | cut -f 1 -d ':' `" >> dockertag.txt
  echo "docker push localreg:5000/`echo $Line | cut -f 3 -d '/' `" >> dockerpush.txt
done

