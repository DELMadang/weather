unit uMain;

interface

uses
  System.SysUtils,
  System.Classes,
  system.JSON,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    lbAPIKey: TLabel;
    eAPIKey: TEdit;
    Label2: TLabel;
    eDate: TEdit;
    Label3: TLabel;
    eTime: TEdit;
    Label1: TLabel;
    eX: TEdit;
    Label4: TLabel;
    eY: TEdit;
    btnExec: TButton;
    eResult: TMemo;
    lbResult: TLabel;
    procedure btnExecClick(Sender: TObject);
  private
    procedure Call;
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  uClient;

{ TfrmMain }

procedure TfrmMain.Call;
begin
  // 활용신청시 부여받은 APIKey
  TClient.APIKey := eAPIKey.Text;

  // 서비스 호출
  eResult.Text :=  TClient.Get(eDate.Text, eTime.Text, eX.Text, eY.Text);
end;

procedure TfrmMain.btnExecClick(Sender: TObject);
begin
  eResult.Clear;

  Call;
end;

end.
