errornum1=0;ddiv=7;
clear regeig
PL5=1.25;QL5=0.5;
PL6=0.9;QL6=0.3;
PL8=1;QL8=0.35;

maxotherreal=-1000;

clear xxx;
clear aplhh;
H1=11;H2=11;H3=2.2;
sampind=1;
for Pn2=5:10
    for Pn3=5:10
        P2=Pn2/ddiv;
        P3=Pn3/ddiv;
        if (P2+P3>3.15)
            continue;
        end
        cooperativeanalysis;
        findeigenvaluessmart;
        xxx(sampind,1)=1;
        xxx(sampind,2)=P2;
        xxx(sampind,3)=P3;
        xxx(sampind,4)=P2^2;
        xxx(sampind,5)=P2*P3;
        xxx(sampind,6)=P3^2;
        aplhh(sampind,1)=realeig(1);
        aplhh(sampind,2)=realeig(2);
        aplhh(sampind,3)=realeig(3);
        regeig(Pn2-4,Pn3-4,:)=realeig;
        sampind=sampind+1;
        maxotherrealmat(Pn2-4,Pn3-4)=maxotherreal;
    end
end
plott
regr