object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'AI-powered Smart Paste'
  ClientHeight = 585
  ClientWidth = 780
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 760
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 780
    Height = 585
    Align = alClient
    TabOrder = 0
    AutoSize = True
    object cxGrid1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 728
      Height = 200
      TabOrder = 13
      Visible = False
      object gvOrders: TcxGridDBTableView
        Navigator.Visible = True
        DataController.DataSource = dsData
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object gvOrdersRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object gvOrdersCompanyName: TcxGridDBColumn
          DataBinding.FieldName = 'CompanyName'
          Width = 164
        end
        object gvOrdersAmount: TcxGridDBColumn
          AI.SmartPaste.Description = 'This is a number without additional characters, commas or dots'
          DataBinding.FieldName = 'Amount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 132
        end
        object gvOrdersDueDate: TcxGridDBColumn
          DataBinding.FieldName = 'DueDate'
          Width = 141
        end
        object gvOrdersProcessed: TcxGridDBColumn
          DataBinding.FieldName = 'Processed'
          Width = 149
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gvOrders
      end
    end
    object MemoSourceLayout: TcxMemo
      Left = 26
      Top = 123
      Lines.Strings = (
        'Payment: Amount - $123.00'
        'Statement Date: 10/15/2024'
        'Account Number: 133244556'
        'Name: John Smith'
        'Contact: (123) 456-7890'
        'Email: john@myemail.com'
        'Address:'
        '- 123 Elm St Apt 4B'
        '- New York, NY 10001')
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 436
      Width = 330
    end
    object tbLine1: TcxTextEdit
      Left = 501
      Top = 351
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 239
    end
    object tvFirstName: TcxTextEdit
      Left = 501
      Top = 162
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 239
    end
    object tbLastName: TcxTextEdit
      Left = 501
      Top = 196
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 239
    end
    object tbPhoneNumber: TcxMaskEdit
      Left = 501
      Top = 230
      ParentFont = False
      Properties.EditMask = '!\(999\) 000-0000;1;_'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Text = '(   )    -    '
      Width = 239
    end
    object tbEmail: TcxMaskEdit
      Left = 501
      Top = 264
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '[\w\-.]+@[\w\-]+(.[\w\-]+)+'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 239
    end
    object cbLine2: TcxTextEdit
      Left = 501
      Top = 385
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 239
    end
    object tbCity: TcxTextEdit
      Left = 501
      Top = 419
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Width = 239
    end
    object tbRegion: TcxTextEdit
      Left = 501
      Top = 453
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 239
    end
    object tbZipCode: TcxMaskEdit
      Left = 501
      Top = 487
      ParentFont = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Width = 239
    end
    object btnCopyForLayout: TcxButton
      Left = 26
      Top = 91
      Width = 330
      Height = 25
      Caption = 'Copy Text'
      TabOrder = 0
      OnClick = btnCopyForLayoutClick
    end
    object btnPasteToLayout: TcxButton
      Left = 363
      Top = 91
      Width = 391
      Height = 25
      Caption = 'AI-powered Smart Paste'
      TabOrder = 2
      OnClick = btnPasteToLayoutClick
    end
    object MemoSourceGrid: TcxMemo
      Left = 10000
      Top = 10000
      Lines.Strings = (
        'Transactions '
        
          '- Hanari Carnes - Invoice amount due: $123.00, due by 10/30/2024' +
          '. Status: Processed '#9989
        
          '- Que Del'#237'cia - Amount: $231.00 | Due date: 10/29/2024 | Not pro' +
          'cessed yet '
        
          '- Romero y tomillo - $369.00 required by 10/28/2024, Processed '#9989 +
          ' '
        
          '- M'#232're Paillard - Payment: $158.00, due: 10/31/2024, unprocessed' +
          ' '
        
          '- Eastern Delights has an outstanding balance of $97.00, which w' +
          'as due on 10/27/2024. Status: Processed '#9989' ')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Visible = False
      Height = 151
      Width = 728
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object liGrid: TdxLayoutItem
      Parent = lgGridDestination
      CaptionOptions.Text = 'TcxGrid'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liMemoLayout: TdxLayoutItem
      Parent = lgLayoutSource
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = MemoSourceLayout
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lgGrid: TdxLayoutGroup
      Parent = lgMain
      CaptionOptions.Text = 'Grid'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object lgMain: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lblDescriptionLayoutStep1: TdxLayoutLabeledItem
      Parent = lgLayoutSource
      AlignmentConstraint = AlignmentConstraint1
      CaptionOptions.Text = 
        'Step 1. Copy text from the editor to the clipboard (you can modi' +
        'fy values in the text as desired).'
      CaptionOptions.WordWrap = True
      Index = 0
    end
    object lgLayoutDestination: TdxLayoutGroup
      Parent = lgLayout
      AlignHorz = ahClient
      CaptionOptions.Text = 'Editors'
      ItemIndex = 2
      ShowBorder = False
      Index = 1
    end
    object lgBillingInformation: TdxLayoutGroup
      Parent = lgLayoutDestination
      CaptionOptions.Text = 'Billing Information'
      Index = 2
    end
    object lgBillingAddress: TdxLayoutGroup
      Parent = lgLayoutDestination
      CaptionOptions.Text = 'Billing Address'
      Index = 3
    end
    object liAddressLine1: TdxLayoutItem
      Parent = lgBillingAddress
      CaptionOptions.Text = 'Line 1'
      Control = tbLine1
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liFirstName: TdxLayoutItem
      Parent = lgBillingInformation
      CaptionOptions.Text = 'First Name'
      Control = tvFirstName
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liLastName: TdxLayoutItem
      Parent = lgBillingInformation
      CaptionOptions.Text = 'Last Name'
      Control = tbLastName
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liPhoneNumber: TdxLayoutItem
      Parent = lgBillingInformation
      CaptionOptions.Text = 'Phone Number'
      Control = tbPhoneNumber
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liEmail: TdxLayoutItem
      Parent = lgBillingInformation
      CaptionOptions.Text = 'Email'
      Control = tbEmail
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liAddressLine2: TdxLayoutItem
      Parent = lgBillingAddress
      CaptionOptions.Text = 'Line 2'
      Control = cbLine2
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liCity: TdxLayoutItem
      Parent = lgBillingAddress
      CaptionOptions.Text = 'City'
      Control = tbCity
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liState: TdxLayoutItem
      Parent = lgBillingAddress
      AI.SmartPaste.Description = 'State/Province/Region'
      CaptionOptions.Text = 'State/Province/Region'
      Control = tbRegion
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liZip: TdxLayoutItem
      Parent = lgBillingAddress
      CaptionOptions.Text = 'ZIP'
      Control = tbZipCode
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liBtnCopy: TdxLayoutItem
      Parent = lgLayoutSource
      AlignmentConstraint = AlignmentConstraint2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnCopyForLayout
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liBtnSmartPaste: TdxLayoutItem
      Parent = lgLayoutDestination
      AlignmentConstraint = AlignmentConstraint2
      CaptionOptions.Text = 'AI-powered Smart Paste'
      CaptionOptions.Visible = False
      Control = btnPasteToLayout
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lblDescriptionLayoutStep2: TdxLayoutLabeledItem
      Parent = lgLayoutDestination
      AlignmentConstraint = AlignmentConstraint1
      CaptionOptions.Text = 
        'Step 2: Use clipboard'#160'text (copied in step 1)'#160'to populate the ed' +
        'it form.'#160
      CaptionOptions.WordWrap = True
      Index = 0
    end
    object lgGridSource: TdxLayoutGroup
      Parent = lgGrid
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object lgLayout: TdxLayoutGroup
      Parent = lgMain
      CaptionOptions.Text = 'Layout Control'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lgLayoutSource: TdxLayoutGroup
      Parent = lgLayout
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgGridSource
      AlignVert = avClient
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Control = MemoSourceGrid
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgDescriptionGridStep1: TdxLayoutLabeledItem
      Parent = lgGridSource
      CaptionOptions.Text = 
        'Step 1. Copy a line from the editor to the clipboard (you can mo' +
        'dify values in the text as desired).'
      Index = 0
    end
    object lgDescriptionGridStep2: TdxLayoutLabeledItem
      Parent = lgGridDestination
      CaptionOptions.Text = 
        'Step 2. Right-click the GridControl to open the SmartPaste popup' +
        ' menu.'
      Index = 0
    end
    object lgGridDestination: TdxLayoutGroup
      Parent = lgGrid
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object liBtnUpdate: TdxLayoutRadioButtonItem
      Parent = lgPasteMode
      CaptionOptions.Text = 'Update'
      Checked = True
      TabStop = True
      Index = 0
    end
    object liBtnAppend: TdxLayoutRadioButtonItem
      Parent = lgPasteMode
      CaptionOptions.Text = 'Append'
      Index = 1
    end
    object lgPasteMode: TdxLayoutGroup
      Parent = lgGrid
      CaptionOptions.Text = 'Paste Mode'
      Index = 1
    end
    object AlignmentConstraint1: TdxLayoutAlignmentConstraint
      Kind = ackTop
    end
    object AlignmentConstraint2: TdxLayoutAlignmentConstraint
      Kind = ackBottom
    end
  end
  object mdOrders: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 352
    Top = 232
    object mdOrdersCompanyName: TStringField
      FieldName = 'CompanyName'
    end
    object mdOrdersAmount: TCurrencyField
      FieldName = 'Amount'
    end
    object mdOrdersDueDate: TDateTimeField
      FieldName = 'DueDate'
    end
    object mdOrdersProcessed: TBooleanField
      FieldName = 'Processed'
    end
  end
  object dsData: TDataSource
    DataSet = mdOrders
    Left = 352
    Top = 184
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        GridView = gvOrders
        HitTypes = [gvhtCell, gvhtRecord]
        Index = 0
        PopupMenu = pmSmartPaste
      end>
    Left = 256
    Top = 232
  end
  object pmSmartPaste: TPopupMenu
    Images = cxImageList1
    Left = 304
    Top = 232
    object pmiPaste: TMenuItem
      Caption = 'Smart Paste'
      ImageIndex = 0
      OnClick = pmiPasteClick
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'WXI'
    Left = 304
    Top = 184
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 256
    Top = 184
    Bitmap = {
      494C010102000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A0500380D07003F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003A2004854024048C000000000000000000000000000000000000
      00000000000000000000000000000000000000000000666666F2717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF696969F60000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001000012B8650EECBD680EEF010000150000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0003653808AFD77610FFD77610FF6B3B08B40000000400000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010000136638
      08B0D77610FFD77610FFD77610FFD77610FF6C3B08B501000016000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF696969F600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C06003D3F23048ABB670EEED776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFBE690FF04124048D0D07
      003F0000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008040033361E0481B4630EE9D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFB6640EEB391F04840905
      00360000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000E5C32
      07A7D77610FFD77610FFD77610FFD77610FF633608AD00000011000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00025C3207A7D77610FFD77610FF643708AE0000000300000000000000000704
      002F0A05003800000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000EB4630DE9BA660EED010000120000000000000000000000004626
      05924E2B069A00000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000666666F2717171FF717171FF555555DD0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000371E04823D220489000000000000000000000000130A014DD174
      10FCD37410FD170C0154000000000000000000000000717171FF000000000000
      0000000000000000000000000000717171FF717171FF555555DD0101011E0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080400340B06003B00000000090500354A290596D17410FCD776
      10FFD77610FFD37410FD4E2B069A0A05003800000000717171FF000000000000
      0000000000000000000000000000717171FF555555DD0101011E000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000603002C4124048DCF7210FAD776
      10FFD77610FFD17310FC462605920704003000000000626262EE717171FF7171
      71FF717171FF717171FF717171FF555555DD0101011E00000000666666F27171
      71FF717171FF555555DD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010090146CF72
      10FBD27410FC130A014D00000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000717171FF7171
      71FF555555DD0101011E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004224
      058E492905960000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000717171FF5555
      55DD0101011E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000603
      002D090400350000000000000000000000000000000000000000000000000000
      0000626262EE717171FF717171FF717171FF717171FF717171FF555555DD0101
      011E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 12058880
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076696577426F783D2230203020333220333222
          20786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F73
          7667222069643D224C617965725F34223E0D0A093C646566733E0D0A09093C73
          74796C653E2E426C75657B66696C6C3A233131373764373B7374726F6B652D77
          696474683A3070783B7D3C2F7374796C653E0D0A093C2F646566733E0D0A093C
          7061746820643D224D31312E37312C382E3235632D312E312C362E31322D352E
          33342C31302E33362D31312E34372C31312E34372D2E33332E30362D2E33332E
          35312C302C2E35372C362E31322C312E312C31302E33362C352E33342C31312E
          34372C31312E34372E30362E33332E35312E33332E35372C302C312E312D362E
          31322C352E33342D31302E33362C31312E34372D31312E34372E33332D2E3036
          2E33332D2E35312C302D2E35372D362E31322D312E312D31302E33362D352E33
          342D31312E34372D31312E34372D2E30362D2E33332D2E35312D2E33332D2E35
          372C305A2220636C6173733D22426C7565222F3E0D0A093C7061746820643D22
          4D32332E38312E3137632D2E37342C342E30382D332E35362C362E39312D372E
          36342C372E36342D2E32322E30342D2E32322E33342C302C2E33382C342E3038
          2E37342C362E39312C332E35362C372E36342C372E36342E30342E32322E3334
          2E32322E33382C302C2E37342D342E30382C332E35362D362E39312C372E3634
          2D372E36342E32322D2E30342E32322D2E33342C302D2E33382D342E30382D2E
          37342D362E39312D332E35362D372E36342D372E36342D2E30342D2E32322D2E
          33342D2E32322D2E33382C305A2220636C6173733D22426C7565222F3E0D0A3C
          2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2243
          6F70792220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C61636B7B66696C
          6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C617373
          3D22426C61636B2220643D224D32312C30483943382E342C302C382C302E342C
          382C317635483343322E342C362C322C362E342C322C3776323263302C302E36
          2C302E342C312C312C3168313863302E362C302C312D302E342C312D31762D35
          683563302E362C302C312D302E342C312D31563720202623393B4C32312C307A
          204D32302C323848345638683468326834763563302C302E362C302E342C312C
          312C3168357634763476325632387A204D32362C3132763130682D34762D396C
          2D372D37682D355632683468367634763163302C302E362C302E342C312C312C
          3168355631327A222F3E0D0A3C2F7376673E0D0A}
        FileName = 'SVG Images\Edit\Copy.svg'
        Keywords = 'Edit;Copy'
      end>
  end
  object OpenAIDriver: TAIOpenAIDriver
    Params.Strings = (
      'Model=gpt-4o-mini')
    SynchronizeEvents = False
    Left = 264
    Top = 296
  end
  object GeminiDriver: TAIGeminiDriver
    SynchronizeEvents = False
    Left = 344
    Top = 296
  end
end
