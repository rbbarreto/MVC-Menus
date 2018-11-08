unit Menus.Controller.Conexoes.Factory.Conexao;

interface

uses
    Menus.Controller.Conexoes.interfaces
  , Menus.Model.Conexoes.Interfaces
  , Menus.Model.Conexoes.ConexaoFiredac
  ,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.FMXUI.Wait,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FMX.Types,
  FMX.Controls;

type
  TControllerConexoesFactoryConexao = class(TInterfacedObject,
    iControllerFactoryConexao)
  public
    constructor create;
    destructor destroy; override;
    class function New: iControllerFactoryConexao;
    function Conexao: iModelConexao;
  end;

implementation

uses Menus.Model.Conexoes.Factory.conexao;


function TControllerConexoesFactoryConexao.Conexao: iModelConexao;
begin
  Result := TModelConexaoFactoryConexoes.New
                   .ConexaoFireDac
                   .Paramatros
                     .DataBase('/var/www/fbirdconect/ricardo.fdb')
                     .UserName('RICARDO')
                     .PassWord('ricardo20102011')
                     .DriverID('fB')
                     .Server('conectvideo.ddns.net')
                     .Protocol('TCPIP')
                     .Port(3050)
                   .EndParametros
                   .Conectar;
end;

constructor TControllerConexoesFactoryConexao.create;
begin

end;

destructor TControllerConexoesFactoryConexao.destroy;
begin

  inherited;
end;

class function TControllerConexoesFactoryConexao.New: iControllerFactoryConexao;
begin
  result := self.create;
end;

end.
