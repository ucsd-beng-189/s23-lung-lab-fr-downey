%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;
setup_lung
cvsolve
outchecklung

%Task 3
% beta2 = 0:0.1:1
% PI2 = []
% PAbar2 = []
% Pabar2 = []
% Pv2 = []
% for i = 1:11
%     
%     beta = beta2(i)
%     setup_lung
%     cvsolve
%     outchecklung
% 
%     PI2(i)=PI
%     PAbar2(i)=PAbar
%     Pabar2(i)=Pabar
%     Pv2(i)=Pv
% 
% end
% 
% figure(4)
% plot(beta2, PI2)
% hold on
% plot(beta2, PAbar2)
% hold on
% plot(beta2, Pabar2)
% hold on
% plot(beta2, Pv2)
% legend('PI','PAbar','Pabar','Pv')
% title('Task 3')
% xlabel('Beta')
% ylabel('Partial Pressures')


%Task 4
%Set up M and beta inside setup_lung_soln and run it on lung_soln
%Loop through beta values until max M is reached.

%Beta = 0, M = 0.029
%Beta = 0.1, M = 0.029
%Beta = 0.2, M = 0.029
%Beta = 0.3, M = 0.029
%Beta = 0.4, M = 0.029
%Beta = 0.5, M = 0.029
%Beta = 0.6, M = 0.025
%Beta = 0.7, M = 0.023
%Beta = 0.8, M = 0.022
%Beta = 0.9, M = 0.018
%Beta = 1, M = 0.018

Beta4 = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]
M4 = [0.029 0.029 0.029 0.029 0.029 0.029 0.025 0.023 0.022 0.018 0.018]

figure(5)
plot(Beta4, M4)
title('Task 4')
xlabel('Beta')
ylabel('moles/minute')









    


