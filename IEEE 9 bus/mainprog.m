errornum1=0;
clear regeig
for Pn2=5:10
    for Pn3=5:10
        P2=Pn2/8;
        P3=Pn3/8;
        cooperativeanalysis;
        findeigenvaluessmart;
        regeig(Pn2-4,Pn3-4,:)=realeig;
    end
end
plott