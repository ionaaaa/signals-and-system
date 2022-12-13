此函数的简短摘要。
此函数的详细说明。
function myPlot(t, time_seq, fre_seq, sig, step, fig_order)

%raw时域图
subplot(3, 2, fig_order);
plot(t, abs(time_seq));
xlim([0, 0.01]);
ylim([0, 0.002])
xticks(0 : 0.002 : 0.01);
xticklabels(["0", "2", "4", "6", "8", "10"]);
title(sprintf('%s Signal(%s)', sig, step));
xlabel("Time(ms)");
ylabel("Magnitude");

%raw频域图
subplot(3, 2, fig_order + 1);
N = length(fre_seq);
w = [-N / 2 : N / 2 - 1];
plot(w, 20 * log10(abs(fre_seq)));
ylim([-300, -100]);
xticklabels(["-10", "-5", "0", "5", "10"]);
title(sprintf("%s Signal(%s) spectrum", sig, step));
xlabel("Frequency(MHz)");
ylabel("Magnitude(dB)");
end
