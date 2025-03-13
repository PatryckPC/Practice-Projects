let operando1 = '';
let operando2 = '';
let operador = '';
let resultado = '';

function agregarValor(valor) {
  resultado = '';
  if (operador === '') {
    operando1 += valor;
    document.getElementById('resultado').value = operando1;
  } else {
    operando2 += valor;
    document.getElementById('resultado').value = operando2;
  }
}

function operar(op) {
  operador = op;
}

function calcular() {
  switch (operador) {
    case '+':
      resultado = parseFloat(operando1) + parseFloat(operando2);
      break;
    case '-':
      resultado = parseFloat(operando1) - parseFloat(operando2);
      break;
    case '*':
      resultado = parseFloat(operando1) * parseFloat(operando2);
      break;
    case '/':
      resultado = parseFloat(operando1) / parseFloat(operando2);
      break;
    default:
      resultado = '';
  }
  document.getElementById('resultado').value = resultado;
  operando1 = resultado.toString();
  operando2 = '';
  operador = '';
}

function borrar() {
  operando1 = '';
  operando2 = '';
  operador = '';
  resultado = '';
  document.getElementById('resultado').value = '';
}
