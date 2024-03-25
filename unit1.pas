unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    bt_c: TButton;
    bt_min: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    bt_0: TButton;
    Button14: TButton;
    bt_plus: TButton;
    bt_eq: TButton;
    bt_del: TButton;
    bt_1: TButton;
    Button3: TButton;
    bt_dev: TButton;
    bt_2: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    bt_tms: TButton;
    edt_display: TEdit;
    procedure bt_0Click(Sender: TObject);
    procedure bt_1Click(Sender: TObject);
    procedure bt_cClick(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_eqClick(Sender: TObject);
    procedure bt_pecentClick(Sender: TObject);
    procedure bt_plusClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
      angka_pertama, angka_kedua, hasil: Extended;
      op: String;

  end;

var
  Form1: TForm1;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.bt_0Click(Sender: TObject);
begin
  if (edt_display.Text = '0') or (edt_display.Text = '+Inf') then
  edt_display.Text:=TButton(Sender).Caption
  else
      edt_display.Text:=edt_display.Text + TButton(Sender).Caption;


end;

procedure TForm1.bt_1Click(Sender: TObject);
begin

end;

procedure TForm1.bt_cClick(Sender: TObject);
begin
  edt_display.Text:='0';
end;

procedure TForm1.bt_delClick(Sender: TObject);
begin
  edt_display.Text:= Copy(edt_display.Text,1,Length(edt_display.Text)-1);
end;

procedure TForm1.bt_eqClick(Sender: TObject);
begin
  angka_kedua:=StrToFloat(edt_display.Text);
  case op of
    '+': hasil:= angka_pertama + angka_kedua;
    '-': hasil:= angka_pertama - angka_kedua;
    '*': hasil:= angka_pertama * angka_kedua;
    '/': hasil:= angka_pertama / angka_kedua;
    //'%': hasil:= angka_pertama mod angka_kedua;

  end;
  edt_display.Text:=FloatToStr(hasil);
end;

procedure TForm1.bt_pecentClick(Sender: TObject);
begin

end;

procedure TForm1.bt_plusClick(Sender: TObject);
begin
  angka_pertama:= StrToFloat(edt_display.Text);
  op:= TButton(Sender).Caption;
  edt_display.Text:='0';
end;

procedure TForm1.Button10Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

