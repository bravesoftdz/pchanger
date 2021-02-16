program pchanger;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, about, LCLTranslator, DefaultTranslator;

{$R *.res}

begin
  Application.Title:='Plymouth Changer v1.0';
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TMyAboutForm, MyAboutForm);
  Application.Run;
end.

