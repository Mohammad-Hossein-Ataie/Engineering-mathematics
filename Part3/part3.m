heart = load('rec_1m.mat');
t = 0:0.002:20-0.002;
figure(1);
plot(t,heart.val(1,:));
figure(2);
plot(t,heart.val(2,:));
figure(3);
plot(t(1:1000),heart.val(1,1:1000));
figure(4);
plot(t(1:1000),heart.val(2,1:1000));

