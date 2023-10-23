% 定义余弦波的参数
amplitude = 1;        % 幅度
num_samples = 150;    % 总样本数

% 生成离散时间向量
n = 0:num_samples-1;

% 生成离散的余弦波信号
cos_wave = amplitude * cos(0.2 * pi * 0.1 * n);
dft_result = fft(cos_wave);

% 计算频谱
frequency_resolution = 1 / num_samples; % 频率分辨率
frequencies = (0:num_samples-1) * frequency_resolution;

% 创建新的图形窗口
figure;

plot(n, cos_wave);
xlabel('离散时间点');
ylabel('幅度');
title('时域图');

figure;
% 绘制离散的余弦波信号
stem(n, cos_wave);
xlabel('离散时间点');
ylabel('幅度');
title('离散时间的单频余弦周期序列');

%**************************************************************
%*****************************************************
%*****************************************************


random_int1 = randi([1, 20]);
random_num1 = random_int1 * 0.1;%生成0.1-2的0.1的整数倍
random_int2=randi([1,10]);
random_num2=random_int2*0.1;%生成0.1-1的0.1整数倍

Amplitude=1;%幅度从0.1到2
frequency=0.3;%频率从0.1-1
Samples=19500;
n=0:Samples-1;
CosWave=Amplitude*cos(0.02*frequency*pi*n);
%1cos(0.01pi*n)
DFTResult=fft(CosWave);
freq_resolution=1/Samples;%计算频率分辨率
freq=(0:Samples-1)*freq_resolution;%将freq标度由角频率转为赫兹

figure;
plot(freq,abs(DFTResult));
xlabel('频率');
ylabel('幅度');
title('频谱图');

figure;
plot(n,CosWave);
xlabel("离散点");
ylabel('幅度');
title('时域图');



%******************************************
