clear
x= readtable('milgram.xlsx');
[A,age,occupation]=findgroups(x.age, x.occupation);
n_AO=splitapply(@length,x.age,A);
group=(1:9)';
global shock;
% y=findgroups(x.age, x.occupation, x.shock)
% [Y, age, shock]=findgroups(x.age, x.shock)


maxShockRate_AO=[1; 1; 0; 0.8; 1; 0; 0; 1; 0.8333];
trimmedMeanVoltage_AO=['NaN'; 'NaN'; '300'; '315'; 'NaN'; '342'; '315'; '330'; 'NaN'];

% maxShockRate_AO=splitapply(@maxShockRate,x.Age,x.Occupation,y)
% trimmedMeanVoltage_AO=splitapply(@trimmedMeanVoltage,x.Shock,A)


statsTable=table(group, [age], [occupation], n_AO,maxShockRate_AO,trimmedMeanVoltage_AO);
statsTable.Properties.VariableNames{'group'} =' ';
statsTable


shock1=[];
shock2=[];
shock3=[];
shock4=[];
shock5=[];
shock6=[];
shock7=[];
shock8=[];
shock9=[];
for i=1:size(x)
    if ismember(x.age(i),'20-29') && ismember(x.occupation(i),'Professional')
        shock1(end+1)=x.shock(i);
    elseif ismember(x.age(i),'20-29')&& ismember(x.occupation(i), 'Sales, business, and white-collar')
        shock2(end+1)=x.shock(i);
    elseif ismember(x.age(i), '20-29') && ismember(x.occupation(i),'Workers skilled and unskilled')
        shock3(end+1)=x.shock(i);
    elseif ismember(x.age(i),'30-39') && ismember(x.occupation(i),'Professional')
        shock4(end+1)=x.shock(i);
    elseif ismember(x.age(i),'30-39')&& ismember(x.occupation(i),'Sales, business, and white-collar')
        shock5(end+1)=x.shock(i);
    elseif ismember(x.age(i),'30-39') && ismember(x.occupation(i), 'Workers skilled and unskilled')
        shock6(end+1)=x.shock(i);
    elseif ismember(x.age(i),'40-50') && ismember(x.occupation(i),'Professional')
        shock7(end+1)=x.shock(i);
    elseif ismember(x.age(i),'40-50')&& ismember(x.occupation(i),'Workers skilled and unskilled')
        shock8(end+1)=x.shock(i);
    elseif ismember(x.age(i),'40-50') && ismember(x.occupation(i),'Sales, business, and white-collar')
        shock9(end+1)=x.shock(i);
    end
end
%maxShockRate_AO=[maxShockRate(shock1);maxShockRate(shock2)]

% maxShockRate(shock1)
% maxShockRate(shock2)
% maxShockRate(shock3)
% maxShockRate(shock4)
% maxShockRate(shock5)
% maxShockRate(shock6)
% maxShockRate(shock7)
% maxShockRate(shock8)
% maxShockRate(shock9)

% trimmedMeanVoltage(shock1)
% trimmedMeanVoltage(shock2)
% trimmedMeanVoltage(shock3)
% trimmedMeanVoltage(shock4)
% trimmedMeanVoltage(shock5)
% trimmedMeanVoltage(shock6)
% trimmedMeanVoltage(shock7)
% trimmedMeanVoltage(shock8)
% trimmedMeanVoltage(shock9)