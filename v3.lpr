program v3;

var 
  GameSpace:array[1..3,1..3] of string;
  p1w,p2w,draw,pl1,pl2,winner:boolean;
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
    if (GameSpace[1,1]='X') and (GameSpace[1,2]='X') and (GameSpace[1,3]='X') then
            begin 
            winner:=true;
            p2w:=true;
            end
          else if (GameSpace[2,1]='X') and (GameSpace[2,2]='X') and (GameSpace[2,3]='X') then 
          begin
            winner:=true;
            p2w:=true;
          end
          else if (GameSpace[3,1]='X') and (GameSpace[3,2]='X') and (GameSpace[3,3]='X') then 
          begin
            winner:=true;
            p2w:=true;
          end
         else if (GameSpace[1,1]='X') and (GameSpace[2,1]='X') and (GameSpace[3,1]='X') then 
          begin
            winner:=true;
            p2w:=true;
          end
         else if (GameSpace[1,2]='X') and (GameSpace[2,2]='X') and (GameSpace[3,2]='X') then
           begin
            winner:=true;
            p2w:=true;
           end
         else if (GameSpace[1,3]='X') and (GameSpace[2,3]='X') and (GameSpace[3,3]='X') then
          begin
            winner:=true;
            p2w:=true;
          end
         else if (GameSpace[1,1]='X') and (GameSpace[2,2]='X') and (GameSpace[3,3]='X') then
          begin
            winner:=true;
            p2w:=true;
          end
         else if (GameSpace[1,3]='X') and (GameSpace[2,2]='X') and (GameSpace[3,1]='X') then
          begin
            winner:=true;
            p2w:=true;
          end;
  end;


//main code
begin
  writeln('gmae has started');
  writeln;
  writeln;
  writeln(' ',GameSpace[1,1],' ','|',' ',GameSpace[1,2],' ','|',' ',GameSpace[1,3]);
  writeln('-----------');
  writeln(' ',GameSpace[2,1],' ','|',' ',GameSpace[2,2],' ','|',' ',GameSpace[2,3]);
  writeln('-----------');
  writeln(' ',GameSpace[3,1],' ','|',' ',GameSpace[3,2],' ','|',' ',GameSpace[3,3]);
  while (winner=false) and (draw=false) do
    begin
      writeln;
      writeln;
      p1t();
    end;
  readln;

end.
