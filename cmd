# General Training
python3 main.py -p ~/Desktop --gpu 0 -b 16 --seed 42 --optim adam --lr 0.0001 --lr_scheduler cosine --epochs 30 -a "roberta-base" --pretrained --suffix "example"

##################### Single Intent #####################
# Pos_Tag
python3 main.py -p ~/Desktop --gpu 0 -b 32 --seed 42 --optim adamw --lr 1e-5 --lr_scheduler reduce --epochs 30 -a "roberta-base" --pretrained --pos_tag --suffix "pos_tag"

# Clinc150
python3 main.py -p ~/Desktop/multi_intents/data/MixATIS_clean --gpu 0 -b 32 --seed 42 --optim adamw --lr 1e-5 --lr_scheduler reduce --epochs 30 -a "roberta-base" --pretrained --suffix "Clinc150"

##################### Multi Intents #####################

# MixATIS
python3 main.py -p ~/Desktop/multi_intents/data/MixATIS_clean --gpu 0 -b 32 --seed 42 --optim adamw --lr 1e-5 --lr_scheduler reduce --epochs 30 -a "roberta-base" --pretrained --multi_intent --suffix "example"


# MixSNIPS
python3 main.py -p ~/Desktop/multi_intents/data/MixSNIPS_clean --gpu 0 -b 32 --seed 42 --optim adamw --lr 1e-5 --lr_scheduler reduce --epochs 30 -a "roberta-base" --pretrained --multi_intent --suffix "MixSNIPS"


--Evaluate
python3 main.py -e -p ~/Desktop/multi_intents/data/MixATIS_clean -a 'roberta-base' --resume ~/Desktop/multi_intents/models/arch[roberta-base]_optim[adamw]_lr[1e-05]_lrsch[reduce]_batch[32]_MixATIS/model_best.pth.tar --gpu 0 -b 32 --pretrained --multi_intent


python3 main.py -e -p ~/Desktop/multi_intents/data/MixSNIPS_clean -a 'roberta-base' --resume ~/Desktop/multi_intents/models/arch[roberta-base]_optim[adamw]_lr[1e-05]_lrsch[reduce]_batch[32]_MixSNIPS/model_best.pth.tar --gpu 0 -b 32 --pretrained --multi_intent



python3 main.py -p ~/Desktop/Multi-Intents-Detection/data/MixSNIPS_clean --gpu 0 --b 128 --seed 42 --optim adamw --lr 1e-5 --lr_scheduler step --epochs 50 -a "MulCon" --pretrained --suffix "MixSNIPS_bert_meanpooling_bce_pcl"


python3 main.py -p ~/Desktop/Multi-Intents-Detection/data/MixSNIPS_clean --resume /home/song/Desktop/Multi-Intents-Detection/models/arch[MulCon]_optim[adamw]_lr[1e-05]_lrsch[step]_batch[128]_MixSNIPS_bce/model_best.pth.tar --gpu 0 -b 128 --seed 42 --optim adamw --lr 1e-5 --lr_scheduler step --epochs 50 -a "MulCon" --pretrained --suffix "MixSNIPS_resume"

python3 main_laban.py -p ~/Desktop/Multi-Intents-Detection/data/MixSNIPS_clean --gpu 0 -b 128 --seed 42 --optim adamw --lr 1e-5 --lr_scheduler step --epochs 50 -a "LABAN" --pretrained --suffix "MixSNIPS_normal_laban_1"
