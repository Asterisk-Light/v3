program v3;

var 
  GameSpace:array[1..3,1..3] of string;
  p1w,p2w,draw,pl1,pl2,winner,allspace:boolean;
  a,b,i,j,row1,row2,col1,col2:integer;

{
  Player 1's turn procedure
}
procedure p1t();
  begin
    writeln('Player 1s turn');
    writeln('enter the colum');
    readln(col1);
    writeln('enter the row');
    readln(row1);
    writeln;
    writeln;

    if (GameSpace[row1,col1]='0') or (GameSpace[row1,col1]='X') then
      begin
        writeln('that space is taken');
        pl1:=false
      end
    else
    begin
      GameSpace[row1,col1]:='X';
      writeln(' ',GameSpace[1,1],' ','|',' ',GameSpace[1,2],' ','|',' ',GameSpace[1,3]);
      writeln('-----------');
      writeln(' ',GameSpace[2,1],' ','|',' ',GameSpace[2,2],' ','|',' ',GameSpace[2,3]);
      writeln('-----------');
      writeln(' ',GameSpace[3,1],' ','|',' ',GameSpace[3,2],' ','|',' ',GameSpace[3,3]);
      pl1:=true;
    end;
  end;

{
  player 2's turn procedure
}


procedure p2t();
  begin
    writeln('Player 2s turn');
    writeln('enter the colum');
    readln(col2);
    writeln('enter the row');
    readln(row2);
    writeln;
    writeln;

    if (GameSpace[row2,col2]='0') or (GameSpace[row2,col2]='X') then
      begin
        writeln('that space is taken');
        pl2:=false
      end
    else
    begin
      GameSpace[row2,col2]:='0';
      writeln(' ',GameSpace[1,1],' ','|',' ',GameSpace[1,2],' ','|',' ',GameSpace[1,3]);
      writeln('-----------');
      writeln(' ',GameSpace[2,1],' ','|',' ',GameSpace[2,2],' ','|',' ',GameSpace[2,3]);
      writeln('-----------');
      writeln(' ',GameSpace[3,1],' ','|',' ',GameSpace[3,2],' ','|',' ',GameSpace[3,3]);
      pl2:=true;
    end;
  end;

{
  player 1 win check
}

procedure p1wcheck();
  begin
    if (GameSpace[1,1]='X') and (GameSpace[1,2]='X') and (GameSpace[1,3]='X') then
            begin 
              winner:=true;
              p1w:=true;
            end
          else if (GameSpace[2,1]='X') and (GameSpace[2,2]='X') and (GameSpace[2,3]='X') then 
          begin
            winner:=true;
            p1w:=true;
          end
          else if (GameSpace[3,1]='X') and (GameSpace[3,2]='X') and (GameSpace[3,3]='X') then 
          begin
            winner:=true;
            p1w:=true;
          end
         else if (GameSpace[1,1]='X') and (GameSpace[2,1]='X') and (GameSpace[3,1]='X') then 
          begin
            winner:=true;
            p1w:=true;
          end
         else if (GameSpace[1,2]='X') and (GameSpace[2,2]='X') and (GameSpace[3,2]='X') then
           begin
            winner:=true;
            p1w:=true;
           end
         else if (GameSpace[1,3]='X') and (GameSpace[2,3]='X') and (GameSpace[3,3]='X') then
          begin
            winner:=true;
            p1w:=true;
          end
         else if (GameSpace[1,1]='X') and (GameSpace[2,2]='X') and (GameSpace[3,3]='X') then
          begin
            winner:=true;
            p1w:=true;
          end
         else if (GameSpace[1,3]='X') and (GameSpace[2,2]='X') and (GameSpace[3,1]='X') then
          begin
            winner:=true;
            p1w:=true;
          end;
  end;

{
  player 2 win check
}
procedure p2wcheck();
  begin
    if (GameSpace[1,1]='0') and (GameSpace[1,2]='0') and (GameSpace[1,3]='0') then
            begin 
              winner:=true;
              p2w:=true;
            end
          else if (GameSpace[2,1]='0') and (GameSpace[2,2]='0') and (GameSpace[2,3]='0') then 
          begin
            winner:=true;
            p2w:=true;
          end
          else if (GameSpace[3,1]='0') and (GameSpace[3,2]='0') and (GameSpace[3,3]='0') then 
          begin
            winner:=true;
            p2w:=true;
          end
         else if (GameSpace[1,1]='0') and (GameSpace[2,1]='0') and (GameSpace[3,1]='0') then 
          begin
            winner:=true;
            p2w:=true;
          end
         else if (GameSpace[1,2]='0') and (GameSpace[2,2]='0') and (GameSpace[3,2]='0') then
           begin
            winner:=true;
            p2w:=true;
           end
         else if (GameSpace[1,3]='0') and (GameSpace[2,3]='0') and (GameSpace[3,3]='0') then
          begin
            winner:=true;
            p2w:=true;
          end
         else if (GameSpace[1,1]='0') and (GameSpace[2,2]='0') and (GameSpace[3,3]='0') then
          begin
            winner:=true;
            p2w:=true;
          end
         else if (GameSpace[1,3]='0') and (GameSpace[2,2]='0') and (GameSpace[3,1]='0') then
          begin
            winner:=true;
            p2w:=true;
          end;
  end;


{
  Draw Check
}

procedure drawcheck();
  begin
    if p1w=false and draw=false and p2w=false and winner=false then
      begin
        for a := 1 to 3 do
          begin
            for b:=1 to 3 do
              begin
                if (GameSpace[a,b]='X') or (GameSpace[a,b]='0') then
                  begin
                    draw:=true;
                  end
                else
                  begin
                    draw:=false;
                  end;
              end;
          end;
      end;
    if (allspace=true) and (Winner=false) then
      begin
        draw:=true;
      end;
  end;

{
  Main Code
}
begin
  writeln('gmae has started');
  writeln;
  writeln;
  writeln(' ',GameSpace[1,1],' ','|',' ',GameSpace[1,2],' ','|',' ',GameSpace[1,3]);
  writeln('-----------');
  writeln(' ',GameSpace[2,1],' ','|',' ',GameSpace[2,2],' ','|',' ',GameSpace[2,3]);
  writeln('-----------');
  writeln(' ',GameSpace[3,1],' ','|',' ',GameSpace[3,2],' ','|',' ',GameSpace[3,3]);
  repeat 
      writeln;
      writeln;
      p1t();
      p1wcheck();
      p2wcheck();
      drawcheck();
      p2t();
      p2wcheck();
      p1wcheck();
      drawcheck();
  until (winner=true) or (draw=true);
  if (winner=true) and (p1w=true) then
    begin
      writeln('Player 1 was won');
    end
  else if (winner=true) and (p2w=true) then
  begin
    writeln('Player 2 has won');
  end
  else if (draw=true) and (winner=false) then
  begin
    writeln('It is a draw');
  end;
  readln;

end.
