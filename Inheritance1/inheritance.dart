abstract class Funcionario{
  String? nome;
  double? valorVenda;

  Funcionario(String nome, double valorVenda){
    this.nome = nome;
    this.valorVenda = valorVenda;
  }

  void calcularSalario();

}

class Gerente extends Funcionario{
  Gerente(super.nome, super.valorVenda);

  @override
  void calcularSalario() {
    double salario = valorVenda! * 0.20;
    print("o salario de $nome será R\$$salario");
  }

}

class Analista extends Funcionario{
  Analista(super.nome, super.valorVenda);

  @override
  void calcularSalario() {
    // TODO: implement calcularSalario
  }

}

class Programador extends Funcionario{
  Programador(super.nome, super.valorVenda);

  @override
  void calcularSalario() {
    // TODO: implement calcularSalario
  }

}

void main() {
  Gerente funcionario = Gerente("Rogerio", 500);

  funcionario.calcularSalario();
}