






for ii=5:8;
sc=['K1';'O1';'P1';'Q1';'M2';'S2';'N2';'K2'];

scc=sc(ii,:);
k=1;

uu.am=Amu;                                  % u�������
uu.ph=Phu;                                    % u������λ
vv.am=Amv;                                   % v�������
vv.ph=Phv;                                     % v ������λ

dep=depth1;                                  % ���

p=[1,4,ii-4];

for i=11:6:74                                  % ����i��ĳ�����Բ
m=i;    
[lmax,lmin,Ic] = T_ellipse(uu.am(i,ii),uu.ph(i,ii),vv.am(i,ii),vv.ph(i,ii),scc,lat,t,p,m,dep);
la(k,i) = lmax; sa(k,i) = lmin; thea(k,i) = Ic(1);
clear m 
end

set(gca,'fontsize',12);

end

print(gcf,'zz','-dpng');


