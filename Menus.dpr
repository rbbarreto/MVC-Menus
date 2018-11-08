program Menus;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.principal in 'View\Menus.principal.pas' {frmMenus},
  Menus.Controller.ListBox.Interfaces in 'Controller\Menus\Menus.Controller.ListBox.Interfaces.pas',
  Menus.Controller.ListBox.Itens.Factory in 'Controller\Menus\Menus.Controller.ListBox.Itens.Factory.pas',
  Menus.Controller.ListBox.Factory in 'Controller\Menus\Menus.Controller.ListBox.Factory.pas',
  Menus.Controller.ListBox.Itens.Default in 'Controller\Menus\Menus.Controller.ListBox.Itens.Default.pas',
  Menus.Controller.ListBox.Default in 'Controller\Menus\Menus.Controller.ListBox.Default.pas',
  Menus.Controller.ListBox.Itens.Produto in 'Controller\Menus\Menus.Controller.ListBox.Itens.Produto.pas',
  Menus.Controller.ListBox.Principal in 'Controller\Menus\Menus.Controller.ListBox.Principal.pas',
  Menus.Controller.ListBox.Itens.Cliente in 'Controller\Menus\Menus.Controller.ListBox.Itens.Cliente.pas',
  Menus.View.Produtos in 'View\Menus.View.Produtos.pas' {frmProdutos},
  Menus.View.Clientes in 'View\Menus.View.Clientes.pas' {FrmClientes},
  Menus.Controller.Forms.Default in 'Controller\Forms\Menus.Controller.Forms.Default.pas',
  Menus.Model.Conexoes.Interfaces in 'Model\Conexoes\Menus.Model.Conexoes.Interfaces.pas',
  Menus.Model.Conexoes.ConexaoFiredac in 'Model\Conexoes\Menus.Model.Conexoes.ConexaoFiredac.pas',
  Menus.Model.Conexoes.TableFiredac in 'Model\Conexoes\Menus.Model.Conexoes.TableFiredac.pas',
  Menus.Model.Conexoes.Factory.conexao in 'Model\Conexoes\Menus.Model.Conexoes.Factory.conexao.pas',
  Menus.Model.Conexoes.Factory.DataSet in 'Model\Conexoes\Menus.Model.Conexoes.Factory.DataSet.pas',
  Menus.Model.Entity.interfaces in 'Model\Entity\Menus.Model.Entity.interfaces.pas',
  Menus.Model.Entity.Produtos in 'Model\Entity\Menus.Model.Entity.Produtos.pas',
  Menus.Model.Entity.Factory in 'Model\Entity\Menus.Model.Entity.Factory.pas',
  Menus.Controller.Conexoes.interfaces in 'Controller\Conexoes\Menus.Controller.Conexoes.interfaces.pas',
  Menus.Controller.Conexoes.Factory.Conexao in 'Controller\Conexoes\Menus.Controller.Conexoes.Factory.Conexao.pas',
  Menus.Controller.Conexoes.Factory.DataSet in 'Controller\Conexoes\Menus.Controller.Conexoes.Factory.DataSet.pas',
  Menus.Controller.Entity.interfaces in 'Controller\Entity\Menus.Controller.Entity.interfaces.pas',
  Menus.Controller.Entity.Produtos in 'Controller\Entity\Menus.Controller.Entity.Produtos.pas',
  Menus.Controller.Entity.Factory in 'Controller\Entity\Menus.Controller.Entity.Factory.pas',
  Menus.View.Fornecedor in 'View\Menus.View.Fornecedor.pas' {frmFornecedor},
  Menus.Controller.ListBox.Itens.Fornecedor in 'Controller\Menus\Menus.Controller.ListBox.Itens.Fornecedor.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenus, frmMenus);
  Application.CreateForm(TfrmFornecedor, frmFornecedor);
  Application.Run;
end.
