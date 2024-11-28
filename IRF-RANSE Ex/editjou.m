function editjou(H,v_o,lamda,dt)
% Read txt into cell A
fid = fopen('21.txt','r');
i = 1;
tline = fgetl(fid);
A{i} = tline;
while ischar(tline)
    i = i+1;
    tline = fgetl(fid);
    A{i} = tline;
end
fclose(fid);

% Change cell A
A{8} = sprintf('(cx-gui-do cx-set-real-entry-list "Velocity Inlet*Frame3*Frame1(Momentum)*Table1*Table11*RealEntry2(Averaged Flow X-Velocity)%s ''( %2f))','"',v_o);
A{9} = sprintf('(cx-gui-do cx-set-real-entry-list "Velocity Inlet*Frame3*Frame6(Multiphase)*Table1*Table12(Wave Group Inputs)*Table1*Table2*Frame1*Table1(Wave-1)*Table2*RealEntry2(Wave Height)%s ''( %2f))','"',H);
A{10} = sprintf('(cx-gui-do cx-set-real-entry-list "Velocity Inlet*Frame3*Frame6(Multiphase)*Table1*Table12(Wave Group Inputs)*Table1*Table2*Frame1*Table1(Wave-1)*Table2*RealEntry2(Wave Length)%s ''( %2f))','"',lamda);
A{16} = sprintf('(cx-gui-do cx-set-real-entry-list "Run Calculation*Table1*Table7*RealEntry1(Time Step Size)%s ''( %2f))','"',dt);

% Write cell A into txt
fid = fopen('21.txt', 'wt');
for i = 1:numel(A)
    if A{i+1} == -1
        fprintf(fid,'%s', A{i});
        break
    else
        fprintf(fid,'%s', A{i});
        fprintf(fid, '\n');
    end
end
end