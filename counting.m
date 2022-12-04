maxiter = 200;
blowup = 200;
c=0;
z0 = [1+1i .5+.5i 0+1i 1.000001i  .99999i];
%iterating...
for n=1:5
        z = z0(n);
        counter=0;
        while abs(z)<blowup && counter < maxiter
            z = z^2 + c;  
            counter = counter + 1;
        end
        F(n)=counter;
 end
 F
