![Visitors](https://visitor-badge.glitch.me/badge?page_id=Ha0Tang/DPGAN) 
[![License CC BY-NC-SA 4.0](https://img.shields.io/badge/license-CC4.0-blue.svg)](https://github.com/Ha0Tang/DPGAN/blob/master/LICENSE.md)
![Python 3.6](https://img.shields.io/badge/python-3.6-green.svg)
![Packagist](https://img.shields.io/badge/Pytorch-1.0.0-red.svg)
![Last Commit](https://img.shields.io/github/last-commit/Ha0Tang/DPGAN)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-blue.svg)]((https://github.com/Ha0Tang/DPGAN/graphs/commit-activity))
![Contributing](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)
![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)


## Contents
  - [Semantic Image Synthesis with DPGAN](#Semantic-Image-Synthesis-with-DPGAN)
  - [Installation](#Installation)
  - [Dataset Preparation](#Dataset-Preparation)
  - [Generating Images Using Pretrained Model](#Generating-Images-Using-Pretrained-Model)
  - [Train and Test New Models](#Train-and-Test-New-Models)
  - [Evaluation](#Evaluation)
  - [Acknowledgments](#Acknowledgments)
  - [Related Projects](#Related-Projects)
  - [Citation](#Citation)
  - [Contributions](#Contributions)
  - [Collaborations](#Collaborations)

## Semantic Image Synthesis with DPGAN

**[Layout-to-Image Translation with Double Pooling Generative Adversarial Networks](https://arxiv.org/abs/2108.12900)**  
[Hao Tang](https://scholar.google.com/citations?user=9zJkeEMAAAAJ&hl=en)<sup>1</sup>, [Nicu Sebe](https://scholar.google.com/citations?user=stFCYOAAAAAJ&hl=en)<sup>2</sup>. <br> 
<sup>1</sup>ETH Zurich, Switzerland, <sup>2</sup>University of Trento, Italy.<br>
In [TIP 2021](https://ieeexplore.ieee.org/xpl/RecentIssue.jsp?punumber=83). <br>
The repository offers the official implementation of our paper in PyTorch.

In the meantime, check out our related CVPR 2020 paper [Local Class-Specific and Global Image-Level Generative Adversarial Networks for Semantic-Guided Scene Generation](https://github.com/Ha0Tang/LGGAN), ACM MM 2021 paper [Dual Attention GANs for Semantic Image Synthesis](https://github.com/Ha0Tang/LGGAN), and Arxiv paper [Edge Guided GANs with Semantic Preserving for Semantic Image Synthesis](https://github.com/Ha0Tang/EdgeGAN).

### Framework
<img src='./imgs/method.jpg' width=1200>

### Results of Generated Images

#### Cityscapes (512×256)
<img src='./imgs/city_results.jpg' width=1200>

#### Facades (1024×1024)
<img src='./imgs/facades_results.jpg' width=1200>

#### ADE20K (256×256)
<img src='./imgs/ade_results.jpg' width=1200>

#### CelebAMask-HQ (512×512)
<img src='./imgs/celeba_results.jpg' width=1200>

### Results of Generated Segmenation Maps

<img src='./imgs/seg.jpg' width=1200>

### [License](./LICENSE.md)
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />
Copyright (C) 2021 ETH Zurich, Switzerland and University of Trento, Italy.

All rights reserved.
Licensed under the [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode) (**Attribution-NonCommercial-ShareAlike 4.0 International**)

The code is released for academic research use only. For commercial use, please contact [bjdxtanghao@gmail.com](bjdxtanghao@gmail.com).

## Installation

Clone this repo.
```bash
git clone https://github.com/Ha0Tang/DPGAN
cd DAGAN/
```

This code requires PyTorch 1.0 and python 3+. Please install dependencies by
```bash
pip install -r requirements.txt
```

This code also requires the Synchronized-BatchNorm-PyTorch rep.
```
cd DPGAN/
cd models/networks/
git clone https://github.com/vacancy/Synchronized-BatchNorm-PyTorch
cp -rf Synchronized-BatchNorm-PyTorch/sync_batchnorm .
cd ../../
```

To reproduce the results reported in the paper, you would need an NVIDIA DGX1 machine with 8 V100 GPUs.

## Dataset Preparation
Please download the datasets on the respective webpages. 
- Facades: 55.8M, [here](http://cmp.felk.cvut.cz/~tylecr1/facade/).
- DeepFashion: 592.3M, [here](http://mmlab.ie.cuhk.edu.hk/projects/DeepFashion.html).
- CelebAMask-HQ: 2.7G, [here](https://github.com/switchablenorms/CelebAMask-HQ).
- Cityscapes: 8.4G, [here](https://www.cityscapes-dataset.com/).
- ADE20K: 953.7M, [here](http://data.csail.mit.edu/places/ADEchallenge/ADEChallengeData2016.zip).
- COCO-Stuff: 21.5G, [here](https://github.com/nightrome/cocostuff).

We also provide the prepared datasets for your convience. Please refer to [DAGAN](https://github.com/Ha0Tang/DAGAN#dataset-preparation) to download the datasets.

## Generating Images Using Pretrained Model
1. Download the pretrained models using the following script,
```
sh scripts/download_dpgan_model.sh dpgan_[dataset]
```
where `[dataset]` can be one of `cityscapes`, `ade`, `facades`, or `celeba`.

2. Change several parameter and then generate images using `test_[dataset].sh`. If you are running on CPU mode, append `--gpu_ids -1`.
3. The outputs images are stored at `./results/[type]_pretrained/` by default. You can view them using the autogenerated HTML file in the directory.

## Train and Test New Models
1. Prepare dataset.
2. Change several parameters and then run `train_[dataset].sh` for training.
There are many options you can specify. To specify the number of GPUs to utilize, use `--gpu_ids`. If you want to use the second and third GPUs for example, use `--gpu_ids 1,2`.
3. Testing is similar to testing pretrained models. Use `--results_dir` to specify the output directory. `--how_many` will specify the maximum number of images to generate. By default, it loads the latest checkpoint. It can be changed using `--which_epoch`.

## Evaluation
- FID: [mseitzer/pytorch-fid](https://github.com/mseitzer/pytorch-fid)
- FRD: [Ha0Tang/GestureGAN](https://github.com/Ha0Tang/GestureGAN/tree/master/scripts/evaluation/FRD)
- LPIPS: [richzhang/PerceptualSimilarity](https://github.com/richzhang/PerceptualSimilarity)
- DRN: [fyu/drn](https://github.com/fyu/drn) [model: drn-d-105_ms_cityscapes.pth]
- UperNet: [CSAILVision/semantic-segmentation-pytorch](https://github.com/CSAILVision/semantic-segmentation-pytorch) [model: baseline-resnet101-upernet]
- DeepLab: [kazuto1011/deeplab-pytorch](https://github.com/kazuto1011/deeplab-pytorch) [model: deeplabv2_resnet101_msc-cocostuff164k-100000.pth]

For more details, please refer to [this issue](https://github.com/NVlabs/SPADE/issues/39).

## Acknowledgments
This source code is inspired by both [GauGAN/SPADE](https://github.com/NVlabs/SPADE), [LGGAN](https://github.com/Ha0Tang/LGGAN), and [DAGAN](https://github.com/Ha0Tang/DAGAN).

## Related Projects
**[ECGAN](https://github.com/Ha0Tang/ECGAN) | [DAGAN](https://github.com/Ha0Tang/DAGAN) | [LGGAN](https://github.com/Ha0Tang/LGGAN) | [SelectionGAN](https://github.com/Ha0Tang/SelectionGAN) | [PanoGAN](https://github.com/sswuai/PanoGAN) | [Guided-I2I-Translation-Papers](https://github.com/Ha0Tang/Guided-I2I-Translation-Papers)**

## Citation
If you use this code for your research, please consider giving stars :star: and citing our papers :t-rex::

DPGAN
```
@article{tang2021layout,
  title={Layout-to-image translation with double pooling generative adversarial networks},
  author={Tang, Hao and Sebe, Nicu},
  journal={IEEE Transactions on Image Processing (TIP)},
  volume={30},
  pages={7903--7913},
  year={2021}
}
```

ECGAN
```
@article{tang2023edge,
  title={Edge Guided GANs with Contrastive Learning for Semantic Image Synthesis},
  author={Tang, Hao and Qi, Xiaojuan and Sun, Guolei, and Xu, Dan and and Sebe, Nicu and Timofte, Radu and Van Gool, Luc},
  journal={ICLR},
  year={2023}
}
```

DAGAN
```
@inproceedings{tang2020dual,
  title={Dual Attention GANs for Semantic Image Synthesis},
  author={Tang, Hao and Bai, Song and Sebe, Nicu},
  booktitle ={ACM MM},
  year={2020}
}
```

LGGAN
```
@article{tang2022local,
  title={Local and Global GANs with Semantic-Aware Upsampling for Image Generation},
  author={Tang, Hao and Shao, Ling and Torr, Philip HS and Sebe, Nicu},
  journal={IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI)},
  year={2022}
}

@inproceedings{tang2019local,
  title={Local Class-Specific and Global Image-Level Generative Adversarial Networks for Semantic-Guided Scene Generation},
  author={Tang, Hao and Xu, Dan and Yan, Yan and Torr, Philip HS and Sebe, Nicu},
  booktitle={CVPR},
  year={2020}
}
```

SelectionGAN
```
@article{tang2022multi,
  title={Multi-Channel Attention Selection GANs for Guided Image-to-Image Translation},
  author={Tang, Hao and Torr, Philip HS and Sebe, Nicu},
  journal={IEEE Transactions on Pattern Analysis and Machine Intelligence (TPAMI)},
  year={2022}
}

@inproceedings{tang2019multi,
  title={Multi-channel attention selection gan with cascaded semantic guidance for cross-view image translation},
  author={Tang, Hao and Xu, Dan and Sebe, Nicu and Wang, Yanzhi and Corso, Jason J and Yan, Yan},
  booktitle={CVPR},
  year={2019}
}
```

PanoGAN
```
@article{wu2022cross,
  title={Cross-View Panorama Image Synthesis},
  author={Wu, Songsong and Tang, Hao and Jing, Xiao-Yuan and Zhao, Haifeng and Qian, Jianjun and Sebe, Nicu and Yan, Yan},
  journal={IEEE Transactions on Multimedia (TMM)},
  year={2022}
}
```

## Contributions
If you have any questions/comments/bug reports, feel free to open a github issue or pull a request or e-mail to the author Hao Tang ([bjdxtanghao@gmail.com](bjdxtanghao@gmail.com)).

## Collaborations
I'm always interested in meeting new people and hearing about potential collaborations. If you'd like to work together or get in contact with me, please email bjdxtanghao@gmail.com. Some of our projects are listed [here](https://github.com/Ha0Tang).
___
*Take a few minutes to appreciate what you have and how far you've come.*
