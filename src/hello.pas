program hello;

{$TYPEINFO OFF}
{$IOCHECKS OFF}
{$OPTIMIZATION REGVAR,LEVEL3}

function printf(__str: PChar; c: longint): longint; cdecl; external 'c' name 'printf';
function scanf(const format: PChar; var a, b, c: longint): longint; cdecl; external 'c' name 'scanf';

var
  a, b, c: longint;
begin
	scanf('%d %d %d', a, b, c);
	// a := 5345;
	// b := 6546;
	// c := 6456;
	printf('%d'#10, 2 * a * b * c);
end.
