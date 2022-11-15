n = -5 : 5;
x1 = 1 * gauspuls(n);

x2 = 2 * gauspuls(n);

y1 = sin((pi / 2) * x1);
subplot(3, 1, 1);
stem(n, y1);
title("y1[n]");
xlabel("n")
ylabel("y[n]");

y2 = sin((pi / 2) * x2);
subplot(3, 1, 2);
stem(n, y2);
title("y2[n]");
xlabel("n")
ylabel("y[n]");

y1_2 = 2 * y1;
subplot(3, 1, 3);
stem(n, y1_2);
title("2*y1[n]");
xlabel("n")
ylabel("y[n]");


