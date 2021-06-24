errornum1=0;
clear regeig
for Pn2=5:10
    for Pn3=5:10
        P2=Pn2/10;
        P3=Pn3/10;
        cooperativeanalysis;
        findeigenvaluessmart;
        regeig(Pn2-4,Pn3-4,:)=realeig;
    end
end
plott