# dps-project

The scripts to run the trainers are under `/scripts`. You can update the generalization_type in the scripts files to choose between `none`, `dense`, `mix`

### Environment

Python 3.10.12

### Dependencies

All are used with latest versions

1. Datasets
2. Evaluate

### Results

All recorded results are saved in `/results` as json files.

## How to run the scripts

### Go in to scripts folder

```
cd scripts
```

### Run fine-tuning with full dataset

```
bash run_squad.sh
```

### Run low resource fine-tuning

```
bash run_low_resource_squad.sh
```

### Code Updates

Updates were added to `run_qa.py` for additional model and data arguments and low resources data partition and other DPS settings.

Also added DPS Classes to `/src/transformers/models/bert`

## Citation

```
@inproceedings{haojiefine,
  title={Fine-Tuning Pre-Trained Language Models Effectively by Optimizing Subnetworks Adaptively},
  author={Haojie, Zhang and Li, Ge and Li, Jia and Zhang, Zhongjin and Zhu, Yuqi and Jin, Zhi},
  booktitle={Advances in Neural Information Processing Systems}
}
```
