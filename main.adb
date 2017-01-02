
WITH Ada.Integer_Text_IO; 
with ada.text_io;
with semaphore; 

procedure main is 
    
    sem : semaphore.semaphore(2);

        --  Task Type Specification
     TASK TYPE intro_task (message : Integer);

     TASK BODY intro_task IS       --  Task Body Definition
     BEGIN
        sem.down;
          FOR count IN 1..10 LOOP
               delay(0.5);
                
                for i in 1..2*message loop
                    ada.text_io.put(" ");
                end loop;
               
               Ada.Text_IO.put (Item => "Display from Task ");
               Ada.Integer_Text_IO.put (Item => message, Width => 1);
               Ada.Integer_Text_IO.put ( count,2 );
               Ada.Text_IO.new_line;
          END LOOP;
        sem.up;
     END intro_task;
     --  Unlike procedures, these tasks are not called.
     --  These three tasks are activated once the program begins.
     Task_1 : intro_task (message => 1);
     Task_2 : intro_task (message => 2);
     Task_3 : intro_task (message => 3);
     Task_4 : intro_task (message => 4);
     Task_5 : intro_task (message => 5);
     Task_6 : intro_task (message => 6);
     Task_7 : intro_task (message => 7);
     Task_8 : intro_task (message => 8);
     Task_9 : intro_task (message => 9);

begin
    null;
end main;
