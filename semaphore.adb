

package body semaphore is

    protected body Semaphore is 
        
        entry down when Count > 0 is
        begin
            Count := Count - 1;
        end down;
        
        
        procedure up is 
        begin
            Count := Count + 1;
        end up;
        
    end Semaphore;
    
end semaphore;
