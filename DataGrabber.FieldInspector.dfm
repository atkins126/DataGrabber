object frmFieldInspector: TfrmFieldInspector
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Field inspector'
  ClientHeight = 606
  ClientWidth = 684
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object splVertical: TSplitter
    Left = 338
    Top = 0
    Height = 606
    Align = alRight
    ExplicitLeft = 333
  end
  object pnlLeft: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 332
    Height = 600
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
  end
  object pnlRight: TPanel
    AlignWithMargins = True
    Left = 344
    Top = 3
    Width = 337
    Height = 600
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
  end
  object aclMain: TActionList
    Left = 296
    Top = 296
    object actInspect: TAction
      Caption = 'actInspect'
      ShortCut = 16457
      OnExecute = actInspectExecute
    end
  end
end
