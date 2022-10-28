pragma SPARK_Mode;
with Ada.Text_Io, Ada.Integer_Text_IO, Clock;
use Ada.Text_Io, Ada.Integer_Text_Io, Clock;


procedure Main is
   S, M, H, S1, M1, H1, SO , MO , HO, C : Integer;
   User_Input : String(1 .. 20);
   Last : Integer;
begin
   loop
      Put("Enter a number1 in hour from 0 .. 23: ");   
         Get(C);
      loop
	 Put("Enter a number1 in hour from 0 .. 23: ");   
         Get(H);
	 exit when H in 0 .. 23;
	 Put_Line("Please Enter a number between 0 and 23");
      end loop;
      
      
      loop
	 Put("Enter a number1 in mins from 0 .. 59: ");   
         Get(M);
	 exit when M in 0 .. 59;
	 Put_Line("Please Enter a number between 0 and 59");
      end loop;
      
       loop
	 Put("Enter a number1 in SECS from 0 .. 59: ");   
         Get(S);
	 exit when S in 0 .. 59;
	 Put_Line("Please Enter a number between 0 and 59");
      end loop;
      
      
      
      loop
     Put("Enter a number1 in hour from 0 .. 23: ");   
         Get(H1);
	 exit when H1 in 0 .. 23;
	 Put_Line("Please Enter a number between 0 and 23");
      end loop;
      
      
      loop
	 Put("Enter a number1 in mins from 0 .. 59: ");   
         Get(M1);
	 exit when M1 in 0 .. 59;
	 Put_Line("Please Enter a number between 0 and 59");
      end loop;
      
       loop
	 Put("Enter a number1 in SECS from 0 .. 59: ");   
         Get(S1);
	 exit when S1 in 0 .. 59;
	 Put_Line("Please Enter a number between 0 and 59");
      end loop;
      
      
       
      
      
      
      
     -- Put("The result of the function  is ");
     -- Put(To12(T));
     -- New_Line;   
      
      
      addTime(S, M, H, S1, M1, H1,C);
      Put("The result of the procedure is ");
      Put(SO);   
      Put(MO); 
      Put(HO); 
      New_Line;   
   
     
      Get_Line(User_Input, Last);  -- clearing input buffer
      Put("Do you want to try again (y/n):");
      Get_Line(User_Input, Last);
      exit when User_Input(1 .. 1) = "n";
   end loop;   
end Main;
