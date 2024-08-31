# Statistical-Analysis-nnUNet
This repository contains the code for the paper titled "Statistical Analysis of nnU-Net models for Lung Nodule Segmentation". 

**Note:** This repository is under continuous development. We are actively updating the code. Please check back frequently for the latest updates.

### Custom Modifications
- **Modified nnU-Net Trainers:** We have customized the nnU-Net trainers `nnunetv2/training/nnUNetTrainer` to allow for:
  - Adjusting the number of training epochs.
  - Modifying the exponent in the polynomial learning rate scheduler.
