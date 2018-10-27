unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  unit2, unit3, Classes, crt, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Text_t: TLabel;
    Text_key: TLabel;
    Text_result: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
   a,b,c,d:string;
    i,j,t,s,k:integer; key:array [1..100]of integer;



implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  form3.show;
end;

var TViginer: string ;

function ViginerEncipher(toCode, K: string): string;
var
i: integer;
currK: byte;
s: string;
begin
TViginer:=alph;
s := '';
for i := 1 to length(toCode) do begin
currK := pred(pos(K[ (pred(i) mod length(K)) + 1 ], TViginer));
s := s + TViginer[ ((pred(pos(toCode[ i ], TViginer)) + currK) mod length(TViginer))+1];
end;
ViginerEncipher := s;
end;

function ViginerDecipher(toDecode, K: string): string;
var
i, T: integer;
currK: byte;
s: string;
begin
TViginer:=alph;
s := '';
for i := 1 to length(toDecode) do begin
currK := pred(pos(K[ (pred(i) mod length(K)) + 1 ], TViginer));
T := pred(pos(toDecode[ i ], TViginer)) - currK;
if T < 0 then inc(T, length(TViginer));
s := s + TViginer[T + 1];
end;
ViginerDecipher := s;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Edit3.clear;
a:=Edit1.text;
b:=alph;

d:=edit2.text;

Edit3.text:=ViginerEncipher(edit1.text, edit2.text);
c:='';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit3.clear;
a:=Edit1.text;
b:=alph;
edit3.text:=ViginerDecipher(edit1.text,edit2.text);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
      Form2.show;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

end.

