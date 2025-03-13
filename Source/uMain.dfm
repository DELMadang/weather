object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = #44592#49345#50696#48372
  ClientHeight = 441
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  TextHeight = 15
  object lbAPIKey: TLabel
    Left = 8
    Top = 27
    Width = 37
    Height = 15
    Caption = 'APIKey'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 48
    Height = 15
    Caption = #48156#54364#51068#51088
  end
  object Label3: TLabel
    Left = 8
    Top = 85
    Width = 48
    Height = 15
    Caption = #48156#54364#49884#44036
  end
  object Label1: TLabel
    Left = 8
    Top = 114
    Width = 35
    Height = 15
    Caption = 'X '#51340#54364
  end
  object Label4: TLabel
    Left = 8
    Top = 143
    Width = 35
    Height = 15
    Caption = 'Y '#51340#54364
  end
  object lbResult: TLabel
    Left = 8
    Top = 212
    Width = 48
    Height = 15
    Caption = #49892#54665#44208#44284
  end
  object eAPIKey: TEdit
    Left = 112
    Top = 24
    Width = 631
    Height = 23
    TabOrder = 0
  end
  object eDate: TEdit
    Left = 112
    Top = 53
    Width = 631
    Height = 23
    NumbersOnly = True
    TabOrder = 1
    Text = '20250313'
  end
  object eTime: TEdit
    Left = 112
    Top = 82
    Width = 631
    Height = 23
    NumbersOnly = True
    TabOrder = 2
    Text = '1200'
  end
  object eX: TEdit
    Left = 112
    Top = 111
    Width = 631
    Height = 23
    NumbersOnly = True
    TabOrder = 3
    Text = '55'
  end
  object eY: TEdit
    Left = 112
    Top = 140
    Width = 631
    Height = 23
    NumbersOnly = True
    TabOrder = 4
    Text = '127'
  end
  object btnExec: TButton
    Left = 668
    Top = 169
    Width = 75
    Height = 25
    Caption = #49892#54665
    TabOrder = 5
    OnClick = btnExecClick
  end
  object eResult: TMemo
    Left = 112
    Top = 209
    Width = 631
    Height = 224
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 6
  end
end
