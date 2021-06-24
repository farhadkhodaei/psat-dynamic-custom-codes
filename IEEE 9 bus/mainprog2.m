errornum1=0;
clear regeig
for Pn2=9:9
    for Pn3=5:5
        P2=Pn2/10;
        P3=Pn3/10;
        cooperativeanalysis;
        findeigenvalues;
        regeig(Pn2-4,Pn3-4,:)=realeig;
    end
end
regeig
plott