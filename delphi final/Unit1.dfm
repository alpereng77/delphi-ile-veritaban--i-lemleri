object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Final S'#305'nav'#305
  ClientHeight = 723
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 32
    Top = 56
    Width = 69
    Height = 16
    Caption = 'Customers'
  end
  object Orders: TLabel
    Left = 32
    Top = 256
    Width = 44
    Height = 16
    Caption = 'Orders'
  end
  object Label2: TLabel
    Left = 32
    Top = 477
    Width = 85
    Height = 16
    Caption = 'Order Details'
  end
  object Label3: TLabel
    Left = 607
    Top = 560
    Width = 42
    Height = 16
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 695
    Top = 560
    Width = 42
    Height = 16
    Caption = 'Label4'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 78
    Width = 713
    Height = 153
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 280
    Width = 713
    Height = 169
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
  object DBGrid3: TDBGrid
    Left = 32
    Top = 496
    Width = 537
    Height = 120
    DataSource = DataSource3
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
  end
  object Button2: TButton
    Left = 589
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Hesapla 1'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 670
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Hesapla2'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 624
    Top = 38
    Width = 121
    Height = 24
    TabOrder = 5
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object RadioButton1: TRadioButton
    Left = 368
    Top = 40
    Width = 113
    Height = 17
    Caption = 'CompanyName'
    TabOrder = 6
  end
  object RadioButton2: TRadioButton
    Left = 494
    Top = 40
    Width = 113
    Height = 17
    Caption = 'ContactName'
    TabOrder = 7
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=North' +
      'wind.MDB;Mode=Share Deny None;Persist Security Info=False;Jet OL' +
      'EDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Data' +
      'base Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lock' +
      'ing Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global ' +
      'Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB' +
      ':Create System Database=False;Jet OLEDB:Encrypt Database=False;J' +
      'et OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wi' +
      'thout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 880
    Top = 152
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = ADOTable1FilterRecord
    TableName = 'Customers'
    Left = 896
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 840
    Top = 96
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'CustomerID'
    MasterFields = 'CustomerID'
    MasterSource = DataSource1
    TableName = 'Orders'
    Left = 880
    Top = 344
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 912
    Top = 464
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 888
    Top = 544
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'OrderID'
    MasterFields = 'OrderID'
    MasterSource = DataSource2
    TableName = 'Order Details'
    Left = 840
    Top = 560
  end
end
