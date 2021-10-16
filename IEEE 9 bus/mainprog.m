errornum1=0;ddiv=7;
clear regeig
PL5=1.25;QL5=0.5;
PL6=0.9;QL6=0.3;
PL8=1;QL8=0.35;

HH1=7;HH2=7;HH3=7;
for Pn2=5:10
    for Pn3=5:10
        P2=Pn2/ddiv;
        P3=Pn3/ddiv;
        if (P2+P3>3.15)
            continue;
        end
        cooperativeanalysis;
        findeigenvaluessmart;
        regeig(Pn2-4,Pn3-4,:)=realeig;
    end
end
plott