unit AccountInfo;

interface

uses Data.DB, DBCon, System.SysUtils;

type
  TAccountInfo = class
    private
      MySQL: TQuery;
    public
      ID: Integer;
      Login: AnsiString;
      Char: Integer;
      Room: Integer;
      GM: Boolean;
      Win: Integer;
      Loss: Integer;
      constructor Create(ID: Integer; MySQL: TQuery);
      procedure Update;
  end;

implementation

constructor TAccountInfo.Create(ID: Integer; MySQL: TQuery);
begin
  Self.ID:=ID;
  Self.MySQL:=MySQL;
  MySQL.SetQuery('SELECT LOGIN,SCHAR, GM,Win,Loss FROM Users WHERE ID = :ID');
  MySQL.AddParameter('ID',AnsiString(IntToStr(ID)));
  MySQL.Run(1);
  if MySQL.Query.IsEmpty = False then begin
    Login:=MySQL.Query.Fields[0].AsAnsiString;
    Char:=MySQL.Query.Fields[1].AsInteger;
    GM:=Boolean(MySQL.Query.Fields[2].AsInteger);
    Win:=MySQL.Query.Fields[3].AsInteger;
    Loss:=MySQL.Query.Fields[4].AsInteger;
    MySQL.Query.Next;
  end;
  Room:=-1;
end;

procedure TAccountInfo.Update;
begin
  MySQL.SetQuery('UPDATE Users SET SCHAR = :SCHAR WHERE ID = :ID');
  MySQL.AddParameter('SCHAR',AnsiString(IntToStr(Char)));
  MySQL.AddParameter('ID',AnsiString(IntToStr(ID)));
  MySQL.Run(2);
end;

end.

