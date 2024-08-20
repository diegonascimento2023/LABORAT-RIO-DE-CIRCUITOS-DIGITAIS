# Projetos do Laboratório de Circuitos Digitais - UFERSA

Este repositório contém os projetos de circuitos digitais desenvolvidos durante a disciplina de Laboratório de Circuitos Digitais na UFERSA - Campus Pau dos Ferros, sob a orientação do Professor Pedro Thiago Valério de Souza. Cada projeto explora diferentes metodologias de design em Verilog, implementadas na FPGA Cyclone DE2-115. O repositório está organizado para fornecer documentação clara e resultados de simulação para fins educacionais.

## Visão Geral dos Projetos

### 1. Projeto 1: **Descrição Estrutural em Verilog**
- **Objetivo:** Projetar um circuito digital para controlar a operação de quatro máquinas de alta potência, permitindo que no máximo duas funcionem simultaneamente, respeitando uma ordem de prioridade específica.
- **Principais Etapas:**
  - Determinar a tabela verdade.
  - Obter expressões lógicas para os sinais de controle (C1, C2, C3, C4).
  - Projetar o circuito lógico e simplificá-lo se possível.
  - Implementar o circuito usando a abordagem estrutural em Verilog.
  - Simular e implementar o circuito na FPGA.
- **Arquivos:** Inclui código Verilog, projeto Quartus, resultados de simulação e detalhes de implementação.

### 2. Projeto 2: **Descrição Hierárquica em Verilog**
- **Objetivo:** Implementar um somador BCD que realiza a correção quando o resultado excede 9 ou quando há carry-out.
- **Principais Etapas:**
  - Projetar um circuito lógico combinacional para identificar quando a correção é necessária.
  - Implementar um somador BCD completo usando design hierárquico.
  - Simular e testar o circuito na FPGA.
- **Arquivos:** Código Verilog, projeto Quartus, arquivos de testbench e resultados de simulação.

### 3. Projeto 3: **Abordagem Dataflow em Verilog (Parte 1)**
- **Objetivo:** Desenvolver uma Unidade Lógica Aritmética (ULA) de 4 bits com operações como adição, subtração, AND e OR, exibindo os resultados em um display de sete segmentos.
- **Principais Etapas:**
  - Projetar um somador e subtrator de 4 bits usando as abordagens dataflow e hierárquica.
  - Implementar circuitos bitwise AND/OR.
  - Projetar um multiplexador 4x1 e um decodificador de sete segmentos.
  - Integrar os componentes na ULA.
- **Arquivos:** Código Verilog, projeto Quartus, resultados de simulação.

### 4. Projeto 4: **Abordagem Dataflow em Verilog (Parte 2)**
- **Objetivo:** Implementar um sistema para calcular o discriminante de uma equação quadrática usando Verilog.
- **Principais Etapas:**
  - Implementar todos os componentes (multiplicadores, comparadores, subtratores) usando a abordagem dataflow.
  - Integrar os componentes em um sistema completo.
  - Simular e implementar o sistema na FPGA.
- **Arquivos:** Código Verilog, projeto Quartus, resultados de simulação.

### 5. Projeto 5: **Abordagem Comportamental em Verilog**
- **Objetivo:** Criar um sistema de exibição deslizante que mostre "UFERSA" usando a abordagem comportamental em Verilog.
- **Principais Etapas:**
  - Implementar um registrador de 3 bits e um multiplexador 2x1.
  - Projetar um decodificador de display de sete segmentos.
  - Implementar o sistema de exibição deslizante com um divisor de clock.
  - Simular e testar o sistema na FPGA.
- **Arquivos:** Código Verilog, projeto Quartus, resultados de simulação.

## Contribuidores
- [**Diego Nascimento de Oliveira** ]([https://github.com/diegonoliveira](https://github.com/diegonascimento2023))
- [**Wiliane da Silva Lima** ](https://github.com/diegonoliveira)



