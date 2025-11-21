unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, dxLayoutcxEditAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxContainer,
  cxTextEdit, cxMemo, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, cxMaskEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxmdaset, dxAI,  dxAI.Commands.SmartPaste, dxBarBuiltInMenu,
  cxGridCustomPopupMenu, cxGridPopupMenu, System.ImageList, Vcl.ImgList,
  cxImageList, cxCurrencyEdit, dxCore, dxSkinsForm, dxForms, dxAI.Commands.Dialog,
  SmartCoreAI.Driver.Gemini, SmartCoreAI.Types, SmartCoreAI.Driver.OpenAI;

type
  TForm1 = class(TdxForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    gvOrders: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    liGrid: TdxLayoutItem;
    MemoSourceLayout: TcxMemo;
    liMemoLayout: TdxLayoutItem;
    lgGrid: TdxLayoutGroup;
    lgMain: TdxLayoutGroup;
    lblDescriptionLayoutStep1: TdxLayoutLabeledItem;
    lgLayoutDestination: TdxLayoutGroup;
    lgBillingInformation: TdxLayoutGroup;
    lgBillingAddress: TdxLayoutGroup;
    tbLine1: TcxTextEdit;
    liAddressLine1: TdxLayoutItem;
    tvFirstName: TcxTextEdit;
    liFirstName: TdxLayoutItem;
    tbLastName: TcxTextEdit;
    liLastName: TdxLayoutItem;
    tbPhoneNumber: TcxMaskEdit;
    liPhoneNumber: TdxLayoutItem;
    tbEmail: TcxMaskEdit;
    liEmail: TdxLayoutItem;
    cbLine2: TcxTextEdit;
    liAddressLine2: TdxLayoutItem;
    tbCity: TcxTextEdit;
    liCity: TdxLayoutItem;
    tbRegion: TcxTextEdit;
    liState: TdxLayoutItem;
    tbZipCode: TcxMaskEdit;
    liZip: TdxLayoutItem;
    btnCopyForLayout: TcxButton;
    liBtnCopy: TdxLayoutItem;
    btnPasteToLayout: TcxButton;
    liBtnSmartPaste: TdxLayoutItem;
    lblDescriptionLayoutStep2: TdxLayoutLabeledItem;
    mdOrders: TdxMemData;
    dsData: TDataSource;
    mdOrdersCompanyName: TStringField;
    mdOrdersAmount: TCurrencyField;
    mdOrdersDueDate: TDateTimeField;
    mdOrdersProcessed: TBooleanField;
    gvOrdersRecId: TcxGridDBColumn;
    gvOrdersCompanyName: TcxGridDBColumn;
    gvOrdersAmount: TcxGridDBColumn;
    gvOrdersDueDate: TcxGridDBColumn;
    gvOrdersProcessed: TcxGridDBColumn;
    lgGridSource: TdxLayoutGroup;
    lgLayout: TdxLayoutGroup;
    lgLayoutSource: TdxLayoutGroup;
    MemoSourceGrid: TcxMemo;
    dxLayoutItem1: TdxLayoutItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    lgDescriptionGridStep1: TdxLayoutLabeledItem;
    lgDescriptionGridStep2: TdxLayoutLabeledItem;
    lgGridDestination: TdxLayoutGroup;
    pmSmartPaste: TPopupMenu;
    pmiPaste: TMenuItem;
    dxSkinController1: TdxSkinController;
    liBtnUpdate: TdxLayoutRadioButtonItem;
    liBtnAppend: TdxLayoutRadioButtonItem;
    lgPasteMode: TdxLayoutGroup;
    AlignmentConstraint1: TdxLayoutAlignmentConstraint;
    AlignmentConstraint2: TdxLayoutAlignmentConstraint;
    cxImageList1: TcxImageList;
    OpenAIDriver: TAIOpenAIDriver;
    GeminiDriver: TAIGeminiDriver;
    procedure FormCreate(Sender: TObject);
    procedure btnPasteToLayoutClick(Sender: TObject);
    procedure btnCopyForLayoutClick(Sender: TObject);
    procedure pmiPasteClick(Sender: TObject);
  private
    { Private declarations }

    procedure PopulateItemDescriptions;
    procedure GenerateData;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  DateUtils, Vcl.Clipbrd, dxSmartCoreAI;

procedure TForm1.btnCopyForLayoutClick(Sender: TObject);
begin
  MemoSourceLayout.SelectAll;
  MemoSourceLayout.CopyToClipboard;
end;

procedure TForm1.btnPasteToLayoutClick(Sender: TObject);
begin
  lgLayoutDestination.SmartPaste;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  Client: TdxAIChatClient;
begin
  // OpenAI
  Client := TdxSmartCoreAIChatClient.Create(OpenAIDriver);

  // Google Gemini
  // Client := TdxSmartCoreAIChatClient.Create(GeminiDriver);

  TdxAIChatClients.AddChatClient(Client);

  PopulateItemDescriptions;
  GenerateData;
end;

procedure TForm1.GenerateData;
const
  Companies: array[0..7] of string = (
    'Hanari Carnes', 'Que Delícia', 'Romero y tomillo', 'Mère Paillarde',
    'Comércio Mineiro', 'Reggiani Caseifici', 'Maison Dewey', 'Eastern Delights');

  Items: array[0..4] of string = (
    'Office Chairs', 'Laptops', 'Printer Ink', 'Tables', 'Paper');
var
  I, ACount: Integer;
begin
  Randomize;
  mdOrders.DisableControls;
  for I := 0 to 9 do
  begin
    ACount := Random(10);
    mdOrders.Append;
    mdOrdersCompanyName.AsString := Companies[I mod Length(Companies)];
    mdOrdersDueDate.AsDateTime := IncDay(Today, ACount - 5);
    if (I mod 2 = 0) then
      mdOrdersAmount.AsCurrency := (I + 1) * 123
    else
      mdOrdersAmount.AsCurrency := I * 231;

    mdOrdersProcessed.AsBoolean := I mod 2 = 0;
    mdOrders.Post;
  end;
  mdOrders.EnableControls;
end;

procedure TForm1.pmiPasteClick(Sender: TObject);
begin
  if (Clipboard.AsText.Trim = '') then
     Exit;

  if liBtnAppend.Checked then
    gvOrders.DataController.Append;

  gvOrders.SmartPaste;
end;

procedure TForm1.PopulateItemDescriptions;
begin
  // Layout item descriptions
  liAddressLine1.AI.SmartPaste.Description :=
    'The primary address line, which usually includes the street number and' +
    ' name. Alphabetic and numeric characters are expected.';

  liAddressLine2.AI.SmartPaste.Description :=
    'The secondary address line, such as apartment or suite number. Optional' +
    ' field. Alphabetic and numeric characters are expected.';

  liCity.AI.SmartPaste.Description :=
    'The city name. Only alphabetic characters are expected.';

  liState.AI.SmartPaste.Description :=
    'The state, province, or region name or abbreviation. ' +
    'Only alphabetic characters are expected.';

  liZip.AI.SmartPaste.Description :=
    'The ZIP or postal code. Numeric characters and sometimes alphabetic ' +
    'characters (e.g., for Canadian postal codes) are expected.';

  liFirstName.AI.SmartPaste.Description :=
    'The first name of the recipient. Only alphabetic characters are expected.';

  liLastName.AI.SmartPaste.Description :=
    'The last name of the recipient. Only alphabetic characters are expected.';

  liPhoneNumber.AI.SmartPaste.Description :=
    'The phone number of the recipient in formats like (XXX) XXX-XXXX. Numeric characters and standard phone formatting symbols are expected.';

  liEmail.AI.SmartPaste.Description :=
    'The email address of the recipient.';

  // Grid column descriptions
  gvOrdersProcessed.AI.SmartPaste.Description :=
    'A Boolean value indicating whether the order has been processed.';

  gvOrdersDueDate.AI.SmartPaste.Description :=
    'The date by which the company expects the order to be fulfilled.';

  gvOrdersAmount.AI.SmartPaste.Description :=
    'The total monetary value of the order, typically in USD.';
end;

end.
