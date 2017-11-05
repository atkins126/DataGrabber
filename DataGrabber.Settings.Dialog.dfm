object frmSettingsDialog: TfrmSettingsDialog
  Left = 0
  Top = 0
  Caption = 'Settings'
  ClientHeight = 437
  ClientWidth = 684
  Color = clBtnFace
  Constraints.MinHeight = 476
  Constraints.MinWidth = 396
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  DesignSize = (
    684
    437)
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMain: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 678
    Height = 394
    ActivePage = tsConnectionProfiles
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Images = imlMain
    TabOrder = 0
    object tsConnectionProfiles: TTabSheet
      Caption = 'Connection &profiles'
      ImageIndex = 9
      object splVertical: TSplitter
        Left = 185
        Top = 0
        Width = 7
        Height = 365
        Color = clBtnHighlight
        ParentColor = False
        ExplicitHeight = 377
      end
      object pnlConnectionProfileDetail: TPanel
        Left = 192
        Top = 0
        Width = 478
        Height = 365
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pgcConnectionProfile: TPageControl
          Left = 0
          Top = 0
          Width = 478
          Height = 365
          ActivePage = tsBasic
          Align = alClient
          TabOrder = 0
          object tsBasic: TTabSheet
            Caption = 'Basic'
            DesignSize = (
              470
              337)
            object rgpConnectionType: TRadioGroup
              Left = 2
              Top = 45
              Width = 464
              Height = 39
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Connection type'
              Columns = 4
              ItemIndex = 0
              Items.Strings = (
                'ADO'
                'FireDAC'
                'dbExpress')
              TabOrder = 0
              OnClick = rgpConnectionTypeClick
            end
            object grpClientSettings: TGroupBox
              Left = 3
              Top = 188
              Width = 464
              Height = 146
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Client settings'
              TabOrder = 1
              object lblPacketrecords: TLabel
                Left = 152
                Top = 44
                Width = 75
                Height = 13
                Caption = 'Packet records:'
                FocusControl = edtPacketRecords
              end
              object chkProviderMode: TCheckBox
                Left = 16
                Top = 24
                Width = 116
                Height = 17
                Caption = 'Provider mode'
                Checked = True
                DoubleBuffered = False
                ParentDoubleBuffered = False
                State = cbChecked
                TabOrder = 0
                OnClick = chkProviderModeClick
              end
              object edtPacketRecords: TEdit
                Left = 239
                Top = 41
                Width = 58
                Height = 21
                Alignment = taCenter
                TabOrder = 1
                Text = '100'
              end
              object chkSeperateThreads: TCheckBox
                Left = 16
                Top = 69
                Width = 169
                Height = 17
                Caption = 'Execute in seperate threads'
                Enabled = False
                TabOrder = 2
              end
              object chkAllowMultipleInstances: TCheckBox
                Left = 16
                Top = 92
                Width = 169
                Height = 17
                Caption = 'Allow multiple instances'
                Enabled = False
                TabOrder = 3
              end
              object chkUseIDInUpdatableQueries: TCheckBox
                Left = 16
                Top = 115
                Width = 232
                Height = 17
                Caption = 'Use ID as primary key in updatable queries.'
                Enabled = False
                TabOrder = 4
              end
              object chkFetchOnDemand: TCheckBox
                Left = 37
                Top = 43
                Width = 100
                Height = 17
                Caption = 'Fetch on demand'
                Checked = True
                DoubleBuffered = False
                ParentDoubleBuffered = False
                State = cbChecked
                TabOrder = 5
                OnClick = chkFetchOnDemandClick
              end
            end
            object grpConnectionSettings: TGroupBox
              Left = 3
              Top = 90
              Width = 465
              Height = 94
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Connection settings'
              TabOrder = 2
              DesignSize = (
                465
                94)
              object lblProtocols: TLabel
                Left = 10
                Top = 19
                Width = 39
                Height = 13
                Caption = 'Protocol'
                FocusControl = cbxProtocols
              end
              object lblDatabase: TLabel
                Left = 10
                Top = 45
                Width = 50
                Height = 13
                Caption = 'Database:'
                FocusControl = edtDatabase
              end
              object lblCatalog: TLabel
                Left = 10
                Top = 71
                Width = 41
                Height = 13
                Caption = 'Catalog:'
                FocusControl = edtCatalog
              end
              object cbxProtocols: TComboBox
                Left = 66
                Top = 16
                Width = 145
                Height = 21
                DropDownCount = 30
                TabOrder = 0
                OnChange = cbxProtocolsChange
              end
              object btnConnectionString: TButton
                Left = 217
                Top = 13
                Width = 150
                Height = 26
                Action = actConnectionString
                Images = imlMain
                TabOrder = 1
              end
              object edtDatabase: TButtonedEdit
                Left = 66
                Top = 42
                Width = 396
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                Images = imlMain
                RightButton.ImageIndex = 10
                RightButton.Visible = True
                TabOrder = 2
                OnChange = edtDatabaseChange
                OnRightButtonClick = edtDatabaseRightButtonClick
              end
              object edtCatalog: TButtonedEdit
                Left = 66
                Top = 68
                Width = 396
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                Images = imlMain
                RightButton.ImageIndex = 10
                RightButton.Visible = True
                TabOrder = 3
                OnChange = edtCatalogChange
                OnRightButtonClick = edtDatabaseRightButtonClick
              end
            end
            object grpProfileSettings: TGroupBox
              Left = 3
              Top = 3
              Width = 464
              Height = 36
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 3
              object lblProfileColor: TLabel
                Left = 220
                Top = 10
                Width = 60
                Height = 13
                Caption = 'Profile color:'
                FocusControl = btnProfileColor
              end
              object btnProfileColor: TKColorButton
                Left = 286
                Top = 5
                Width = 104
                Height = 25
                FocusRect = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBtnText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = btnProfileColorClick
                ColorDlgOptions = [cdAnyColor]
              end
              object edtProfileName: TLabeledEdit
                Left = 76
                Top = 7
                Width = 137
                Height = 21
                EditLabel.Width = 63
                EditLabel.Height = 13
                EditLabel.Caption = 'Profile name:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                LabelPosition = lpLeft
                ParentFont = False
                TabOrder = 1
                OnChange = edtProfileNameChange
              end
            end
          end
          object tsAdvanced: TTabSheet
            Caption = 'Advanced'
            ImageIndex = 1
          end
        end
      end
      object pnlConnectionProfilesList: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 365
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object tlbConnectionProfiles: TToolBar
          Left = 0
          Top = 0
          Width = 185
          Height = 22
          Caption = 'tlbConnectionProfiles'
          Images = imlMain
          TabOrder = 0
          object btnAdd: TToolButton
            Left = 0
            Top = 0
            Action = actAdd
          end
          object btnDelete: TToolButton
            Left = 23
            Top = 0
            Action = actDelete
          end
          object btnMoveUp: TToolButton
            Left = 46
            Top = 0
            Action = actMoveUp
          end
          object btnMoveDown: TToolButton
            Left = 69
            Top = 0
            Action = actMoveDown
          end
          object btnDuplicate: TToolButton
            Left = 92
            Top = 0
            Action = actDuplicate
          end
        end
      end
    end
    object tsDisplay: TTabSheet
      Caption = '&Resultgrid display settings'
      ImageIndex = 5
      DesignSize = (
        670
        365)
      object grpCellBackgroundColoring: TGroupBox
        Left = 3
        Top = 56
        Width = 162
        Height = 302
        Caption = 'Grid cell background coloring'
        TabOrder = 0
        object chkGridCellColoringEnabled: TCheckBox
          Left = 19
          Top = 23
          Width = 64
          Height = 14
          Caption = 'Enabled'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object pnlGridTypeColoring: TGridPanel
          Left = 12
          Top = 38
          Width = 145
          Height = 257
          BevelOuter = bvNone
          ColumnCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 60.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 80.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = lblIntegers
              Row = 0
            end
            item
              Column = 1
              Control = btnIntegerColor
              Row = 0
            end
            item
              Column = 0
              Control = lblFloats
              Row = 1
            end
            item
              Column = 1
              Control = btnFloatColor
              Row = 1
            end
            item
              Column = 0
              Control = lblString
              Row = 2
            end
            item
              Column = 1
              Control = btnStringColor
              Row = 2
            end
            item
              Column = 0
              Control = lblMemo
              Row = 3
            end
            item
              Column = 1
              Control = btnMemoColor
              Row = 3
            end
            item
              Column = 0
              Control = lblDates
              Row = 4
            end
            item
              Column = 1
              Control = btnDateColor
              Row = 4
            end
            item
              Column = 0
              Control = lblTimes
              Row = 5
            end
            item
              Column = 1
              Control = btnTimeColor
              Row = 5
            end
            item
              Column = 0
              Control = lblDateTimes
              Row = 6
            end
            item
              Column = 1
              Control = btnDateTimeColor
              Row = 6
            end
            item
              Column = 0
              Control = lblNULL
              Row = 7
            end
            item
              Column = 1
              Control = btnNullColor
              Row = 7
            end
            item
              Column = 0
              Control = lblBoolean
              Row = 8
            end
            item
              Column = 1
              Control = btnBooleanColor
              Row = 8
            end>
          RowCollection = <
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end
            item
              SizeStyle = ssAbsolute
              Value = 28.000000000000000000
            end>
          ShowCaption = False
          TabOrder = 1
          DesignSize = (
            145
            257)
          object lblIntegers: TLabel
            Left = 0
            Top = 0
            Width = 60
            Height = 28
            Align = alClient
            Caption = 'Integer'
            Layout = tlCenter
            ExplicitWidth = 36
            ExplicitHeight = 13
          end
          object btnIntegerColor: TKColorButton
            AlignWithMargins = True
            Left = 63
            Top = 3
            Width = 74
            Height = 22
            Anchors = []
            FocusRect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ColorDlgOptions = []
          end
          object lblFloats: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 31
            Width = 54
            Height = 25
            Align = alClient
            Caption = 'Float'
            Layout = tlCenter
            ExplicitWidth = 24
            ExplicitHeight = 13
          end
          object btnFloatColor: TKColorButton
            AlignWithMargins = True
            Left = 63
            Top = 31
            Width = 74
            Height = 22
            Anchors = []
            FocusRect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ColorDlgOptions = []
          end
          object lblString: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 59
            Width = 54
            Height = 25
            Align = alClient
            Caption = 'String'
            Layout = tlCenter
            ExplicitWidth = 28
            ExplicitHeight = 13
          end
          object btnStringColor: TKColorButton
            AlignWithMargins = True
            Left = 63
            Top = 59
            Width = 74
            Height = 22
            Anchors = []
            FocusRect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            ColorDlgOptions = []
          end
          object lblMemo: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 87
            Width = 54
            Height = 25
            Align = alClient
            Caption = 'Memo'
            Layout = tlCenter
            ExplicitWidth = 28
            ExplicitHeight = 13
          end
          object btnMemoColor: TKColorButton
            AlignWithMargins = True
            Left = 63
            Top = 87
            Width = 74
            Height = 22
            Anchors = []
            FocusRect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            ColorDlgOptions = []
          end
          object lblDates: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 115
            Width = 54
            Height = 25
            Align = alClient
            Caption = 'Date'
            Layout = tlCenter
            ExplicitWidth = 23
            ExplicitHeight = 13
          end
          object btnDateColor: TKColorButton
            AlignWithMargins = True
            Left = 63
            Top = 115
            Width = 74
            Height = 22
            Anchors = []
            FocusRect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            ColorDlgOptions = []
          end
          object lblTimes: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 143
            Width = 54
            Height = 25
            Align = alClient
            Caption = 'Time'
            Layout = tlCenter
            ExplicitWidth = 22
            ExplicitHeight = 13
          end
          object btnTimeColor: TKColorButton
            AlignWithMargins = True
            Left = 63
            Top = 143
            Width = 74
            Height = 22
            Anchors = []
            FocusRect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            ColorDlgOptions = []
          end
          object lblDateTimes: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 171
            Width = 54
            Height = 25
            Align = alClient
            Caption = 'DateTime'
            Layout = tlCenter
            ExplicitWidth = 45
            ExplicitHeight = 13
          end
          object btnDateTimeColor: TKColorButton
            AlignWithMargins = True
            Left = 63
            Top = 171
            Width = 74
            Height = 22
            Anchors = []
            FocusRect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            ColorDlgOptions = []
          end
          object lblNULL: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 199
            Width = 54
            Height = 25
            Align = alClient
            Caption = 'NULL'
            Layout = tlCenter
            ExplicitWidth = 24
            ExplicitHeight = 13
          end
          object btnNullColor: TKColorButton
            AlignWithMargins = True
            Left = 63
            Top = 199
            Width = 74
            Height = 22
            Anchors = []
            FocusRect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            ColorDlgOptions = []
          end
          object lblBoolean: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 227
            Width = 54
            Height = 25
            Align = alClient
            Caption = 'Boolean'
            Layout = tlCenter
            ExplicitWidth = 38
            ExplicitHeight = 13
          end
          object btnBooleanColor: TKColorButton
            AlignWithMargins = True
            Left = 63
            Top = 227
            Width = 74
            Height = 22
            Anchors = []
            FocusRect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            ColorDlgOptions = []
          end
        end
      end
      object rgpGridTypes: TRadioGroup
        Left = 3
        Top = 1
        Width = 664
        Height = 49
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Grid type'
        Columns = 4
        TabOrder = 1
      end
    end
    object tsSettings: TTabSheet
      Caption = 'Settings file'
      ImageIndex = 11
      OnEnter = tsSettingsEnter
    end
  end
  object btnApply: TButton
    Left = 214
    Top = 403
    Width = 150
    Height = 26
    Action = actApply
    Anchors = [akRight, akBottom]
    Default = True
    ImageMargins.Left = 4
    ImageMargins.Right = 4
    Images = imlMain
    TabOrder = 1
  end
  object btnClose: TButton
    Left = 526
    Top = 403
    Width = 150
    Height = 26
    Action = actClose
    Anchors = [akRight, akBottom]
    ImageMargins.Left = 4
    ImageMargins.Right = 4
    Images = imlMain
    ModalResult = 11
    TabOrder = 2
  end
  object btnCancel: TButton
    Left = 370
    Top = 403
    Width = 150
    Height = 26
    Action = actCancel
    Anchors = [akRight, akBottom]
    DisabledImageIndex = 1
    HotImageIndex = 1
    ImageMargins.Left = 4
    ImageMargins.Right = 4
    Images = imlMain
    ModalResult = 2
    TabOrder = 3
  end
  object aclMain: TActionList
    Images = imlMain
    Left = 600
    Top = 296
    object actApply: TAction
      Caption = '&Apply'
      Hint = 'Apply settings immediately'
      ImageIndex = 2
      OnExecute = actApplyExecute
    end
    object actClose: TAction
      Caption = 'Clos&e'
      Hint = 'Close dialog'
      ImageIndex = 12
      OnExecute = actCloseExecute
    end
    object actCancel: TAction
      Caption = '&Cancel'
      Hint = 'Cancel all changes.'
      ImageIndex = 1
      OnExecute = actCancelExecute
    end
    object actAdd: TAction
      Category = 'ConnectionProfiles'
      Caption = 'Add'
      Hint = 'Add'
      ImageIndex = 3
      OnExecute = actAddExecute
    end
    object actDelete: TAction
      Category = 'ConnectionProfiles'
      Caption = 'Delete'
      Hint = 'Delete'
      ImageIndex = 4
      OnExecute = actDeleteExecute
    end
    object actMoveUp: TAction
      Category = 'ConnectionProfiles'
      Caption = 'Move up'
      Hint = 'Move up'
      ImageIndex = 8
      OnExecute = actMoveUpExecute
    end
    object actMoveDown: TAction
      Category = 'ConnectionProfiles'
      Caption = 'Move down'
      Hint = 'Move down'
      ImageIndex = 7
      OnExecute = actMoveDownExecute
    end
    object actDuplicate: TAction
      Category = 'ConnectionProfiles'
      Caption = 'Duplicate'
      Hint = 'Duplicate'
      ImageIndex = 13
      OnExecute = actDuplicateExecute
    end
    object actConnectionString: TAction
      Caption = 'Build connectionstring'
      ImageIndex = 9
      OnExecute = actConnectionStringExecute
    end
  end
  object imlMain: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 560
    Top = 248
    Bitmap = {
      494C01010E001100040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000151616162E323539404B
      5362465A6A88416077A4185E92FC1D5D8CED0000000000000000000000000000
      00000000000000000000A07155C1B7764FE6C77545FEC1764BF3C2764BF3C176
      4BF3C1764BF3C2764BF4B8754EE8C27F58F10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000989898FF727272FF555555FF5252
      52FF505050FF4D4D4DFF4B4B4BFF484848FF464646FF26689CFF3375A7FF3E7D
      AEFF4883B4FF4F89B9FF3F7FACFF1F5D8CEA0000000000000000000000000000
      00000000000000000000BD7951EDFCF3ECFFFAF1E8FFFAF0E7FFFBF1E9FFFBF2
      EAFFFBF2EAFFFBF2EBFFFDF4EEFFC68057F90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000595959FFA1A1
      A1FFA1A1A1FFA2A2A2FFA3A3A3FFA3A3A3FFA4A4A4FF3070A4FF79AAD2FF79AA
      D3FF74A6D1FF6A9FCDFF4180ADFF225E8EEA0000000000000000000000000000
      00000000000000000000CF8154FFEFF1E7FFFFE9D9FFFFEADBFFFFE9D9FFFFE7
      D7FFFFE5D2FFFFE2CBFFEFF2E8FFCE8157FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005D5D5DFF9F9F
      9FFF3D7441FFA1A1A1FFA2A2A2FFA2A2A2FFA3A3A3FF3775A9FF7EAED4FF5C99
      C9FF5594C7FF5995C8FF4281ADFF256190EA0000000000000000000000000000
      00000000000000000000CA8253FBFBF5EEFFFFE9D9FFFFEADBFFFFE9D9FFFFE7
      D7FFFFE5D2FFFFE2CBFFFBF6EFFFCB8355FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000616161FF3B78
      40FF3E7742FFA0A0A0FFA1A1A1FFA1A1A1FFA2A2A2FF3E7AAFFF81B2D7FF639E
      CCFF5B99C9FF5F9ACAFF4481AEFF296593EA9C735BB9AB775ACEB57652DDAE75
      54D4AF7554D4AE7554D4CA8353FFFFF7F1FFFFE9D9FFFFEADBFFFFE9D9FFFFE7
      D7FFFFE5D2FFFFE2CBFFFFF7F1FFCA8555FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A773FFF4E94
      55FF4A9051FF296F2EFF276B2BFF246728FF226426FF467FB3FF87B6D9FF68A2
      CFFF629DCCFF649ECCFF4682B0FF2E6797EAAE795AD3DCD5D0DEDBD4CDDEDBD3
      CCDEDCD4CEDEDCD5CFDEE4B990FFFFF7F0FFFFE7D5FFFDE7D6FFFDE6D4FFFCE4
      D0FFFBE3CBFFFADCC1FFFEF3E8FFCB8656FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004C7F50D4579C5EFF81C5
      87FF7CC282FF78C080FF73BD7AFF70BB76FF256829FF4D83B9FF8CBADBFF6FA7
      D1FF67A5D1FF60B3DFFF4884B0FF336C9BEABB805CDED2D4CCDEDECEC2DEDECF
      C3DEDECEC2DEDECCC0DEE4BA90FFFFF7F2FFFEE7D5FFFEE7D5FFFDE5D1FFFAE0
      CAFFF9DEC3FFF7D9BBFFFDF2E7FFCB8757FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000557358A15FA467FF8ACC93FF7EC4
      85FF74BF7DFF6FBC78FF6ABA72FF76BE7DFF286D2DFF5588BEFF93BEDDFF76AC
      D4FF64B7E1FF4CD4FFFF438AB7FF39719FEAB6805CDBDCD6D1DEDECEC2DEDECF
      C3DEDECEC2DEDECCC0DEE4BA91FFFEF7F1FFFCE5D2FFFCE4D1FFFBE2CCFFF9DD
      C3FFF6D7BAFFF3D1AEFFFAEFE4FFCB8758FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000518455D260A568FF8CCD
      95FF88CB91FF83C88CFF81C587FF7CC282FF2B7131FF5B8DC3FF97C2E0FF7DB2
      D7FF75AED6FF5FC3EDFF4C87B2FF4074A3EAB5805CDBDED8D4DEDECEC2DEDECF
      C3DEDECEC2DEDECCC0DEE4BA91FFFEF6F0FFFCE2CDFFFCE3CDFFFADFC8FFF7D9
      BBFFF5E9DDFFFAF3EBFFFBF8F3FFC98353FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000488850FF61A6
      6AFF5EA366FF38813FFF357F3CFF327A38FF2F7635FF6191C9FF9DC7E2FF82B7
      DAFF7EB3D7FF7FB2D7FF5088B3FF467AA8EAB6815DDBDED8D3DEDECCBFDEDCCC
      C0DEDCCBBEDEDCCABBDEE4BA92FFFEF5EDFFFCDEC4FFFBE0C7FFF9DCC1FFF5D3
      B3FFFEF9F3FFFAE2C3FFECC092FF7F6857930000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000787878FF4E8F
      55FF3E8946FF9A9A9AFF9B9B9BFF9C9C9CFF9C9C9CFF6795CCFFA1CBE3FF88BC
      DCFF82B8DAFF83B8DAFF528AB4FF4C7DACEAB6825DDBDED8D5DEDDCCBFDEDDCC
      BFDEDCCBBBDEDBC7B6DEE5BD95FFFFFFFEFFFDF3E9FFFDF3EAFFFCF2E8FFFAEF
      E3FFFAF2E7FFEABA87FF9C7760B30D0D0D0C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7BFF9798
      97FF53905AFF999999FF9A9A9AFF9B9B9BFF9B9B9BFF6D99D0FFA6CEE5FF8EC0
      DFFF88BCDCFF8ABCDCFF548CB5FF5383B1EAB6825EDBDDD8D4DEDCCBBCDEDCCA
      BBDEDCC8B8DEDAC5B1DEEAC29CFFE6BE95FFE4BA91FFE4BA91FFCB9D6DF5CB9C
      6FF6B68E65DA705E517E0A0A0A09000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E7E7EFF9898
      98FF989898FF999999FF999999FF9A9A9AFF9A9A9AFF709CD3FFA9D1E7FFAAD1
      E7FF97C7E1FF90C1DEFF578EB6FF5986B6EAB6825EDBDDD7D3DEDCC8B9DEDCC9
      B9DEDBC6B5DED8C2ABDED6CEC5DEDBD5CFDEDCD9D5DEB78D6ADC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000818181FF7F7F
      7FFF7D7D7DFF7B7B7BFF787878FF767676FF737373FF729DD4FF709DD6FF86B1
      DCFFAAD3E8FFA8D0E6FF598FB7FF5E8BBAEAB5825FDADDD6D1DEDCC6B2DEDCC7
      B5DEDAC4AFDED6BDA5DEDDDAD5DEDBC8B1DED0AF8DDE72605380000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007293
      BDDB6E9BD4FF84B0DAFF5B90B8FF658FBFEAAD7F5ED0DBDBDBDBDCD5CEDEDCD5
      CFDEDCD5CDDEDBD2C9DEDBD5CCDECFAA84DE8B6F5D9C0B0B0B0A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000606D7D896B99D0FB6993C4EE926F59AAAD7F60CEB88460DEB683
      5FDBB6835FDBB68360DBAD7E5CD064564C6E0909090800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A2019BB92402DE8913E2DE88F3D2DE88E3C2CE88E3A2BE88D382BE8611D
      1BC700000000000000000000000000000000060302097A472AB7A05935FA0401
      0106000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000808080D1D1D1D311A1A1A2F04040407000000000000
      00000000000000000000000000000000000000000000000000001B1B1B1D2A2A
      2A342C2C2C362C2C2C362C2C2C362C2C2C362C2C2C362C2C2C362C2C2C362C2C
      2C362C2C2C362C2C2C362A2A2A331B1B1B1D0000000000000000000000000000
      00007E3425D9EFAF68FFE79C62FFE3975CFFDF9356FFDB8F52FFE09D54FF8A37
      2AE600000000000000000000000000000000845733B7BE865AFFB87C54FFA35E
      37FA482618742F170E4E21100A391107051E23222149626262D2727272FF6E6E
      6EFF696969FF656565FF616161FF4F4F4FD70000000000000000000000001515
      15216363639D969696F0A1A1A1FFABABABFFA7A7A7FF959595FF808080E74A4A
      4A8A0C0C0C1600000000000000000000000000000000000000002A2A2A34EFEF
      EFF5FAFAFAFDFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFAFAFAFDEDEDEDF32A2A2A330000000000000000000000000000
      00007F3625D9EFA76BFFE58A65FFDF845DFFD97F55FFD4794EFFDB8F51FF8A38
      2AE600000000000000000000000000000000BF8456FAC59166FFCDA17EFFC495
      6EFFB57951FFAA6844FFA25C3BFF9B5033FF945745FFC3BFBEFFD9D4D3FFD4CF
      CEFFD3CECDFFD3CECDFFE8E5E5FF626262FF00000000000000002F2F2F4A9E9E
      9EF4CECECEFFEDEDEDFFF4F4F4FFF5F5F5FFF4F4F4FFEFEFEFFFE2E2E2FFBABA
      BAFF7D7D7DE71C1C1C35000000000000000000000000020202012C2C2C36FBFB
      FBFEFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFAFAFAFD2C2C2C360000000000000000000000000000
      0000813725D9F1AA6FFFE98F6BFFE48964FFDE835CFFD97E54FFDE9255FF8B39
      2BE60000000000000000000000000000000005030106C1885CFAD1A582FFCC9E
      79FFCB9D79FFC79872FFC2916AFFBD8C63FFA76743FFAD8779FFBCB4B2FFB8B0
      AFFFB8B0ADFFB6AEADFFD3CECDFF666666FF00000000000000009B9B9BEADEDE
      DEFFF3F3F3FFDBDBDBFFD2D2D2FFDBDBDBFFD6D6D6FFC0C0C0FFC9C9C9FFE6E6
      E6FFC4C4C4FF7F7F7FEA000000000000000000000000020202012C2C2C36FCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFFFCFCFCFF2C2C2C360000000000000000000000000000
      0000813825D9F3AC72FFED9370FFE88E6AFFE38863FFDE825BFFE2965AFF8D3B
      2BE600000000000000000000000000000000000000005E453174D0A07AFFD7AD
      8EFFC9966DFFC28E64FFBC875AFFBF8B62FFBB875FFF83513CFFB9B0AFFFBAB3
      B1FFB9B1B0FFB8B0AEFFD4CFCEFF6B6B6BFF00000000000000009E9E9EEAF0F0
      F0FFDEDEDEFFD4D4D4FFD2D2D2FFDBDBDBFFD6D6D6FFBFBFBFFFB0B0B0FFB3B3
      B3FFDEDEDEFF848484EA0000000000000000000000000202020135333342E194
      66FFE08F56FFFCFCFCFFE3995AFFE39868FFF8F1EEFFFAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFCFCFCFF2C2C2C360000000000000000000000000000
      0000823925D9F4AC74FFEF9575FFEC926FFFE88D69FFE38862FFE59A5FFF8E3C
      2BE600000000000000000000000000000000000000004231274ED7A581FFDCB5
      98FFD0A07BFFCB9971FFCFA381FFC79872FF886A56FF868686FF767473FFBCB5
      B3FFBAB3B2FFBAB2B0FFD4D0CFFF717171FF00000000000000009F9F9FEAF2F2
      F2FFE2E2E2FFD8D8D8FFD5D5D5FFDCDCDCFFD8D8D8FFC0C0C0FFB3B3B3FFB7B7
      B7FFE0E0E0FF8A8A8AEA00000000000000000000000014131313B2774CD2E5A2
      66FFE1935EFFFCFCFCFFE59F62FFE7A769FFE39A68FFF8F0EBFFFAFAFAFFFAFA
      FAFFF8F8F8FFF8F8F8FFFCFCFCFF2C2C2C360000000000000000000000000000
      0000843B25D9F4AC75FFF09677FFEF9574FFEC926FFFE78D68FFE99E64FF8F3E
      2CE6000000000000000000000000000000000000000032261F39DDAD8BFFE2BD
      A3FFD8AA88FFD9B293FFCF9E78FFA37859FF929292FFA8A8A8FF636262FFBCB6
      B4FF39A040FF359335FFD6D1D0FF767676FF0000000000000000A2A2A2EAF3F3
      F3FFE7E7E7FFDDDDDDFFD9D9D9FFE0E0E0FFDBDBDBFFC4C4C4FFB8B8B8FFBBBB
      BBFFE1E1E1FF8E8E8EEA000000000000000055483F58DF9C58F7E8A96BFFE49B
      60FFF8EBE5FFFCFCFCFFF8EDE5FFE5A163FFE8A96BFFE39B58FFEDC4AEFFF9F9
      F9FFF9F9F9FFF8F8F8FFFCFCFCFF2C2C2C360D060448180B0762180A0762190B
      076297452CE8F3AB74FFF09678FFF09677FFEF9573FFEB916EFFECA269FF9E45
      30F01708076216080762160807620E05054F000000001B16121EE3B392FFE8C5
      ACFFE3BFA5FFDBAF8EFFB48E72FFD7C9BEFF979797FF737272FFBFB9B8FFC0B9
      B8FF9FC8A3FF4EA854FFD7D3D1FF7C7C7CFF0000000000000000A3A3A3EAF4F4
      F4FFEAEAEAFFE1E1E1FFDDDDDDFFE3E3E3FFDEDEDEFFC9C9C9FFBDBDBDFFBFBF
      BFFFE2E2E2FF919191EA0000000000000000DBA25BF1ECB77AFFE2A25AFCF4DF
      D1FFFCFCFCFFFCFCFCFFFCFCFCFFF5E1D2FFE6A55CFFE9B176FFE49D5BFFF8F5
      F4FFF6F6F6FFF6F6F6FFFCFCFCFF2C2C2C3629120B78BD5E38FEDA9255FFDA8F
      56FFE0995DFFEF9D75FFEF9578FFF09678FFF09677FFEE9473FFED9B6DFFDE97
      5AFFD48951FFD48A50FFB25138FF2F0F0E890000000004030304C49F85DAE8BF
      A2FFE5BEA2FFB49C8AFFADADADFFA5A5A5FFD9D8D8FFC4BDBCFFC3BDBBFFC2BB
      BAFFC0BAB8FFBFB8B7FFD7D3D3FF838383FF0000000000000000A5A5A5EAF5F5
      F5FFEEEEEEFFE6E6E6FFE2E2E2FFE6E6E6FFE1E1E1FFCDCDCDFFC2C2C2FFC2C2
      C2FFE3E3E3FF939393EA0000000000000000554A4058E3A85EF7EAB472FFE8A6
      66FFF8EDE5FFFCFCFCFFF9EFE6FFE9AD67FFEAB472FFE8A75EFFEDC9AFFFF6F6
      F6FFF3F3F3FFF2F2F2FFFCFCFCFF2C2C2C36000000002C130C7DCE7D48FFE79A
      6BFFE58970FFE98E73FFED9276FFEF9578FFF09678FFF09676FFEE9472FFEA91
      6CFFEA9E67FFCB7B49FF33110E8D00000000000000000000000008060609A181
      6CAFC8A995F8B6B6B6FFBBBBBBFFABABABFFDDDCDCFFC7C0BFFF919090FF8E8E
      8EFF8C8C8CFF898989FFD9D5D4FF8A8A8AFF0000000000000000A6A6A6EAF6F6
      F6FFEBEBEBFFDEDEDEFFD6D6D6FFD5D5D5FFD1D1D1FFC3C3C3FFBCBCBCFFC0C0
      C0FFE5E5E5FF959595EA00000000000000000000000014131313B88854D2EBB5
      73FFE8A866FFFCFCFCFFEBB46BFFECBA77FFEAAF71FFF6EFEAFFF5F5F5FFF2F2
      F2FFEFEFEFFFEDEDEDFFFCFCFCFF2C2C2C3600000000000000002C130C7DCE7E
      48FFE79A6CFFE58970FFEA8E74FFED9377FFF09578FFF09678FFF09676FFF1A4
      70FFCE7F4CFF33120E8D00000000000000000000000000000000000000000000
      00001C16131EADADADFFB8B8B8FFE1E1E1FFDDDDDDFFC8C2C1FFC8C1C0FFC5C0
      BEFFC4BEBDFFC2BCBAFFDAD6D5FF909090FF0000000000000000A8A8A8EAF7F7
      F7FFE7E7E7FFEFEFEFFFF6F6F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDEDEFFC3C3
      C3FFE6E6E6FF979797EA0000000000000000000000000202020135343342EAB2
      72FFE8AE63FFFCFCFCFFECB668FFEBB673FFF7F1ECFFF5F5F5FFF1F1F1FFECEC
      ECFFEAEAEAFFE6E6E6FFFCFCFCFF2C2C2C360000000000000000000000002C13
      0C7DCE7E48FFE89B6CFFE68A71FFEA8F74FFEE9377FFF09678FFF3A675FFD081
      4EFF34130F8D0000000000000000000000000000000000000000000000000000
      000000000000CBCBCBFFE9E9E9FFE9E9E9FFE2E1E1FFCBC5C3FF979696FF9594
      94FF939292FF919090FFDBD7D6FF979797FF0000000000000000AAAAAAEAF8F8
      F8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FBFFEAEAEAFF999999EA000000000000000000000000020202012C2C2C36FAF5
      F0FFF9F9F9FFF9F9F9FFF9F9F9FFF7F7F7FFF6F6F6FFF2F2F2FFEBEBEBFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFF2C2C2C360000000000000000000000000000
      00002C130C7DCF7E48FFE89B6DFFE68B71FFEB9075FFF1A475FFD1824EFF3414
      0F8C000000000000000000000000000000000000000000000000000000000000
      00000000000039393948B6B6B6E4DFDFDFFFEAEAEAFFCFCAC9FFCBC5C4FFCAC3
      C2FFC8C2C0FFC7C0C0FFDCD9D8FF9D9D9DFF00000000000000008B8B8BBFE1E1
      E1FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FBFFCFCFCFFF6A6A6AA1000000000000000000000000020202012C2C2C36FCFC
      FCFFF7F7F7FFF9F9F9FFF7F7F7FFF7F7F7FFF3F3F3FFF0F0F0FFEAEAEAFFFCFC
      FCFFF6F6F6FFF4F4F4FF717171911D1D1D200000000000000000000000000000
      0000000000002C130C7DCF7E48FFE99C6DFFEC9D70FFD2834EFF36150F8C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C0F888888ABDCDCDCFFE6E3E3FFE1DEDCFFDFDC
      DCFFDFDCDBFFDEDBDBFFEEECECFFA4A4A4FF00000000000000001F1F1F2A9999
      99D1D0D0D0FFE8E8E8FFF3F3F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC2C2
      C2FF848484C31212121B000000000000000000000000000000002C2C2C36F9F9
      F9FDF4F4F4FFF5F5F5FFF5F5F5FFF5F5F5FFF1F1F1FFEFEFEFFFE9E9E9FFFCFC
      FCFFE7E7E7FF6F6F6F911D1D1D20030303020000000000000000000000000000
      000000000000000000002C130C7DCF7E49FFD2824CFF33150E88000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F9FC6C6C6FBC3C3C3FFBFBF
      BFFFBABABAFFB5B5B5FFAFAFAFFF6E6E6EA70000000000000000000000000505
      05073E3E3E557F7F7FAE9A9A9AD6B4B4B4FBB1B1B1F9909090CD777777A93131
      31460202020300000000000000000000000000000000000000002A2A2A33EAEA
      EAF0F9F9F9FDFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF8F8
      F8FF6F6F6F911D1D1D2003030302000000000000000000000000000000000000
      000000000000000000000000000029120B782E140D8000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A1A1A1C2A2A
      2A332C2C2C362C2C2C362C2C2C362C2C2C362C2C2C362C2C2C362C2C2C362C2C
      2C361D1D1D200303030200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202036868
      68CC7C7C7CFF777777FF727272FF6E6E6EFF535353CA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000280D0B7E3812109701010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020305230F142F7D2A3E8CDB314AACF32D44ABF3233A88DB0B132D7D0202
      0423000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C159191
      91FFD5D3D3FFE2E0DFFFDFDCDBFFE1DFDFFF696969F400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002B0F0C82C47145FFCB7E4AFF3D13129D010101010000
      000000000000000000000000000000000000000000000000000000000000080A
      16533746A2E63D53CCFF767BE8FF8F92EEFF8F92EEFF7279E4FF344EC1FF243D
      95E6050914530000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3E6F666666BDC3C1C0FFD4CFCEFF757575F64848489C626262D2727272FF6E6E
      6EFF696969FF656565FF616161FF4F4F4FD70000000000000000000000000000
      0000000000002C100C82C87548FFE69960FFE08F5AFFCB7E4AFF3D13129D0101
      0101000000000000000000000000000000000000000000000000090A17534452
      BAF45D66E0FFA1A6F5FF7F86EFFF5C64E9FF5A5EE7FF7E84EEFF9EA0F4FF525E
      D7FF2845A8F40509145300000000000000000000000000000000AF7856FFAF78
      56FFAF7856FF00000000DD9AD9FFDD9AD9FFDD9AD9FF00000000B075FFFFB075
      FFFFB075FFFF0000000000000000000000005B5B5B8D818181CC7C7C7CCC7878
      78CC7D7D7DDE9D9D9DFF999999FF7D7D7DF8838383FF868685FF868584FFA19F
      9EFFD3CECDFFD3CECDFFE8E5E5FF626262FF0000000000000000000000000000
      00002D100D83CC7B4BFFEDA16BFFE48964FFDE835CFFDF8F59FFCB7D4AFF3D13
      129D010101010000000000000000000000000000000002030522444FA7E5626C
      E3FFA1ACF5FF5560ECFF515DEAFF4E5AE9FF4F5AE6FF4D57E6FF5157E6FF9EA2
      F4FF5561D6FF233C95E502020422000000000000000000000000AF7856FFAF78
      56FFAF7856FF00000000DD9AD9FFDD9AD9FFDD9AD9FF00000000B075FFFFB075
      FFFFB075FFFF000000000000000000000000ADADADFFE4E2E2FFD7D5D5FFD5D3
      D2FFD1CECDFFCAC3C2FFC8C2C1FFCDC9C8FFCCCACAFFCCCAC9FFD8D6D6FF7271
      71FFB8B0ADFFB6AEADFFD3CECDFF666666FF0000000000000000000000002F12
      0D84CF7F4DFFF2A673FFED9370FFE88E6AFFE38863FFDE825BFFDF8E58FFCB7D
      49FF3C13119C010101010000000000000000000000001618357E4C57DBFFA2AB
      F6FF5765F0FF5367EEFF4E5AE9FF4E5AE9FF4E5AE9FF4E5AE9FF4D59E6FF535B
      E6FF9FA3F5FF3551C4FF0B132E7E000000000000000000000000AF7856FFAF78
      56FFAF7856FF00000000DD9AD9FFDD9AD9FFDD9AD9FF00000000B075FFFFB075
      FFFFB075FFFF000000000000000000000000B3B3B3FFE0DDDDFFA6704BFFA670
      4BFFA6704BFFA6704BFFA6704BFFA6704BFFA6704BFFA6704BFFDAD5D4FF7676
      76FFB9B1B0FFB8B0AEFFD4CFCEFF6B6B6BFF000000000000000031140E86D081
      4DFFF3A676FFF09777FFEF9575FFEC926FFFE88D69FFE38862FFDD815AFFDE8D
      57FFCB7D49FF3C13119C01010101000000000000000045499FDB818CEEFF7F91
      F7FF5E74F3FF4E5AE9FF4E5AE9FF4E5AE9FF4E5AE9FF4E5AE9FF4E5AE9FF505C
      E9FF7C83F0FF767CE2FF23388ADB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9B9B9FFDEDBDBFFB47E58FFCE97
      6EFFD8AD90FFD9AE90FFD9AE90FFDAAE90FFD69F75FFA6704BFFD7D3D1FF7C7C
      7CFFBAB3B2FFBAB2B0FFD4D0CFFF717171FF0000000033150E88D1824DFFF0A4
      73FFEF9677FFF09678FFF09677FFEF9574FFEC926FFFE78D68FFE28761FFDD82
      59FFDE8F57FFCB7D49FF3C13119C0101010100000000595DCBF6A1ABF7FF7186
      F8FF6982F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E5A
      E9FF5D67EAFF969CF1FF2F4BAFF6000000000000000000000000B1EBD0FFB1EB
      D0FFB1EBD0FF000000006BCC4EFF6BCC4EFF6BCC4EFF00000000EBAF5EFFEBAF
      5EFFEBAF5EFF000000000000000000000000BFBFBFFFDFDCDCFFB37D57FFCB94
      6CFFCD966DFFCF986FFFD19A70FFD29B72FFD49D73FFA6704BFFD7D4D3FF8383
      83FF39A040FF359335FFD6D1D0FF767676FF31150D84BD5E38FFD88E52FFD78B
      53FFDD9459FFF2A276FFF09678FFF09677FFEF9573FFEB916EFFE99768FFD991
      54FFCE814CFFCD814AFFB04F37FF38111096000000005D62CCF6AFB9F9FF8093
      FAFF7185F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E5A
      E9FF5F6BEEFF969DF1FF334AB1F6000000000000000000000000B1EBD0FFB1EB
      D0FFB1EBD0FF000000006BCC4EFF6BCC4EFF6BCC4EFF00000000EBAF5EFFEBAF
      5EFFEBAF5EFF000000000000000000000000C4C4C4FFE1DEDCFFB27B56FFC790
      69FFC9926BFFCB946CFFCD966EFFCF986FFFD19A71FFA6704BFFD9D5D4FF8A8A
      8AFF9FC8A3FF4EA854FFD7D3D1FF7C7C7CFF0904033B11080552110805521208
      05528C3E28E0F2AB73FFEF9578FFF09678FFF09677FFEE9473FFEFA46DFFA44C
      32F311060552100505520F0505520A040441000000004C4FA4DBA5AFF5FF9DAB
      FAFF788CF0FF5560ECFF5560ECFF5560ECFF5560ECFF5560ECFF5560ECFF6478
      F2FF818EF4FF7980E9FF2C3E8EDB000000000000000000000000B1EBD0FFB1EB
      D0FFB1EBD0FF000000006BCC4EFF6BCC4EFF6BCC4EFF00000000EBAF5EFFEBAF
      5EFFEBAF5EFF000000000000000000000000CACACAFFE1DFDEFFB07A55FFC38D
      66FFC58F68FFC89169FFCA936BFFCC956DFFCE976EFFA6704BFFDBD6D6FF9090
      90FFC0BAB8FFBFB8B7FFD7D3D3FF838383FF0000000000000000000000000000
      00007C3823D2F0A871FFED9276FFEF9578FFF09678FFF09676FFF2A671FF9F4A
      31EE00000000000000000000000000000000000000001B1B387E7E83EAFFCDD4
      FCFF8B9DFAFF7F93F7FF768AEEFF6D84F6FF6D84F6FF6D84F6FF6D84F6FF647A
      F3FFA4AFF8FF3F50D0FF1016307E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECEFFE2DFDFFFAF7954FFB079
      54FFB07A55FFB17B56FFB27C56FFB37D57FFB47E58FFA6704BFFDCD8D7FF9797
      97FF8C8C8CFF898989FFD9D5D4FF8A8A8AFF0000000000000000000000000000
      00007D3923D2EDA56FFFEA8E74FFED9377FFF09578FFF09678FFF3A874FFA04B
      31EE0000000000000000000000000000000000000000030305225655B5E5A3A7
      F3FFD4DBFDFF879AFAFF8091F0FF7B8EF1FF8094F8FF7F92F9FF778CF8FFA8B6
      F8FF646FE3FF3847A1E502020422000000000000000000000000696DFEFF696D
      FEFF696DFEFF0000000071A9FFFF71A9FFFF71A9FFFF0000000065D5F0FF65D5
      F0FF65D5F0FF000000000000000000000000D3D3D3FFF1EFEFFFE2DFDFFFE2DF
      DFFFE1DFDEFFE1DEDDFFE0DDDCFFDFDCDBFFDEDBDBFFDEDBD9FFEDECEBFF9D9D
      9DFFC4BEBDFFC2BCBAFFDAD6D5FF909090FF0000000000000000000000000000
      00007E3A23D2EAA16CFFE68A71FFEA8F74FFEE9377FFF09678FFF3A875FFA14D
      31EE0000000000000000000000000000000000000000000000000C0C19536160
      CDF4AAADF2FFD8DCFDFFAEBAFAFF91A3FAFF8B9DFAFF9CA9FBFFBAC7FCFF717C
      E9FF4754BBF4080A165300000000000000000000000000000000696DFEFF696D
      FEFF696DFEFF0000000071A9FFFF71A9FFFF71A9FFFF0000000065D5F0FF65D5
      F0FF65D5F0FF000000000000000000000000D1D1D1F9D3D3D3FFD0D0D0FFCCCC
      CCFFC8C8C8FFC2C2C2FFBEBEBEFFB9B9B9FFB4B4B4FFAFAFAFFFA9A9A9FFA4A4
      A4FF939292FF919090FFDBD7D6FF979797FF0000000000000000000000000000
      00007F3B23D2E69D69FFE1856DFFE68B71FFEB9075FFEE9377FFF3A775FFA34F
      32EE000000000000000000000000000000000000000000000000000000000C0C
      19535757B6E68E93EDFFBEC3F8FFCCD3F9FFC4CBF9FFAAB4F4FF6771E2FF444D
      ABE6090B17530000000000000000000000000000000000000000696DFEFF696D
      FEFF696DFEFF0000000071A9FFFF71A9FFFF71A9FFFF0000000065D5F0FF65D5
      F0FF65D5F0FF0000000000000000000000000000000000000000000000000000
      00000000000039393948B6B6B6E4DFDFDFFFEAEAEAFFCFCAC9FFCBC5C4FFCAC3
      C2FFC8C2C0FFC7C0C0FFDCD9D8FF9D9D9DFF0000000000000000000000000000
      00007F3C23D2E39966FFDD8068FFE2856DFFE78B72FFEB9075FFF2A674FFA450
      32EE000000000000000000000000000000000000000000000000000000000000
      0000030305231A1A377D4D4FA4DB5A5BC8F3585BC6F3454AA0DB1719347D0303
      0523000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C0F888888ABDCDCDCFFE6E3E3FFE1DEDCFFDFDC
      DCFFDFDCDBFFDEDBDBFFEEECECFFA4A4A4FF0000000000000000000000000000
      00007F3C23D2E6A565FFE39866FFE79D6AFFEBA16EFFEEA570FFF3B271FFA452
      32EE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F9FC6C6C6FBC3C3C3FFBFBF
      BFFFBABABAFFB5B5B5FFAFAFAFFF6E6E6EA70000000000000000000000000000
      0000512415A8884226D8874126D8864026D8863F26D8853F26D8853E26D86429
      1BBF00000000000000000000000000000000673A1D8F834924B5AB6031EEB666
      33FFB46633FFB36532FFB16432FFAF6331FFAD6231FFAB6130FFA96030FFA85F
      30FFA75E2FFFA55E2FFE9C592DF1804924C40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A15B2DDEEBC5ACFFEAC4ACFFFEFB
      F8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
      F8FFFEFBF8FFC8997AFFC79777FF9A572CED0000000000000000000000000F0E
      3B41020207080000000000000000000000000000000000000000000000000101
      070806063A410000000000000000000000000000000000000000000000000000
      0000000000000105010A00020007000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020403231023137D2C6833DB317D3BF32F7B37F3236229DB0C200D7D0203
      022300000000000000000000000000000000B86935FEEDCAB2FFE0A178FFFEFA
      F7FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF
      87FFFDF9F6FFCA8C63FFC99A7AFFA55E2FFE000000000000000013123C414D4A
      F2FF3E3CEBFD0202070800000000000000000000000000000000010107082220
      E1FC2F2DEAFF07063A4100000000000000000000000000000000000000000000
      00000105010A35823BFF2F7734FB000200070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000911
      0A53397A44E6429951FF7EC28FFF96D0A6FF96CFA6FF79BE89FF378D43FF2569
      2BE6050E0653000000000000000000000000BA6A36FFEECCB5FFE1A178FFFEFA
      F7FFBEDCC1FFBEDCC1FFBEDCC1FFBEDCC1FFBEDCC1FFBEDCC1FFBEDCC1FFBEDC
      C1FFFDF9F6FFCD8F66FFCC9D80FFA75F30FF0000000014133D415654F5FF615F
      FAFF5653F6FF3F3DEAFC020207080000000000000000010107082A28E3FC3F3D
      F1FF4A48F6FF2F2DEAFF07063A41000000000000000000000000000000000306
      030A3E8D45FF52A25AFF4D9E55FF307A36FE0104020800000000000000000000
      000000000000000000000000000000000000000000000000000009120B53488F
      56F465B479FFA8DBB5FF87CC98FF67BC7EFF65BA7DFF86CB98FFA5D9B4FF59AA
      6CFF297631F4050E06530000000000000000BA6936FFEFCEB7FFE1A177FFFEFA
      F7FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF87FF60BF
      87FFFDF9F6FFCF9268FFCEA283FFA95F30FF000000000E0D282B5956F6FF6360
      FAFF6F6EFFFF5754F6FF3F3EEBFC02020708020207083330E6FC4543F2FF6160
      FFFF4846F4FF2D2BE9FF0605252B0000000000000000000000000306030A4799
      4FFF59AB62FF75CA81FF72C87CFF4F9F57FF317B37FE01040208000000000000
      0000000000000000000000000000000000000000000003040322468453E56BB9
      7EFFA8DBB2FF61BC78FF5DBA74FF5AB871FF5AB570FF59B570FF5CB775FFA5D9
      B3FF5BAA6DFF256A2BE50203022200000000B96834FFEFD0BAFFE2A178FFFEFB
      F8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
      F8FFFEFBF8FFD3956BFFD2A689FFAA6030FF00000000000000000E0E282B5957
      F6FF6461FAFF726FFFFF5856F6FF403FEBFC3C3AEAFD4E4BF4FF6665FFFF4E4C
      F5FF3432EBFF0706262B0000000000000000000000000307030A4FA558FF61B4
      6BFF7CCE88FF79CC86FF74CA80FF74C980FF50A158FF327C38FE010402080000
      00000000000000000000000000000000000000000000182A1C7E54AB69FFAADD
      B4FF65C17AFF60BE72FF61BC78FFFFFFFFFFFFFFFFFF5AB871FF59B56FFF5DB7
      75FFA6DAB4FF398F44FF0C210E7E00000000BA6834FFF0D2BDFFE2A278FFE2A2
      78FFE1A278FFE2A279FFE1A279FFE0A076FFDE9E75FFDD9E74FFDC9C72FFD99A
      70FFD8986FFFD6986EFFD5AA8DFFAC6131FF0000000000000000000000000E0E
      282B5A58F6FF6562FAFF7270FFFF716EFFFF6E6CFFFF6C6AFFFF5553F7FF3D3B
      EEFF0707262B0000000000000000000000000206030957AF61FF69BC74FF83D2
      8FFF78C984FF5EB168FF61B36BFF76C982FF76CB81FF51A25AFF327C38FD0204
      02080000000000000000000000000000000000000000488057DB8ACC98FF89D3
      96FF6CC67BFF64C171FF56AB66FFFFFFFFFFFFFFFFFF5AB871FF5AB871FF5CB9
      73FF85CC97FF7CBE8DFF24632BDB00000000BA6834FFF2D5C1FFE3A278FFE3A2
      78FFE2A279FFE2A279FFE2A379FFE1A177FFE0A076FFDE9F75FFDE9D73FFDC9C
      72FFDA9A71FFD99A71FFDAAF94FFAE6231FF0000000000000000000000000000
      00000E0E282B5B59F7FF7774FFFF5754FFFF5552FFFF706EFFFF4644F0FF0908
      272B0000000000000000000000000000000019331C464FA159E477C985FF7ECE
      8CFF4EA357FC2046246F27542B8B5AAC65FF7ACC85FF77CB84FF52A35BFF337E
      39FC02040208000000000000000000000000000000005EA372F6A9DDB3FF7ECF
      8AFF76CC81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5AB8
      71FF68BE7EFF9CD4ABFF317F3AF600000000BA6834FFF2D8C4FFE3A379FFE3A2
      78FFE3A378FFE2A379FFE2A279FFE1A279FFE1A177FFDF9F75FFDE9E74FFDD9D
      72FFDB9B70FFDC9C72FFDDB499FFB06332FF0000000000000000000000000000
      0000030308085A57F4FD7B77FFFF5C59FFFF5956FFFF7472FFFF4441EDFD0202
      07080000000000000000000000000000000000000000162C183C51A35AE66BBF
      77FF244A286F000000000000000029592D915CAD66FF7BCD88FF7ACD86FF54A4
      5DFF347E3AFC0204020800000000000000000000000062A676F6B6E2BEFF8BD5
      97FF7BC986FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5AB8
      71FF6AC17FFF9DD4AAFF35823FF600000000BA6934FFF4D9C7FFE6A57BFFC88B
      62FFC98C63FFC98D65FFCB916AFFCB916BFFCA8F67FFC88B63FFC88B62FFC88B
      62FFC88B62FFDA9B72FFE1B99EFFB26432FF0000000000000000000000000303
      08086360F6FC6E6BFBFF7E7CFFFF7C79FFFF7A77FFFF7775FFFF5C5AF7FF4441
      ECFC02020708000000000000000000000000000000000000000018301C432348
      27650000000000000000000000000000000029592F915DAE67FF7DCE89FF7CCE
      88FF55A55EFF357F3BFC020402080000000000000000518662DBACDDB6FFA6DF
      AFFF81CB8CFF7DC986FF6FBD7AFFFFFFFFFFFFFFFFFF5CAC6BFF61BC78FF5DBA
      74FF8BD199FF81C592FF2D6935DB00000000B96934FEF4DCC9FFE7A67BFFF9EC
      E1FFF9ECE1FFF9EDE3FFFCF4EEFFFDFAF7FFFDF7F3FFFAEDE5FFF7E7DBFFF7E5
      D9FFF6E5D8FFDE9F75FFE4BDA3FFB36532FF0000000000000000040308086B68
      F9FC7572FDFF8581FFFF7471FCFF6260F8FF5E5BF7FF6B68FAFF7977FFFF5E5B
      F7FF4542ECFC0202070800000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000295A2F915EAF68FF80CF
      8CFF7DCF8AFF56A65FFF37843EFF02040208000000001C2E227E85C797FFD2EE
      D7FF95D9A0FF8AD394FF80C889FFFFFFFFFFFFFFFFFF7ACD85FF6CC37DFF70C7
      7FFFACDFB5FF469E58FF1124147E00000000B76733FAF5DDCCFFE7A77CFFFAF0
      E8FFFAF0E8FFC98C64FFFAF0E9FFFDF8F3FFFEFAF8FFFCF4EFFFF9E9DFFFF7E7
      DBFFF7E5D9FFE0A176FFE7C1A8FFB56633FF0000000004040808716EFCFD7B78
      FEFF8986FFFF7A77FDFF6A67FBFF100F292B0F0E292B5F5CF8FF6C6AFAFF7B78
      FFFF5F5DF7FF4643EDFC00000505000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B5A2F9160B1
      6AFF81D18EFF78C884FF55A55EFF1A3F1D7B00000000030403225B956DE5AADA
      B7FFD8F1DCFF92D89DFF88CD93FF84CC8EFF8BD496FF8AD495FF83D28EFFAFE0
      B7FF6CB97EFF3B7C46E50204022200000000B06331F0F6DFD0FFE8A77CFFFCF6
      F1FFFCF6F1FFC88B62FFFAF1E9FFFBF4EEFFFDFAF7FFFDF9F6FFFAF0E8FFF8E8
      DDFFF7E6DBFFE1A278FFEFD5C2FFB56733FE000000000D0D1F1F7875FFFF807C
      FFFF807CFEFF726FFDFF1111292B00000000000000000F0F292B605DF8FF6D6B
      FBFF7C7AFFFF605DF8FF201D686F010102020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002B5B
      2F9161B26BFF5DAE67FF1D4422790000000000000000000000000D15105367A9
      7CF4AFDCBBFFDCF2E0FFB6E4BDFF9BDBA5FF96D9A0FFA5DFAFFFC0E8C5FF7AC2
      8AFF4A9158F409110B5300000000000000009E592CD8F6DFD1FFE9A97EFFFEFA
      F6FFFDFAF6FFC88B62FFFBF3EEFFFBF1EAFFFCF6F2FFFEFBF8FFFCF6F1FFF9EC
      E2FFF8E7DBFFEED0B9FFECD0BCFFB56B3BF800000000000000000D0D1F1F7875
      FFFF7774FEFF12122B2B000000000000000000000000000000000F0F292B625F
      F8FF6866F9FF3634A0A80C0C2729000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B5C3091234E277F00000000000000000000000000000000000000000D15
      10535D966FE694CEA4FFC3E6CBFFCFEBD4FFC9E9CEFFAFDDB8FF6EB980FF4887
      56E60A120C53000000000000000000000000723F209BF6E0D1FFF7E0D1FFFEFB
      F8FFFEFBF7FFFDF9F6FFFCF5F0FFFAF0EAFFFBF2EDFFFDF9F6FFFDFAF7FFFBF1
      EBFFF7E8DEFEE8CCB9FBBA7E55EC452714630000000000000000000000000D0D
      1F1F13122B2B0000000000000000000000000000000000000000000000000F0F
      292B27276B6F14143C3E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030504231C2D227D518662DB61A375F35EA171F34A8058DB182A1C7D0304
      032300000000000000000000000000000000522E16006A3B1D9096542ACCAF62
      31EEB76733FAB96934FEBA6934FFBA6834FFBA6834FFBB6A37FFBC6C39FFBA6B
      38FFAE6233EF945831CB3C211154000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030A0A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FF800000000000000000000000000000
      C000000000000000C000000000000000C000000000000000C000000000000000
      800000000000000000000000000000008000000000000000C000000000000000
      C000000000000000C000000000000000C000000000000000C000000000000000
      FFE0000000000000FFF800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object dlgColor: TColorDialog
    Left = 602
    Top = 244
  end
end
