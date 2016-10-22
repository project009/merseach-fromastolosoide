unit Packets;

interface
uses System.Generics.Collections, Windows, Log, System.SysUtils,IniFiles;

Type
TRPackets = Record
  procedure create;
End;

implementation

{ TRPackets }

procedure TRPackets.create;
var
  ini: TIniFile;
  Packet: AnsiString;
begin
  ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'\PACKETS.lua');
  Packet:=ini.ReadString('EndGame','Packet','');
end;

end.
