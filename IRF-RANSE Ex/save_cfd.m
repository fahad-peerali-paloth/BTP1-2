function save_cfd(n)
copyfile pp-1-0.001.dat temp_file.dat
copyfile pp-1-0.001.cas temp_file.cas

kkk=sprintf('pp-1-0.001%s%d.dat','-',n);
lll=sprintf('pp-1-0.001%s%d.cas','-',n);

zzz='temp_file.dat';
yyy='temp_file.cas';

eval(['!rename ' zzz ' ' kkk]);
eval(['!rename ' yyy ' ' lll]);
end
