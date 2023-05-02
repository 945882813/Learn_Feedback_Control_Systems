% 第3章 动态响应

%% 例3.5
% 伯德图
k = 1;
numH = 1;
denH = [1, k];
% 传递函数模型
sysH = tf(numH, denH);
% 频率
w = logspace(-2, 2);
% 计算频率响应
[mag, phase] = bode(sysH, w);
% 作图
subplot(2, 1, 1);
loglog(w, squeeze(mag));
subplot(2, 1, 2);
semilogx(w, squeeze(phase));

%% 例3.9
num = conv([1,2], [1,4]);
den = conv([1,1,0], [1,3]);
[r, p, k] = residue(num, den);