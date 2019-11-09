disp('Adel Ali Ansari        U00038673 ')
disp('Intro. to NE & RS')
disp('Serial Radioactive Decay Project Assignment')
disp('   ')
disp('a. At what time is the total activity equal to 0.01 Ci?')
disp('b. At what time does the maximum activity of B occur?')
disp('c. At what time does the total maximum Activity (A+B) occur?')
disp('  ')

i=1;
for t=0:500:11000;
    A1(i)=(10000*(1-exp(-0.00021*t))+1.3*(10^12)*0.00021*exp(-0.00021*t))/(3.7*10^10);
    A2(i)=(0.001*1.3*(10^12)*(0.00021/(0.001-0.00021))*(exp(-0.00021*t)-exp(-0.001*t))+0.001*10000 *exp(-0.001*t)+10000*((0.00021-0.001+0.001*exp(-0.00021*t)-0.00021*exp(-0.001*t))/( 0.00021-0.001)))/(3.7*10^10);
    A(i)=A1(i)+A2(i);
    N(i)=(10000/0.00021)*(1-exp(-0.00021*t))+1.3*(10^12)*exp(-0.00021*t) + 1.3*(10^12)*((2.1*(10^-4))/((10^-3)-2.1*(10^-4)))*(exp(-2.1*(10^-4)*t)-exp(-(10^-3)*t))+10000*exp(-(10^-3)*t)+10000*((2.1*(10^-4)-(10^-3)+(10^-3)*exp(-2.1*(10^-4)*t)-2.1*(10^-4)*exp(-(10^-3)*t))/((10^-3)*2.1*(10*-4)-(10^-3)));
    T(i)=t;
i=i+1;
end

%Part A
X = ['Part A) The total activity is equal to 0.01 Ci at these times:'];
disp(X)
  
for i=1:23;
    if (A(i)<0.01+(0.01*0.02)) && (A(i)>0.01-(0.01*0.02))
       Time=T(i) 
    end
    
end

%Part B
B = ['Part B) The maximum activity of B occurs at time:'];
disp(B)

A2max = A2(1);
for i = 1:23;
    if A2(i) > A2max
        A2max = A2(i);
    end
end


A2max;
for i=1:23;
    if (A2(i)==A2max)
       i;
       Time=T(i) 
    end
    
end

%Part C
C = ['Part C) The total maximum Activity (A+B) occurs at time:'];
disp(C)

Amax = A(1);
for i = 1:23;
    if A(i) > Amax
        Amax = A(i);
    end
end


Amax;
for i=1:23;
    if (A(i)==Amax)
       i;
       Time=T(i) 
    end
    
end

%Part D
D = ['Part D) Time at which the total number of atoms (A+B) drop below 2e11 atoms is:'];
disp(D)
  
for i=1:23;
    if (N(i)<2e11)
       Time=T(i)
    break
    end
    
end
