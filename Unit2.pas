unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    StringGrid1: TStringGrid;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form2: TForm2;
  i , j ,b: integer;
  a: real;

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




procedure TForm2.ComboBox1Change(Sender: TObject);
begin
    case ComboBox1.ItemIndex of
    0:
    begin
      StringGrid1.Height := 54 ;
      StringGrid1.RowCount := 2;
      StringGrid2.Height := 54 ;
      StringGrid2.RowCount := 2;
      StringGrid3.Height := 54 ;
      StringGrid3.RowCount := 2;
    end;
    1:
    begin
      StringGrid1.Height := 79 ;
      StringGrid1.RowCount := 3;
      StringGrid2.Height := 97 ;
      StringGrid2.RowCount := 3;
      StringGrid3.Height := 97 ;
      StringGrid3.RowCount := 3 ;
    end;
    2:
    begin
      StringGrid1.Height := 104 ;
      StringGrid1.RowCount := 4 ;
      StringGrid2.Height := 129 ;
      StringGrid2.RowCount := 4 ;
      StringGrid3.Height := 129 ;
      StringGrid3.RowCount := 4 ;
    end;
    3:
    begin
      StringGrid1.Height := 129 ;
      StringGrid1.RowCount := 5 ;
      StringGrid2.Height := 160 ;
      StringGrid2.RowCount := 5 ;
      StringGrid3.Height := 160 ;
      StringGrid3.RowCount := 5 ;
    end;
    4:
    begin
      StringGrid1.Height := 154 ;
      StringGrid1.RowCount := 6 ;
      StringGrid2.Height := 191 ;
      StringGrid2.RowCount := 6 ;
      StringGrid3.Height := 191 ;
      StringGrid3.RowCount := 6 ;
    end;
end;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
begin
   case ComboBox2.ItemIndex of
   0:
   begin
   StringGrid1.Width := 54 ;
   StringGrid1.ColCount := 2 ;
   StringGrid2.Width := 66 ;
   StringGrid2.ColCount := 2 ;
   StringGrid3.Width := 66 ;
   StringGrid3.ColCount := 2 ;
   end;
   1:
   begin
   StringGrid1.Width := 79;
   StringGrid1.ColCount := 3 ;
   StringGrid2.Width := 97;
   StringGrid2.ColCount := 3 ;
   StringGrid3.Width := 97;
   StringGrid3.ColCount := 3 ;
   end;
   2:
   begin
   StringGrid1.Width := 104;
   StringGrid1.ColCount := 4 ;
   StringGrid2.Width := 127;
   StringGrid2.ColCount := 4 ;
   StringGrid3.Width := 127;
   StringGrid3.ColCount := 4 ;
   end;
   3:
   begin
   StringGrid1.Width := 129 ;
   StringGrid1.ColCount := 5 ;
   StringGrid2.Width := 160 ;
   StringGrid2.ColCount := 5 ;
   StringGrid3.Width := 160 ;
   StringGrid3.ColCount := 5 ;
   end;
   4 :
   begin
   StringGrid1.Width := 154;
   StringGrid1.ColCount := 6;
   StringGrid2.Width := 190;
   StringGrid2.ColCount := 6;
   StringGrid3.Width := 190;
   StringGrid3.ColCount := 6;
   end;
end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   begin
     for i:= 0 to stringgrid3.RowCount-1 do  // обнуляем все матрицы при закрытии формы
     for j:= 0 to stringgrid3.ColCount-1 do
     Stringgrid3.Cells[j,i]:=' ';
    end;
   begin
    for i:= 0 to stringgrid2.RowCount-1 do
    for j:= 0 to stringgrid2.ColCount-1 do
    Stringgrid2.Cells[j,i]:=' ';
   end;
   begin
    for i:= 0 to stringgrid1.RowCount-1 do
    for j:= 0 to stringgrid1.ColCount-1 do
    Stringgrid1.Cells[j,i]:=' ';
   end;
    begin
     ComboBox1.ItemIndex := 0;
     StringGrid1.RowCount := 2;
     StringGrid1.Height := 66 ;
     StringGrid2.RowCount := 2;
     StringGrid2.Height := 66 ;
     StringGrid3.RowCount := 2;
     StringGrid3.Height := 66 ;
    end;
    begin
      ComboBox2.ItemIndex := 0 ;
      StringGrid1.Width := 66 ;
      StringGrid1.ColCount := 2 ;
      StringGrid2.Width := 66 ;
      StringGrid2.ColCount := 2 ;
      StringGrid3.Width := 66 ;
      StringGrid3.ColCount := 2 ;

    end;
        radioButton1.Checked := False;
        radioButton2.Checked := False;
        RadioButton1.Enabled := False;
        RadioButton2.Enabled := False;
        Label1.Visible := false ;
        Label2.Visible := false ;
        Button1.Enabled := false ;
        Button2.Enabled := false ;
end;







procedure TForm2.N1Click(Sender: TObject);                //рандомное заполнение матриц
begin
  RadioButton1.Enabled := true;
  RadioButton2.Enabled := true;
  Button2.Enabled := true;
  StringGrid1.Options := StringGrid1.Options-[goEditing];
  for i := 0 to StringGrid1.RowCount - 1   do
    for j := 0 to StringGrid1.ColCount -1   do
      begin
        StringGrid1.Cells[j,i] := IntToStr(random(100));
      end;
  StringGrid2.Options := StringGrid2.Options-[goEditing];
  for i := 0 to StringGrid1.RowCount -1   do
    for j := 0 to StringGrid1.ColCount -1  do
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


end.
