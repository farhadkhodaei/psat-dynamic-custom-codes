errornum1=0;ddiv=7;
clear regeig
PL5=2.65;QL5=-0.75;
PL6=0.25;QL6=0.5;
PL8=0.25;QL8=0.5;
for Pn2=5:10
    for Pn3=5:10
        P2=Pn2/ddiv;
        P3=Pn3/ddiv;
        cooperativeanalysis;
        findeigenvaluessmart;
        regeig(Pn2-4,Pn3-4,:)=realeig;
    end
end
plott