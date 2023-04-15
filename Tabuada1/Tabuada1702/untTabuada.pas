unit untTabuada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmTabuada = class(TForm)
    btnCalc: TBitBtn;
    btnLimpar: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    edtNum: TEdit;
    memTab: TMemo;
    Label2: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabuada: TfrmTabuada;

implementation

{$R *.dfm}

procedure TfrmTabuada.btnCalcClick(Sender: TObject);
var num,i,res: integer;
begin
    memTab.Clear;
    if edtNum.Text = '' then
    begin
       Application.MessageBox('Digite um número:','Atenção',MB_OK+MB_ICONINFORMATION);
       edtNum.SetFocus;
    end
    else
    begin
         num := StrToInt(edtNum.Text);
         res := 0;
         for i := 0 to 10 do
         begin
             res := num * i;
             memTab.Lines.Add(IntToStr(num)+'X'+IntToStr(i)+
             '='+IntToStr(res));
         end;
    end;
end;

procedure TfrmTabuada.btnFecharClick(Sender: TObject);
begin
    if application.MessageBox('Deseja Fechar?','Confirme',
       MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = idyes then
       close;
end;

procedure TfrmTabuada.btnLimparClick(Sender: TObject);
begin
   edtNum.Clear;
   memTab.Clear;
   edtNum.SetFocus;
end;

end.
