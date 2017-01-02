

package semaphore is 

    protected type Semaphore ( Start_Count : INTEGER := 1 ) is
        entry down;
        procedure up;

    private 
        Count : INTEGER := Start_Count;
    end Semaphore;


end semaphore;
