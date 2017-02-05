function DrawKeepOut(fig, KeepOut)

figure(fig);
hold on;

if ~isempty(KeepOut)
    for i=1:size(KeepOut,1)
%        pause(0.5)
       plot(KeepOut(i,[1,3]),KeepOut(i,[2,4]),'r--','LineWidth',2); 
    end
end

end
