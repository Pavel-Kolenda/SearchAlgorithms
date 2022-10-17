object DemonstrationForm: TDemonstrationForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'DemonstrationForm'
  ClientHeight = 501
  ClientWidth = 820
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Sylfaen'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    820
    501)
  PixelsPerInch = 96
  TextHeight = 14
  object AlgorithmName: TLabel
    Left = 356
    Top = 40
    Width = 105
    Height = 31
    Caption = #1040#1083#1075#1086#1088#1080#1090#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 45
    Top = 93
    Width = 211
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentFont = False
  end
  object MaxCountElementsLabel: TLabel
    Left = 318
    Top = 124
    Width = 41
    Height = 14
    Caption = '13 - max'
  end
  object DataSearchLabel: TLabel
    Left = 45
    Top = 161
    Width = 180
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1095#1080#1089#1083#1086' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 199
    Top = 331
    Width = 26
    Height = 25
    Brush.Color = clYellow
  end
  object Label2: TLabel
    Left = 240
    Top = 331
    Width = 383
    Height = 22
    Caption = '- '#1056#1072#1089#1089#1084#1072#1090#1088#1080#1074#1072#1077#1084#1099#1081' '#1101#1083#1083#1077#1084#1077#1085#1090' '#1074' '#1090#1077#1082#1091#1097#1080#1081' '#1084#1086#1084#1077#1085#1090' '#1074#1088#1077#1084#1077#1085#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentFont = False
  end
  object Shape2: TShape
    Left = 198
    Top = 377
    Width = 26
    Height = 25
    Brush.Color = 2424576
  end
  object Label3: TLabel
    Left = 322
    Top = 380
    Width = 155
    Height = 22
    Caption = '- '#1053#1072#1081#1076#1077#1085#1085#1099#1081' '#1101#1083#1083#1077#1084#1077#1085#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 340
    Top = 8
    Width = 137
    Height = 26
    Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentFont = False
  end
  object GenerateData: TPanel
    Left = 198
    Top = 448
    Width = 161
    Height = 33
    Color = 14277081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object GenerateDataLabel: TLabel
      Left = 0
      Top = -1
      Width = 161
      Height = 34
      Alignment = taCenter
      AutoSize = False
      Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Sylfaen'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      OnClick = GenerateDataLabelClick
    end
  end
  object ElementsCount: TEdit
    Left = 279
    Top = 96
    Width = 121
    Height = 22
    TabOrder = 0
    OnChange = ElementsCountChange
  end
  object Element: TEdit
    Left = 279
    Top = 164
    Width = 121
    Height = 22
    TabOrder = 1
  end
  object DataGrid: TStringGrid
    Left = 118
    Top = 236
    Width = 553
    Height = 56
    Anchors = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 5
    Color = clWhite
    ColCount = 10
    Ctl3D = True
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Sylfaen'
    Font.Style = []
    GradientEndColor = clBlack
    GridLineWidth = 5
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goTabs]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 5
    OnDrawCell = DataGridDrawCell
  end
  object SubmitCountData: TPanel
    Left = 488
    Top = 133
    Width = 113
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    Color = 14277081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    OnClick = SubmitCountDataClick
    OnMouseLeave = SubmitCountDataMouseLeave
    OnMouseMove = SubmitCountDataMouseMove
  end
  object FindNumber: TPanel
    Left = 440
    Top = 448
    Width = 161
    Height = 33
    Caption = #1053#1072#1081#1090#1080' '#1095#1080#1089#1083#1086
    Color = 14277081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    OnClick = FindNumberClick
  end
end
