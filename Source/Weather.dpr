﻿program Weather;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uClient in 'uClient.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
