import sys
from numpy import *
from matplotlib.pyplot import *

file1 = open(sys.argv[1])

NFI, TEMP, EKIN, EPOT, ETOT = loadtxt(file1, unpack=True, skiprows=3)

subplot(411)
plot(NFI,TEMP)
xlabel('NFI')
ylabel('Temp')
subplot(412)
plot(NFI,EKIN, 'y')
xlabel('NFI')
ylabel('Kin. En.')
subplot(413)
plot(NFI,EPOT, 'r')
xlabel('NFI')
ylabel('Pot. En.')
subplot(414)
plot(NFI,ETOT, 'k')
xlabel('NFI')
ylabel('Tot. En.')
show()