%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;
setup_lung
cvsolve
outchecklung

%Task 3
beta2 = 0:0.1:1
PI2 = []
PAbar2 = []
Pabar2 = []
Pv2 = []
for i = 1:11

    beta = beta2(i)
    setup_lung
    cvsolve
    outchecklung

    PI2(i)=PI
    PAbar2(i)=PAbar
    Pabar2(i)=Pabar
    Pv2(i)=Pv

end

figure(4)
plot(beta2, PI2)
hold on
plot(beta2, PAbar2)
hold on
plot(beta2, Pabar2)
hold on
plot(beta2, Pv2)
legend('PI','PAbar','Pabar','Pv')
title('Task 3')
xlabel('Beta')
ylabel('Partial Pressures')
    


