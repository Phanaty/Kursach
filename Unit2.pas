unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    Button1: TButton;
    Button2: TButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
   Type mas = array[1..10,1..10] of integer;
var
  Form2: TForm2;
  i , j  : integer;
  arr : mas;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
 begin
     begin
      if RadioButton1.Checked = True then
      begin
        for i:= 0 to stringgrid3.RowCount - 1 do
        for j:= 0 to stringgrid3.ColCount - 1 do
        stringgrid3.Cells[j,i]:=inttostr(strtoint(stringgrid1.Cells[j,i])+strtoint(stringgrid2.Cells[j,i])); //сложение матриц
      end
      else
      begin
        for i:= 0 to stringgrid3.RowCount - 1 do
        for j:= 0 to stringgrid3.ColCount - 1 do
        stringgrid3.Cells[j,i]:=inttostr(strtoint(stringgrid1.Cells[j,i])-strtoint(stringgrid2.Cells[j,i])); //вычитание матриц
      end;

    end;
 end;

procedure TForm2.Button2Click(Sender: TObject);
begin
     begin
     for i:= 0 to stringgrid3.RowCount-1 do  // обнуляем все матрицы
     for j:= 0 to stringgrid3.ColCount-1 do
     Stringgrid3.Cells[j,i]:='0';
    end;
     begin
     for i:= 0 to stringgrid2.RowCount-1 do
     for j:= 0 to stringgrid3.ColCount-1 do   // обнуляем все матрицы
     Stringgrid2.Cells[j,i]:='0';
    end;
    begin
    for i:= 0 to stringgrid1.RowCount-1 do   // обнуляем все матрицы
    for j:= 0 to stringgrid1.ColCount-1 do
    Stringgrid1.Cells[j,i]:='0';
    end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   begin
     for i:= 0 to stringgrid3.RowCount-1 do  // обнуляем все матрицы при закрытии формы
     for j:= 0 to stringgrid3.ColCount-1 do
     Stringgrid3.Cells[j,i]:='0';
    end;
     begin
     for i:= 0 to stringgrid2.RowCount-1 do   // обнуляем все матрицы при закрытии формы
     for j:= 0 to stringgrid2.ColCount-1 do
     Stringgrid2.Cells[j,i]:='0';
    end;
    begin
    for i:= 0 to stringgrid1.RowCount-1 do   // обнуляем все матрицы при закрытии формы
    for j:= 0 to stringgrid1.ColCount-1 do
    Stringgrid1.Cells[j,i]:='0';
    end;

end;



procedure TForm2.N1Click(Sender: TObject);                //рандомное заполнение матриц
begin
  RadioButton1.Enabled := true;
  RadioButton2.Enabled := true;
  Button2.Enabled := true;
  StringGrid1.Options := StringGrid1.Options-[goEditing];
  for i := 0 to StringGrid1.RowCount + 1  do
    for j := 0 to StringGrid1.ColCount + 1  do
      begin
        StringGrid1.Cells[j,i] := IntToStr(random(100));
      end;
  StringGrid2.Options := StringGrid2.Options-[goEditing];
  for i := 0 to StringGrid1.RowCount + 1  do
    for j := 0 to StringGrid1.ColCount + 1  do
      begin
        StringGrid2.Cells[j,i] := IntToStr(random(100));
      end;
end;


procedure TForm2.N2Click(Sender: TObject);               //ручное заполнение матриц
begin
  RadioButton1.Enabled := true;
  RadioButton2.Enabled := true;
  Button2.Enabled := true;
StringGrid1.Options := StringGrid1.Options+[goEditing];
StringGrid2.Options := StringGrid2.Options+[goEditing];
for i := 0 to StringGrid1.RowCount do
  for j := 0 to StringGrid1.ColCount do
    begin
      StringGrid1.Cells[j,i] := '';
      StringGrid2.Cells[j,i] := '';
    end;
end;

procedure TForm2.RadioButton1Click(Sender: TObject);
begin
button1.Enabled := true;
Label1.Visible := true ;
Label2.Visible := false;
end;

procedure TForm2.RadioButton2Click(Sender: TObject);
begin
button1.Enabled := true;
Label2.Visible := true ;
Label1.Visible := false ;
end;

procedure TForm2.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  stringgrid1.RowCount:=strtoint(edit1.Text);
  stringgrid2.RowCount:=strtoint(edit1.Text);
  stringgrid3.RowCount:=strtoint(edit1.Text);
  stringgrid1.Height:=27*strtoint(edit1.Text);
  stringgrid2.Height:=27*strtoint(edit1.Text);
  stringgrid3.Height:=27*strtoint(edit1.Text);
end;

procedure TForm2.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
  StringGrid1.ColCount := strtoint(edit2.Text);
  StringGrid2.ColCount := strtoint(edit2.Text);
  StringGrid3.ColCount := strtoint(edit2.Text);
  stringgrid3.RowCount := strtoint(edit1.Text);
   stringgrid1.Width:=37*strtoint(edit2.Text);
  stringgrid2.Width:=37*strtoint(edit2.Text);
  stringgrid3.Width:=37*strtoint(edit2.Text);
end;

end.
