%load current path
cd(Path.data);
%set name of simulunk model file
open_system('d_009_2');
%set PV bus elements active power
set_param('d_009_2/PV','p4q',num2str(P2));
set_param('d_009_2/PV1','p4q',num2str(P3));

%set loads' active and reactive powers
loadstr1=['[',num2str(PL6),'  ',num2str(QL6),']'];
loadstr2=['[',num2str(PL8),'  ',num2str(QL8),']'];
loadstr3=['[',num2str(PL5),'  ',num2str(QL5),']'];
set_param('d_009_2/PQ1','p4_5q',loadstr1);
set_param('d_009_2/PQ2','p4_5q',loadstr2);
set_param('d_009_2/PQ3','p4_5q',loadstr3);

%set inertia
inertiastr1=['[',num2str(2*H1),'  ',num2str(0),']'];
inertiastr2=['[',num2str(2*H2),'  ',num2str(0),']'];
inertiastr3=['[',num2str(2*H3),'  ',num2str(0),']'];
set_param('d_009_2/Gen1','p18_19q',inertiastr1);
set_param('d_009_2/Gen2','p18_19q',inertiastr2);
set_param('d_009_2/Gen3','p18_19q',inertiastr3);

%do power flow and small signal stability analysis
%initialization
Settings.init=0;
Settings.pq2z=1;
clpsat.init=1;
clpsat.pq2z=1;
%analysis
fm_eigen('runsssa');                                   


