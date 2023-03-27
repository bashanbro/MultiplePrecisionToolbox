function out=igamma(a,z)
% upper incomplete gamma function
%
%  see http://dlmf.nist.gov/8.7
%

%'eeeeeeee',kb

if prod(size(a))==1
 if prod(size(z))~=1
  a=ones(size(z))*a;
 end % if prod(size(z))~=1
end % if prod(size(a))==1
if prod(size(z))==1
 if prod(size(a))~=1
  z=ones(size(a))*z;
 end % if prod(size(z))~=1
end % if prod(size(a))==1


minTerms=250;
tol=mp(1e-100);
out=zeros(size(a));

for jj=1:prod(size(a))

 nextTerm=1;
 ii=0;
 foo1=z(jj)^a(jj)*exp(-z(jj))*gamma(a(jj));
 while abs(nextTerm)>tol | ii<minTerms
  nextTerm=foo1*z(jj)^ii/gamma(a(jj)+ii+1);
  ii=ii+1;
  out(jj)=out(jj)+nextTerm;
 end

 jj,ii
 %'wwwwww',kb
 out(jj)=gamma(a(jj))-out(jj);
end





