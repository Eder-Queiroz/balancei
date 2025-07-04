# Relatório de Cronograma - Projeto Balancei

**Equipe:** Eder Queiroz, Carlos Alexandre, Luiz Folador, Nicollas Fernandes  
**Data:** 4 de julho de 2025  
**Disciplina:** PDM 2025/1

## 1. Resumo Executivo

Este relatório apresenta uma análise comparativa entre o cronograma inicialmente planejado para o projeto Balancei e sua execução real, identificando as principais discrepâncias e justificativas para os atrasos na implementação de funcionalidades específicas.

## 2. Cronograma Inicial vs. Executado

### 2.1 Atividades Concluídas Conforme Planejado

| Atividade | Período Planejado | Período Executado | Status |
|-----------|-------------------|-------------------|---------|
| Levantamento de Requisitos | SEM1-SEM2 | SEM1-SEM2 | ✅ Concluído |
| Definição do Escopo | SEM1-SEM2 | SEM1-SEM2 | ✅ Concluído |
| Design e Prototipação | SEM3-SEM4 | SEM3-SEM4 | ✅ Concluído |
| Implementação (Core) | SEM5-SEM7 | SEM5-SEM8 | ✅ Concluído* |
| Testes e Ajustes | SEM8-SEM9 | SEM9-SEM10 | ✅ Concluído |
| Documentação | SEM10-SEM11 | SEM11-SEM12 | ✅ Concluído |
| Apresentação Final | SEM12 | SEM12 | ✅ Concluído |

*\*Implementação das funcionalidades core concluída com atraso de 1 semana*

### 2.2 Funcionalidades Não Implementadas

| Funcionalidade | Previsão Inicial | Status Atual | Justificativa |
|----------------|------------------|--------------|---------------|
| Gráficos e Relatórios Básicos | SEM5-SEM6 | ❌ Não implementado | Priorização de funcionalidades core |
| Controle de Investimentos | SEM6-SEM7 | ❌ Não implementado | Complexidade de modelagem financeira |
| Sincronização com Open Finance | SEM6-SEM7 | ❌ Não implementado | Complexidade técnica subestimada |
| Inteligência Artificial | SEM7-SEM8 | ❌ Não implementado | Dependências externas e escopo ampliado |

## 3. Análise Detalhada dos Atrasos

### 3.1 Gráficos e Relatórios Básicos

**Período Planejado:** Semanas 5-6  
**Status:** Não implementado  

**Justificativas:**

1. **Priorização de Funcionalidades Core:** A equipe optou por focar nas funcionalidades básicas de CRUD (Create, Read, Update, Delete) de transações financeiras antes de implementar visualizações gráficas.

2. **Design de UX/UI:** A criação de gráficos úteis e intuitivos demandou mais tempo de design e prototipação do que previsto.

### 3.2 Controle de Investimentos

**Período Planejado:** Semanas 6-7  
**Status:** Não implementado  

**Justificativas:**

1. **Modelagem Financeira Complexa:** A implementação de controle de investimentos exigiu modelagem de dados mais sofisticada para diferentes tipos de ativos (ações, fundos, renda fixa, etc.).

2. **Atualizações de Preços:** Para ser útil, o controle de investimentos necessitaria integração com APIs de cotações, criando dependências externas não previstas.

3. **Cálculos Financeiros:** Implementar cálculos de rentabilidade, impostos e performance de investimentos mostrou-se mais complexo que o estimado inicialmente.

### 3.3 Sincronização com Open Finance

**Período Planejado:** Semanas 6-7  
**Status:** Não implementado  

**Justificativas:**

1. **Complexidade Regulatória:** A integração com Open Finance requer conformidade com regulamentações específicas do Banco Central do Brasil, incluindo certificações de segurança e protocolos de autenticação OAuth2 que se mostraram mais complexos que o inicialmente estimado.

2. **Dependências Externas:** A necessidade de homologação junto às instituições financeiras e APIs de terceiros criou dependências externas que não puderam ser controladas pela equipe.

3. **Questões de Segurança:** A implementação segura de dados bancários sensíveis exigiu estudos aprofundados sobre criptografia e proteção de dados que ultrapassaram o tempo estimado.

4. **Foco no MVP:** A equipe optou por priorizar a entrega de um produto mínimo viável (MVP) funcional com as características core do aplicativo.

### 3.4 Inteligência Artificial para Análise Financeira

**Período Planejado:** Semanas 7-8  
**Status:** Não implementado  

**Justificativas:**

1. **Escopo Subestimado:** A implementação de IA para análises financeiras revelou-se mais complexa, envolvendo:
   - Modelagem de dados financeiros
   - Treinamento de modelos específicos para padrões de gastos brasileiros
   - Integração com TensorFlow Lite ou APIs externas

2. **Recursos Computacionais:** A necessidade de processamento de dados para IA em dispositivos móveis apresentou desafios de performance que requeriam otimizações não previstas.

3. **Qualidade dos Dados:** Para implementar IA efetiva, seria necessário um volume significativo de dados históricos de usuários, que não estava disponível na fase inicial do projeto.

4. **Priorização de Funcionalidades:** A equipe decidiu focar nas funcionalidades essenciais de controle financeiro offline antes de implementar recursos avançados.

## 4. Impacto no Projeto

### 4.1 Funcionalidades Core Entregues

Apesar dos atrasos em funcionalidades avançadas, o projeto entregou com sucesso:

- ✅ Cadastro e categorização de receitas/despesas
- ✅ Visualização de histórico financeiro
- ✅ Funcionamento offline completo
- ✅ Interface intuitiva e responsiva

### 4.2 Valor Entregue

O aplicativo em sua versão atual atende aos requisitos fundamentais estabelecidos na concepção do projeto, oferecendo uma solução robusta para controle financeiro pessoal offline.

## 5. Lições Aprendidas

### 5.1 Planejamento

1. **Estimativas Conservadoras:** Funcionalidades que envolvem integrações externas devem ter estimativas mais conservadoras.

2. **Dependências Críticas:** Identificar e mapear dependências externas desde o início do projeto.

3. **Priorização Clara:** Definir claramente o MVP e funcionalidades secundárias para melhor gestão de escopo.

### 5.2 Execução

1. **Iterações Menores:** Implementar funcionalidades em ciclos menores permite melhor controle e ajustes.

2. **Validação Contínua:** Testar integrações complexas em fases iniciais do projeto.

3. **Flexibilidade de Escopo:** Manter flexibilidade para ajustar escopo conforme complexidades emergem.

## 6. Próximos Passos

### 6.1 Funcionalidades Futuras (Pós-TCD)

As funcionalidades não implementadas foram reclassificadas como melhorias futuras:

1. **Gráficos e Relatórios** - Versão 1.1 (estimativa: 2-3 semanas adicionais)
2. **Controle de Investimentos** - Versão 1.2 (estimativa: 4-5 semanas adicionais)
3. **Open Finance Integration** - Versão 2.0 (estimativa: 6-8 semanas adicionais)
4. **IA para Análises** - Versão 2.1 (estimativa: 4-6 semanas adicionais)

### 6.2 Roadmap Proposto

- **Fase 1:** Gráficos e visualizações básicas
- **Fase 2:** Controle básico de investimentos
- **Fase 3:** Refinamentos de UX/UI baseados em feedback
- **Fase 4:** Implementação de sincronização cloud básica
- **Fase 5:** Integração Open Finance
- **Fase 6:** Recursos de IA

## 7. Conclusão

Embora o projeto não tenha entregado 100% das funcionalidades planejadas inicialmente, conseguiu implementar com sucesso todas as características essenciais propostas. Os atrasos nas funcionalidades de Open Finance e IA foram resultado de subestimação de complexidade técnica e regulatória, mas não comprometeram a viabilidade e utilidade do produto final.

O Balancei, em sua versão atual, cumpre efetivamente seu objetivo principal de oferecer uma ferramenta acessível e intuitiva para gestão financeira pessoal, estabelecendo uma base sólida para futuras expansões de funcionalidades.

---

*Este relatório foi elaborado como parte dos entregáveis do TCD - Primeira Etapa da disciplina PDM 2025/1.*