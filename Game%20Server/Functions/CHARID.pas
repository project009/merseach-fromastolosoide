unit CHARID;

interface
uses Data.DB, DBCon, System.SysUtils,AccountInfo;
type
  TCHARID = class
    private
      MySQL: TQuery;
      AccInfo: TAccountInfo;
    public
      ID: Integer;
      CHARID: AnsiString;
      constructor Create(MySQL: TQuery;AccInfo: TAccountInfo);
      procedure Update;
  end;
implementation

constructor TCHARID.Create(MySQL: TQuery;AccInfo: TAccountInfo);
Begin
    Self.ID:=Accinfo.ID;
    Self.MySQL:=MySQL;
    MySQL.SetQuery('SELECT CHARID FROM characters WHERE ID =:ID');
    MySQL.AddParameter('ID',AnsiString(IntToStr(ID)));
    MySQL.Run(1);
   if MySQL.Query.IsEmpty = False then begin
    CHARID:=MySQL.Query.Fields[0].AsAnsiString;
   end;
End;
procedure TCHARID.Update;
begin
  MySQL.SetQuery('UPDATE characters SET CHARID = :CHARID WHERE ID = :ID');
  MySQL.AddParameter('CHARID',AnsiString(CHARID));
  MySQL.AddParameter('ID',AnsiString(IntToStr(ID)));
  MySQL.Run(2);
end;

end.
