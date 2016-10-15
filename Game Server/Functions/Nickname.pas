unit Nickname;

interface
uses Data.DB, DBCon, System.SysUtils,AccountInfo;
type
  TNickname = class
    private
      MySQL: TQuery;
      AccInfo: TAccountInfo;
    public
      ID: Integer;
      Nick: AnsiString;
      constructor Create(MySQL: TQuery;AccInfo: TAccountInfo);
      procedure Update;
  end;

implementation

constructor TNickname.Create(MySQL: TQuery;AccInfo: TAccountInfo);
Begin
    Self.ID:=Accinfo.ID;
    Self.MySQL:=MySQL;
    MySQL.SetQuery('SELECT NICK FROM nickname WHERE ID =:ID');
    MySQL.AddParameter('ID',AnsiString(IntToStr(ID)));
    MySQL.Run(1);
   if MySQL.Query.IsEmpty = False then begin
    Nick:=MySQL.Query.Fields[0].AsAnsiString;
   end;
End;

procedure TNickname.Update;
begin
  MySQL.SetQuery('UPDATE Nickname SET NICK = :NICK WHERE ID = :ID');
  MySQL.AddParameter('NICK',AnsiString(NICK));
  MySQL.AddParameter('ID',AnsiString(IntToStr(ID)));
  MySQL.Run(2);
end;

end.
