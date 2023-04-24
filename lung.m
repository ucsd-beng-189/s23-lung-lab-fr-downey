%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;
% setup_lung
% cvsolve
% outchecklung

%Task 3

% PI2 = []
% PAbar2 = []
% Pabar2 = []
% Pv2 = []
% beta2 = 0:0.1:1
% 
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

% Beta4 = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]
% M4 = [0.029 0.029 0.029 0.029 0.029 0.029 0.025 0.023 0.022 0.018 0.018]
% 
% figure(5)
% plot(Beta4, M4)
% title('Task 4')
% xlabel('Beta')
% ylabel('moles/minute')

%Task 5

%Only changing cI in setup_lung

% PAbar5 = []
% Pabar5 = []
% Pv5 = []
% 
% cAbar5 = []
% cabar5 =[]
% cv5 = []
%cI5 = 0.004:0.001:0.04
% 
% for i = 1:length(cI5)
% 
%     cI = cI5(i)
%     setup_lung
%     cvsolve
%     outchecklung
% 
% 
%     PAbar5(i)=PAbar;
%     Pabar5(i)=Pabar;
%     Pv5(i)=Pv;
% 
%     cAbar5(i) = cAbar;
%     cabar5(i) = cabar;
%     cv5(i) = cv;
% end
% 
% figure(6)
% plot(cI5, PAbar5)
% hold on
% plot(cI5, Pabar5)
% hold on
% plot(cI5, Pv5)
% title('Partial Pressures vs. cI')
% xlabel('cI')
% ylabel('Partial Pressures')
% 
% figure(7)
% plot(cI5, cAbar5)
% hold on
% plot(cI5, cabar5)
% hold on
% plot(cI5, cv5)
% title('Concentrations vs. cI')
% xlabel('cI')
% ylabel('Concentrations')

%Task 6


% PAbar6 = []
% Pabar6 = []
% Pv6 = []
% 
% cAbar6 = []
% cabar6 =[]
% cv6 = []
% %PI6 = (760*22.4*(310/273))*cI5
% PI6 = 0.004:0.001:0.04
% 
% for i = 1:length(PI6)
% 
%     PI = PI6(i)
%     setup_lung
%     cvsolve
%     outchecklung
% 
% 
%     PAbar6(i)=PAbar;
%     Pabar6(i)=Pabar;
%     Pv6(i)=Pv;
% 
%     cAbar6(i) = cAbar;
%     cabar6(i) = cabar;
%     cv6(i) = cv;
% end
% 
% figure(7)
% plot(PI6, PAbar6)
% hold on
% plot(PI6, Pabar6)
% hold on
% plot(PI6, Pv6)
% title('Partial Pressures vs. PI')
% xlabel('PI')
% ylabel('Partial Pressures')
% legend('PAbar','Pabar','Pv')
% 
% figure(8)
% plot(PI6, cAbar6)
% hold on
% plot(PI6, cabar6)
% hold on
% plot(PI6, cv6)
% title('Concentrations vs. PI')
% xlabel('PI')
% ylabel('Concentrations')
% legend('cAbar','cabar','cv')
% 


%Task 7
% PAbar6 = []
% Pabar6 = []
% Pv6 = []
% 
% cAbar6 = []
% cabar6 =[]
% cv6 = []
% PI6 = 0.004:0.01:0.04
% 
% for i = 1:length(PI6)
% 
%     PI = PI6(i)
%     setup_lung
%     cvsolve
%     outchecklung
% 
% 
%     PAbar6(i)=PAbar;
%     Pabar6(i)=Pabar;
%     Pv6(i)=Pv;
% 
%     cAbar6(i) = cAbar;
%     cabar6(i) = cabar;
%     cv6(i) = cv;
% end

% figure(7)
% plot(PI6, PAbar6)
% hold on
% plot(PI6, Pabar6)
% hold on
% plot(PI6, Pv6)
% title('Partial Pressures vs. PI')
% xlabel('PI')
% ylabel('Partial Pressures')
% legend('PAbar','Pabar','Pv')
% 
% figure(8)
% plot(PI6, cAbar6)
% hold on
% plot(PI6, cabar6)
% hold on
% plot(PI6, cv6)
% title('Concentrations vs. PI')
% xlabel('PI')
% ylabel('Concentrations')
% legend('cAbar','cabar','cv')

% Task 9
% PI9 = []
% PAbar9 = []
% Pabar9 = []
% Pv9 = []
% 
% cAbar9 = []
% cabar9 =[]
% cv9 = []
% 
% cstar9 = 0.04:-0.001:0.004
% 
% for i = 1:length(cstar9)
% 
%     cstar = cstar9(i)
%     setup_lung
%     cvsolve
%     outchecklung
% 
% 
%     PI9(i) = PI;
%     PAbar9(i)=PAbar;
%     Pabar9(i)=Pabar;
%     Pv9(i)=Pv;
% 
%     cAbar9(i) = cAbar;
%     cabar9(i) = cabar;
%     cv9(i) = cv;
% end
% 
% figure(9)
% plot(cstar9, PI9)
% hold on
% plot(cstar9, PAbar9)
% hold on
% plot(cstar9, Pabar9)
% hold on
% plot(cstar9, Pv9)
% title('Partial Pressures vs. Cstar')
% xlabel('Cstar')
% ylabel('Partial Pressures')
% legend('PI','PAbar','Pabar','Pv')
% 
% figure(10)
% plot(cstar9, cAbar9)
% hold on
% plot(cstar9, cabar9)
% hold on
% plot(cstar9, cv9)
% title('Concentrations vs. Cstar')
% xlabel('Cstar')
% ylabel('Concentrations')
% legend('cAbar','cabar','cv')
% 
% 
% 














    


