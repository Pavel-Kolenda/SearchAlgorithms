object DiscribeForm: TDiscribeForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = '$'#1053#1072#1079#1074#1072#1085#1080#1077
  ClientHeight = 497
  ClientWidth = 820
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Search_name: TLabel
    Left = 317
    Top = 20
    Width = 180
    Height = 29
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1087#1086#1080#1089#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 30
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentFont = False
  end
  object CloseButton: TImage
    Left = 8
    Top = 8
    Width = 45
    Height = 40
    AutoSize = True
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D494844520000002D0000
      002808060000006AD77329000000097048597300000B1300000B1301009A9C18
      000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000001
      B74944415478DAEDD7D19182400C06E0508194600994A0158015A01D68054805
      68056A056A056A056007D8815470777F667686D99B1BD9257B72379B371E806F
      423609C1C757D01F8BC0A33DDAA3DF1FFF1BBDD96C2849121A8FC74E20D7EB95
      2693892C3ACF73DAEFF774B95CC4E1EBF59A0E87039565496118CAA15DC197CB
      25DD6E377E6617B0315A1A3E9FCFE97EBF1B81ADD008A081B7853F9F4FCE7010
      04B4DBED8CEFB7EE1E0A7E3C1E298A2223F0743AE57B6CC0BDD00ABE5AAD38E3
      5DE00A8C2E946599ED6BFBF7E9AAAA68369BBDCC785DD70C461DF7018BA0DBF0
      A228388B2EC1626805070C43284D53676051741B886101B87E2D15E2BB8782C6
      71CC534ECFFC20D188D3E9C4358EFAC601950E71B4EADF38946887C832CA63B0
      687DE0A85291868BA151BBDBEDF6DB6877011741ABD5F2A75D444D421C4E0978
      6FF42BB00EC7A28F7A7F1B1AE0F3F9CC35DC65DB9358967AA16D967715988EB6
      6BA9351A2F7D3C1E9C615370FB194DD330DCF41946687CDEC562C12FE9F379DB
      70A77F2E52F5A807FA3A26A8F83F227AAD1ACB529B9A0E37F9EFEC84C6E040FD
      B900B7E1A3D1880FB8087A68E1D11EEDD103088FFEADF8040732B39859931D50
      0000000049454E44AE426082}
    OnClick = CloseButtonClick
  end
  object SearchDescription: TWebBrowser
    Left = 73
    Top = 69
    Width = 681
    Height = 324
    TabOrder = 1
    ControlData = {
      4C000000624600007D2100000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126209000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object ShowDemoButton: TPanel
    Left = 192
    Top = 426
    Width = 161
    Height = 45
    Color = 14277081
    ParentBackground = False
    TabOrder = 0
    object ShowDemoLabel: TLabel
      Left = 2
      Top = 4
      Width = 158
      Height = 38
      Alignment = taCenter
      Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1103' '#1088#1072#1073#1086#1090#1099'    '#1072#1083#1075#1086#1088#1080#1090#1084#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Sylfaen'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      OnClick = ShowDemoLabelClick
    end
  end
  object ShowCodeButton: TPanel
    Left = 447
    Top = 425
    Width = 161
    Height = 46
    Caption = #1050#1086#1076' '#1072#1083#1075#1086#1088#1080#1090#1084#1072
    Color = 14277081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Sylfaen'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnClick = ShowCodeButtonClick
  end
end