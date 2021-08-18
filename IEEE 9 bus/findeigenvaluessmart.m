pfnum=[2,6,10];
clear realeig

for j=1:3
    for i=1:length(SSSA.pf(:,1))
        partfact(i,j)=SSSA.pf(i,pfnum(j));
    end
end
partfactcopy=partfact;
for i=1:length(SSSA.report.Matrix{2,1}(:,1))
    if (SSSA.report.Matrix{2,1}(i,2)==0)
        continue;
    end
    partfactcopy(i,:)=0;
end
for j=1:3
    [partvalone(j),imagzero(j)]=max(partfactcopy(:,j));
end
[partvalone,imagzeromax]=max(partvalone);
eig1=SSSA.report.Matrix{2,1}(imagzero(imagzeromax),1);
for m=1:3
    partfact(imagzero(imagzeromax),m)=0;
end
for i=1:length(SSSA.report.Matrix{2,1}(:,1))
    if (SSSA.report.Matrix{2,1}(i,1)==eig1)
       for m=1:3
          partfact(i,m)=0;
       end 
    end
end

for j=1:3
    [vall2(j),indx2(j)]=max(partfact(:,j));
end
[vall2,indj2]=max(vall2);
indi2=indx2(indj2);
eig2=SSSA.report.Matrix{2,1}(indi2,1);
for m=1:3
    partfact(indi2,m)=0;
end
for i=1:length(SSSA.report.Matrix{2,1}(:,1))
    if (SSSA.report.Matrix{2,1}(i,1)==eig2)
       for m=1:3
          partfact(i,m)=0;
       end 
    end
end

for j=1:3
    [vall3(j),indx3(j)]=max(partfact(:,j));
end
[vall3,indj3]=max(vall3);
indi3=indx3(indj3);
eig3=SSSA.report.Matrix{2,1}(indi3,1);
imagzeromax
indj2
indj3
realeig(1)=eig1;
realeig(2)=eig2;
realeig(3)=eig3;
if (indj2>indj3)
    realeig(2)=eig3;
    realeig(3)=eig2;
end
realeig