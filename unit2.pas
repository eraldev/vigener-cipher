unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, CheckLst;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;
  alph:string;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  alph:=edit1.text;
  if combobox1.ItemIndex=1 then begin
     label1.caption:='Alphabet';
     label2.caption:='Language';
  end;
  if combobox1.ItemIndex=0 then begin
     label1.caption:='Алфавит';
     label2.caption:='Язык';
  end;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  alph:=edit1.text;
end;

procedure TForm2.ListBox1Click(Sender: TObject);
begin

end;

end.

