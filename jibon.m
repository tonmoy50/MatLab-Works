function jibon(size, gen)

    gen1 = [0,0,0,0,0;
            0,0,1,1,1;
            0,1,1,1,0;
            0,0,0,0,0;
            0,0,0,0,0;];
    
    %jibon_chobi(gen1, size);
    gen_n = zeros(size,size);
    k1 = 0;
    k2 = 0;

    %meshgrid(gen1);

    while 1
        for it = 1:gen-1
            jibon_chobi(gen1, size);

            for i = 1:size
                for j = 1:size
                    k1 = i;
                    k2 = j;
                    flag = 0;
                    counter = 0;

                    %in = 0;
                    for l = 1:8

                        if l == 1
                            k1 = i - 1;
                            k2 = j - 1;
                        elseif l <= 3
                                k2 = k2+1;
                        elseif l > 3 && l <= 5
                            k1 = k1 + 1;
                        elseif l < 8
                            k2 = k2 - 1;
                        else
                            k1 = k1 - 1;                        
                        end

                        if (k1 > 0 && k1 <= size) && (k2 > 0 && k2 <= size)
                            %in = in + 1;
                            if gen1(k1, k2) == 1
                                counter = counter + 1;
                            end                   
                        end

                    end


                    if gen1(i, j) == 0    

                        %disp(counter);
                        if counter == 3
                            gen_n(i, j) = 1;
                        end
                    else
                        if counter < 2
                            gen_n(i, j) = 0;
                        elseif counter == 2 || counter == 3
                            gen_n(i, j) = 1;
                        elseif counter > 3
                            gen_n(i, j) = 0;
                        end
                    end

                end


           end 
           disp(gen_n);
           gen1 = gen_n;
           


        end
    end

    





end