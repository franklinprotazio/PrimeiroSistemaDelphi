unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure calcularSalarios;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unitDM;

procedure TForm1.calcularSalarios;
var
    totalSalarios : Real;
begin
DM.tbClientes.First;

  while not DM.tbClientes.Eof do
   begin
     totalSalarios := totalSalarios + DM.tbClientessalario.Value;

     DM.tbClientes.Next;
   end;

  Label4.Caption := FloatToStr (totalSalarios);
 end;

procedure TForm1.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbPost then
    begin
    Label2.Caption :=  IntToStr (DM.tbClientes.RecordCount);
    calcularSalarios;
    ShowMessage('Cliente salvo com Sucesso');
    end;

  if Button = nbDelete then
    begin
      Label2.Caption := IntToStr(DM.tbClientes.RecordCount);
      calcularSalarios;
    end;
end;

procedure TForm1.FormShow(Sender: TObject);

begin
  Label2.Caption := IntToStr(DM.tbClientes.RecordCount);
  calcularSalarios;
end;

end.
