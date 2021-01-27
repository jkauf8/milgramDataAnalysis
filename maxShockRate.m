function maxShockRate(n)
    counter=0;
    for i=1:length(n)
        if n(i)==450
            counter = counter + 1;
        end 
    end 
    maxShockRate = (counter/length(n));
    
    maxShockRate
end