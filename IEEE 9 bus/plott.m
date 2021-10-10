figure(1)

surface([5:1:10]/ddiv,[5:1:10]/ddiv,regeig(:,:,1))
surface([5:1:10]/ddiv,[5:1:10]/ddiv,regeig(:,:,2))
surface([5:1:10]/ddiv,[5:1:10]/ddiv,regeig(:,:,3))
%surface(regeig(:,:,4)./max(max(regeig(:,:,4))))
%surface(regeig(:,:,5)./max(max(regeig(:,:,5))))
%surface(regeig(:,:,6)./max(max(regeig(:,:,6))))