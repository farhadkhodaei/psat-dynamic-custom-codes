%load current path
cd(Path.data);
%set name of simulunk model file
open_system('d_009my');
%set PV bus elements active power
set_param('d_009my/PV','p4q',num2str(P2));
set_param('d_009my/PV1','p4q',num2str(P3));
%do power flow and small signal stability analysis
%initialization
Settings.init=0;
Settings.pq2z=1;
clpsat.init=1;
clpsat.pq2z=1;
%analysis
fm_eigen('runsssa');
eig_result=SSSA.eigs