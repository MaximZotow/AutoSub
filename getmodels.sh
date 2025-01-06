#!/bin/bash

if [ -z $1 ]; then
	echo "Please provide as argument the model number you wish to download. E.G. 1.0.0"
	exit 1;
else
	model=$1
fi

model_url=https://github.com/coqui-ai/STT-models/releases/download/german%2Fjaco-assistant%2Fv$model/model.tflite
scorer_url=https://github.com/coqui-ai/STT-models/releases/download/german%2Fjaco-assistant%2Fv$model/kenlm_de.scorer

wget ${model_url} -O "coqui-v$model-german-huge-vocabulary.tflite"
wget ${scorer_url} -O "coqui-v$model-german-huge-vocabulary.scorer"

