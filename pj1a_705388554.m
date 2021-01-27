clear
%Part 1
occupation = cell(40,1);
for i=1:15
    occupation{i} = 'Workers skilled and unskilled';
end
for i=16:31
    occupation{i} = 'Sales, business, and white-collar';
end
for i=32:40
    occupation{i} = 'Professional';
end


age=cell(40,1);
for i=1:4
    age{i} = '20-29';
end
for i=5:9
    age{i} = '30-39';
end
for i=10:15
    age{i} = '40-50';
end
for i=16:18
    age{i} = '20-29';
end
for i=19:24
    age{i} = '30-39';
end
for i=25:31
    age{i} = '40-50';
end
for i=32
    age{i} = '20-29';
end
for i=33:37
    age{i} = '30-39';
end
for i=38:40
    age{i} = '40-50';
end

global shock;
shock=zeros(1,40);  
for i=1:5
    shock(i) = 300;
end
for i=6
    shock(i) = 375;
end
for i=7
    shock(i) = 360;
end
for i=8
    shock(i) = 345;
end
for i=9:10
    shock(i) = 330;
end
for i=11:36
    shock(i) = 450;
end
for i=37:40
    shock(i) = 315;
end

shock=reshape(shock,[40,1]);
milgram=table(occupation, age, shock);
milgram
writetable(milgram,'milgram.xlsx');





