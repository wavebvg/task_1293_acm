

const
  maxunits = 1024;

type
   Integer  = longint;
   PInteger = ^Integer;
type
 HResult = longint;
 PChar = ^Char;
 PText               = ^Text;
{$ifdef CPU64}
  SizeInt = Int64;
  SizeUInt = QWord;
  PtrInt = Int64;
  PtrUInt = QWord;
  ValSInt = int64;
  ValUInt = qword;
  CodePointer = Pointer;
  CodePtrInt = PtrInt;
  CodePtrUInt = PtrUInt;
{$endif CPU64}
{$ifdef CPU32}
  SizeInt = Longint;
  SizeUInt = DWord;
  PtrInt = Longint;
  PtrUInt = DWord;
  ValSInt = Longint;
  ValUInt = Cardinal;
  CodePointer = Pointer;
  CodePtrInt = PtrInt;
  CodePtrUInt = PtrUInt;
{$endif CPU32}
type
  TProcedure  = Procedure;
  TInitFinalRec=record
    InitProc,
    FinalProc : TProcedure;
  end;
  TInitFinalTable = record
    TableCount,
    InitCount  : {$ifdef VER2_6}longint{$else}sizeint{$endif};
    Procs      : array[1..maxunits] of TInitFinalRec;
  end;
  PInitFinalTable = ^TInitFinalTable;

var
  ExitCode    : Longint; public name 'operatingsystem_result';
  InitFinalTable : TInitFinalTable;external name 'INITFINAL';
