%fx=@(x) 6*x^3-5*x^2+7*x-2;
%24/5/2016
fx=[6 -5 7 -2];
xold=1;
 disp(' iteration   xold        error');
for k=1:10;
    xnew=xold;
    fd=polyder(fx);
    xold=xold-polyval(fx,xold)/polyval(fd,xold);
     
    error=abs(xnew-xold)/xnew*100;
  
   disp([k     xold        error]);   
end