function jibon_chobi(gen,size)
    
    %gen = [0,0,0,0,0;
    %      0,0,1,1,1;
    %       0,1,1,1,0;
    %       0,0,0,0,0;
    %       0,0,0,0,0];
    %size = 5;
    
    y1 = size;
    y2 = size;
    y3 = size-1;
    y4 = size-1;
    
    %figure(1);
    
    
    axis([0 6 0 6]);
    
    hold on;
    grid on;
    %rec = rectangle('Position',[0 0 1 1] );
    
    
    
    %figure(1)
    for i = 1:size
        
        for j = 1:size
            if gen(i,j) == 1
                h=fill([j-1,j, j, j-1], [y1, y2, y3, y4], 'black');
            end
        
        
        end
        
        y1 = y1 - i;
        y2 = y2 - i;
        y3 = y3 - i;
        y4 = y4 - i;
    
    
    end
    
    
    pause(0.3);
    clf('reset');
    pause(0.3);
    
end