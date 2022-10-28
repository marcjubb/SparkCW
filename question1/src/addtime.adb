pragma SPARK_Mode (On);


   procedure addTime
     (S, M, H, S1, M1, H1:  in Integer; C, SO, MO, HO: in out Integer)
   is

   begin

      SO := S1 + S;
      C  := 0;
      if SO > 60 then
         SO := 60;
         C  := 1;
      end if;
      MO := M1 + M + C;
      C  := 0;
      if MO > 60 then
         MO := 60;
         C  := 1;
      end if;
      HO := H1 + H + C;

   end addTime;

