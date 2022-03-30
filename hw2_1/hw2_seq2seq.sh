#!/bin/bash

# Download model file from Google Drive
filename='s2vt_best.pth'
fileid='1bIyf3YcZ95DR2V0S-8xaxES-LgYOutwb'

wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?export=download&id=${fileid}' -O- | sed -rn 's/.confirm=([0-9A-Za-z_]+)./\1\n/p')&id=${fileid}" -O ${filename} && rm -rf /tmp/cookies.txt

# https://drive.google.com/file/d/1bIyf3YcZ95DR2V0S-8xaxES-LgYOutwb/view?usp=sharing


python model_seq2seq.py $1 $2