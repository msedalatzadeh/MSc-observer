function Fn=integraltan(a,alpha,mu,beta,gama,Le,n)
h=1/n;
x=zeros(1,n);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sum=tanforce(a,0,alpha,mu,beta,gama,Le);
for i=2:n
    x(i)=x(i-1)+h;
end
for j=2:3:n
    sum=sum+3*tanforce(a,x(j),alpha,mu,beta,gama,Le);
end
for k=3:3:n
    sum=sum+3*tanforce(a,x(k),alpha,mu,beta,gama,Le);
end
for l=4:3:n
    sum=sum+2*tanforce(a,x(l),alpha,mu,beta,gama,Le);
end

sum=sum+tanforce(a,1,alpha,mu,beta,gama,Le);
Fn=Le*sum*3*h/8;
