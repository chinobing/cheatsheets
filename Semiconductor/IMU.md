---
title: 惯性测量单元（IMU）
category: 半导体 | Semiconductor
layout: 2017/sheet
updated: 2022-09-26
keywords: gd gxcldy 惯导
intro: 惯性测量单元（IMU）的相关资料
---


## 释义
{: .-one-column .-custom}

### IMU
- **惯性测量单元（Inertial Measurement Unit，IMU）**， 是测量物体三轴姿态角（或角速率）以及加速度的装置。通常，IMU内部集成3轴陀螺仪和3轴加速度计，以及运动/姿态算法。
- 如果IMU内部集成的传感器采用MEMS技术实现，那么可被称为**MEMS IMU**。

### MEMS IMU
- 消费类MEMS IMU主要采用`电容检测原理`
- **电容式MEMS加速度计**的模型是一个由弹簧-质量块组成的阻尼系统，以水平方向加速度测量为例，根据牛顿第二定律和胡克定律，可得F=-k·x=m·a，那么加速度a=-k·x/m，对于制作完成的加速度计，弹性系数k和质量m是定值，而x可通过测量梳齿或平板电容而间接获得。
- **电容式MEMS陀螺仪**借助旋转运动产生的科里奥利力（惯性力）——需增加驱动信号，通过测量梳齿或平板电容而间接获得角速度。

#### 产品代表
- BMI260（博世传感器，Bosch Sensortec） - 针对智能手机应用
- LSM6DSM（意法半导体，STMicroelectronics） - 集成3轴加速度计和3轴陀螺仪的iNEMO 6DoF IMU
- ICM-42688-P（TDK InvenSense） - 高性能MotionTracking™6轴惯性测量单元——单片集成了3轴陀螺仪和3轴加速度计

## 参考
* [《消费类MEMS惯性测量单元（IMU）产品对比分析-2022版》](https://mp.weixin.qq.com/s/0K3Qsmz_bgEa3hR-DUFOPw)  _(麦姆斯咨询王懿)_