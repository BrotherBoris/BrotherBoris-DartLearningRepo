abstract class Funcionario{
  String? nome;
  double? salarioMinimo;
  int? quantidadeDeSalarios;

  Funcionario(String nome, int quantidadeDeSalarios){
    this.nome = nome;
    this.quantidadeDeSalarios = quantidadeDeSalarios;
    this.salarioMinimo = 1090;
  }

  void calcularSalario();

}

class Gerente extends Funcionario{
  double? bonusMensal;

  //construtor com parametro opcicional com valor default 0
  Gerente(super.nome, super.quantidadeDeSalarios, [double bonusMensal = 0]){
    this.bonusMensal = bonusMensal;
  }

  @override
  void calcularSalario() {
    double salarioFinal = (salarioMinimo! * quantidadeDeSalarios!)+bonusMensal!;
    print("o salario do(a) gerente $nome será: R\$$salarioFinal");
  }

}

class Analista extends Funcionario{
  Analista(super.nome, super.valorVenda);

  @override
  void calcularSalario() {
    double salarioFinal = (salarioMinimo! * quantidadeDeSalarios!);
    print("o salario do(a) analista $nome será: R\$$salarioFinal");
  }

}

class Programador extends Funcionario{
  double? performanceBonusPorcentagem = 0;
  //recebera um bonus de acordo com a porcentagem da performance sobre um salario minimo
  //10% de performance mensal (recebera um adicional de 10% de um salario minimo)
  
  //operador [] deixa opicional
  Programador(super.nome, super.quantidadeDeSalarios, [double? performanceBonusPorcentagem]){
    this.performanceBonusPorcentagem = performanceBonusPorcentagem;
  }

  @override
  void calcularSalario() {
    double salarioFinal = (salarioMinimo! * quantidadeDeSalarios!);
    //se nao for null, a performance foi inserida, se for 0 ou menos, não recebera bonus
    if(performanceBonusPorcentagem != null){
      if(performanceBonusPorcentagem! > 0){
        double porcentagem = performanceBonusPorcentagem!/100;
        print(porcentagem);
        salarioFinal += (salarioMinimo! * porcentagem);
      }
    }
    print("o salario do(a) programador(a) $nome será: R\$$salarioFinal");
  }

}

void main() {
  Gerente gerente = Gerente("Rogerio", 4);

  Programador programador = Programador("jota", 1, 5);

  gerente.calcularSalario();
  print("///");
  programador.calcularSalario();
}