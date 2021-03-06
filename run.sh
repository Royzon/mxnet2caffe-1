# configs
mx_model="model"
mx_json="model-symbol.json"
epoch=100000

caffe_prototxt="mobileface.prototxt"
caffe_model="mobileface.caffemodel"

python find_caffe.py
python find_mxnet.py

# json to prototxt
python json2prototxt.py \
  --mx-json $mx_json \
  --cf-prototxt $caffe_prototxt

# mxnet2caffe
python mxnet2caffe.py \
  --mx-model $mx_model\
  --mx-epoch $epoch \
  --cf-prototxt $caffe_prototxt\
  --cf-model $caffe_model
