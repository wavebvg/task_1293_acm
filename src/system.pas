unit system;

{$TYPEINFO OFF}

interface

{$i systypes.inc}

procedure haltproc(e:longint); cdecl; external 'c' name '_haltproc';
procedure FPC_INITIALIZEUNITS; compilerproc;
procedure FPC_DO_EXIT; compilerproc;

implementation

procedure FPC_INITIALIZEUNITS; [public, alias: 'FPC_INITIALIZEUNITS'];
begin
end;

procedure FPC_DO_EXIT; [public, alias: 'FPC_DO_EXIT'];
begin  
  haltproc(ExitCode);
end;

end.
