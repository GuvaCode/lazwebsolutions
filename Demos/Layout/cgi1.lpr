program cgi1;

{$mode objfpc}{$H+}

uses
  LWSCGI,
  LWSLayout;

type

  { TCGI }

  TCGI = class(TLWSCGI)
  private
    FLayout: TLWSLayout;
  protected
    procedure Init; override;
    procedure Finit; override;
    procedure DoResponse; override;
  end;

  procedure TCGI.Init;
  begin
    FLayout := TLWSLayout.Create(['body', '', 'title', 'Hello']);
  end;

  procedure TCGI.Finit;
  begin
    FLayout.Free;
  end;

  procedure TCGI.DoResponse;
  begin
    FLayout['body'].AsString := 'Hello world!';
    Contents.Text := FLayout.GetFormatedContent;
  end;

begin
  with TCGI.Create do
    try
      Run;
    finally
      Free;
    end;
end.
