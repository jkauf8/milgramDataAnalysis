function trimmedMeanVoltage(m)
    trimmedMeanVoltage=0;
    otherCounter=0;
    counter=0;
    for i=1:length(m)
        if m(i)~=450
            trimmedMeanVoltage= m(i)+trimmedMeanVoltage;
            counter = counter +1;
        elseif m(i)==450
            otherCounter= otherCounter+1;
        end
    end
    if otherCounter==length(m)
        trimmedMeanVoltage=NaN;
    else
        trimmedMeanVoltage =  trimmedMeanVoltage/counter;
    end
    trimmedMeanVoltage
end
