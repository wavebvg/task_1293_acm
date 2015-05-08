unit sysinitpas;
{$TYPEINFO OFF}
interface

implementation

procedure PASCALMAIN; external name 'PASCALMAIN';

procedure ExitProcess(ExitCode: longint); cdecl; external 'c' name 'ExitProcess'; 

procedure Entry; [public, alias: '_mainCRTStartup'];
begin
   PASCALMAIN;
   ExitProcess(0);
end;

end.
