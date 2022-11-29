program v3;

uses
  crt;

var 
  GameSpace:array[1..3,1..3] of string;
  SF:array[1..3,1..3] of boolean;
  p1w,p2w,draw,pl1,pl2,winner,re:boolean;
  a,b,row1,row2,col1,col2:integer;
  reask:string;

{
  GameSpace is the play area that you see`
  SF is to check if a Space is Filled
  p1w - player 1 wins
  p2w - player 2 wins
  pl1 - checks if player 1's turn has ended
  pl2 - checks if player 2's turn has ended
  winner - checks if there is a winner overall
  a and b are used in if statements
  row1 and col1 are player 1's chosen row and column
  row2 and col2 are player 2's chosen row and column
}

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
      SF[row1,col1]:=true;
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
      SF[row2,col2]:=true;
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
    if (p1w=true) then
      begin
        re:=false
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
    if winner=false then
      begin
        for a := 1 to 3 do
          begin
            for b:=1 to 3 do
              begin
                if (SF[1,1]=true) and (SF[1,2]=true) and (SF[1,3]=true) and (SF[2,1]=true) and (SF[2,2]=true) and (SF[2,3]=true) and (SF[3,1]=true) and (SF[3,2]=true) and (SF[3,3]=true) then
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
  end;

{
  Main Code
}
begin
  re:=true;
  writeln('game has started');
  writeln;
  writeln;
  writeln(' ',GameSpace[1,1],' ','|',' ',GameSpace[1,2],' ','|',' ',GameSpace[1,3]);
  writeln('-----------');
  writeln(' ',GameSpace[2,1],' ','|',' ',GameSpace[2,2],' ','|',' ',GameSpace[2,3]);
  writeln('-----------');
  writeln(' ',GameSpace[3,1],' ','|',' ',GameSpace[3,2],' ','|',' ',GameSpace[3,3]);
  while re=true do
    begin
      repeat 
        writeln;
        writeln;
        writeln('You will have to wait until after player 2s turn for the game to end');
        p1t();
        p1wcheck();
        drawcheck();
        p2t();
        p2wcheck();
        drawcheck();
      until (winner=true) or (draw=true);
    end;
  if (winner=true) and (p1w=true) then
    begin
      Clrscr;
      writeln;
      writeln;
      writeln('    Player 1 was won');
      writeln;
      writeln('    would you like to do  rematch?');
      readln(reask);
      case (reask) of
        'yes','y':re:=true;
        'no','n':re:=false;
      end;
    end
  else if (winner=true) and (p2w=true) then
  begin
    Clrscr;
    writeln;
    writeln;
    writeln('    Player 2 has won');
    writeln;
      writeln('    would you like to do  rematch?');
      readln(reask);
      case (reask) of
        'yes','y':re:=true;
        'no','n':re:=false;
      end;
  end
  else if (draw=true) and (winner=false) then
  begin
    Clrscr;
    writeln;
    writeln;
    writeln('    It is a draw');
    writeln;
      writeln('    would you like to do  rematch?');
      readln(reask);
      case (reask) of
        'yes','y':re:=true;
        'no','n':re:=false;
      end;
  end;
  for a:= 1 to 3 do
    begin
      for b:= 1 to 3 do
        begin
          GameSpace[a,b]:=' ';
          SF[a,b]:=false;
        end;
    end;
{
  One Remacth will occur if rematch is requested
}Clrscr;
  winner:=false;
  p1w:=false;
  p2w:=false;
  draw:=false;
  writeln;
  writeln;
  writeln;
  writeln(' ',GameSpace[1,1],' ','|',' ',GameSpace[1,2],' ','|',' ',GameSpace[1,3]);
  writeln('-----------');
  writeln(' ',GameSpace[2,1],' ','|',' ',GameSpace[2,2],' ','|',' ',GameSpace[2,3]);
  writeln('-----------');
  writeln(' ',GameSpace[3,1],' ','|',' ',GameSpace[3,2],' ','|',' ',GameSpace[3,3]);
  while re=true do
    begin
      repeat 
        writeln;
        writeln;
        writeln('You will have to wait until after player 2s turn for the game to end');
        p1t();
        p1wcheck();
        drawcheck();
        p2t();
        p2wcheck();
        drawcheck();
      until (winner=true) or (draw=true);
    end;
  readln;

end.
