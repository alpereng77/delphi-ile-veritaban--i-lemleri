unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBGrid2: TDBGrid;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    DBGrid3: TDBGrid;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    Label1: TLabel;
    Orders: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
var
s:string;
begin

if radiobutton1.Checked=true then begin

          s:=ansiUppercase(edit1.Text);
       if s=Copy(AnsiUpperCase(adotable1.FieldByName('CompanyName').AsString),1, s.Length) then   accept:=true
       else
       accept:=false;
     end;


       if radiobutton2.Checked=true then begin

          s:=ansiUppercase(edit1.Text);
       if s=Copy(AnsiUpperCase(adotable1.FieldByName('ContactName').AsString),1, s.Length) then   accept:=true
       else
       accept:=false;
       end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
toplam:integer;
begin
adotable2.First;
toplam:=0;
repeat
  toplam:=toplam + adotable2.FieldByName('EmployeeID').AsInteger;
  adotable2.Next;
until (adotable2.Eof) ;
adotable2.First;
label3.Caption:=floattostr(toplam);


end;

procedure TForm1.Button3Click(Sender: TObject);
var
carp:integer;
begin


  carp:=adotable3.FieldByName('UnitPrice').AsInteger  ;

  label4.Caption:=floattostr(carp);



end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
adotable1.Filtered:=false;
if (edit1.Text='') then  adotable1.Filtered:=false
else
adotable1.Filtered:=true


end;

end.
