num = 1/1000;
den = [1 50/1000];
sys = tf(num*500, den);
step(sys);