b = serial('COM4');
set(b,'BaudRate',38400);
fopen(b);
for i=1:900

    
    if((b.BytesAvailable > 0) && strcmp(b.Status,'open'))
        
        %                 a = controller(className,s);
        fprintf(b,'G0 C');
        break;
    else
        pause(0.1);
    end
    
end
    %                 pause(5);

disp('Closing connection');
fclose(instrfind);
clear b;


