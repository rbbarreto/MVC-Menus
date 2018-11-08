unit Menus.Controller.Conexoes.Factory.DataSet;

interface

uses
  Menus.Controller.Conexoes.interfaces, Menus.Model.Conexoes.Interfaces;

type
  TControllerFactoryDataSet = class(TInterfacedObject,
    iControllerFactoryDataSet)
  public
    constructor create;
    destructor destroy; override;
    class function New: iControllerFactoryDataSet;
    function DataSet(Conexao: iModelConexao): iModelDataSet;
  end;

implementation

uses
  Menus.Model.Conexoes.Factory.DataSet;

{ TControllerFactoryDataSet }

constructor TControllerFactoryDataSet.create;
begin

end;

function TControllerFactoryDataSet.DataSet(Conexao: iModelConexao): iModelDataSet;
begin
  Result := TModelConexoesFactoryDataSet
              .New
               .DataSetFireDac(Conexao);
end;

destructor TControllerFactoryDataSet.destroy;
begin

  inherited;
end;

class function TControllerFactoryDataSet.New: iControllerFactoryDataSet;
begin
  result := self.create;
end;

end.
