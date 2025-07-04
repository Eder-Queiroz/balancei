# Relatório de Cronograma - Projeto Balancei

**Equipe:** Eder Queiroz, Carlos Alexandre, Luiz Folador, Nicollas Fernandes  
**Data:** 4 de julho de 2025  
**Disciplina:** PDM 2025/1

## 1. Resumo Executivo

Este relatório apresenta uma análise comparativa entre o cronograma inicialmente planejado para o projeto Balancei e sua execução real, identificando as principais discrepâncias e justificativas para os atrasos na implementação de funcionalidades específicas.

## 2. Metodologia de Desenvolvimento e Divisão de Trabalho

### 2.1 Processo Colaborativo

O projeto foi desenvolvido seguindo uma abordagem colaborativa, onde as decisões técnicas foram tomadas em conjunto durante reuniões regulares da equipe. Embora a distribuição de commits possa parecer desigual, o processo de desenvolvimento envolveu:

- **Sessões de pair programming** - Duas ou mais pessoas trabalhando juntas em uma única máquina
- **Reuniões de planejamento** - Decisões arquiteturais tomadas em conjunto
- **Revisões de código** - Análise e sugestões feitas verbalmente durante o desenvolvimento
- **Brainstorming técnico** - Discussões sobre escolhas de tecnologia e implementação

### 2.2 Decisões Técnicas Colaborativas

Durante o desenvolvimento, diversas decisões técnicas foram tomadas colaborativamente:

#### 2.2.1 Escolha do Banco de Dados
**Período:** Semanas 3-4  
**Decisão:** Migração de Hive para SQLite  
**Processo:** Inicialmente planejamos usar Hive para persistência de dados, mas após análise técnica conjunta da equipe, optamos por SQLite devido a:
- Melhor performance em dispositivos móveis
- Menor complexidade de setup
- Maior estabilidade e confiabilidade
- Suporte nativo melhor no Flutter

Esta decisão foi tomada colaborativamente após testes práticos e discussões técnicas envolvendo todos os membros da equipe.

#### 2.2.2 Arquitetura de Estados
**Período:** Semanas 4-5  
**Decisão:** Implementação de gerenciamento de estado  
**Processo:** Discussões em equipe levaram à escolha da arquitetura de gerenciamento de estado mais adequada para o projeto, considerando escalabilidade e manutenibilidade.

#### 2.2.3 Design de Interface
**Período:** Semanas 3-6  
**Decisão:** Refinamentos de UX/UI baseados em feedback coletivo  
**Processo:** Iterações constantes no design da interface foram realizadas com base em sugestões e feedback de todos os membros da equipe.

## 3. Cronograma Inicial vs. Executado

### 3.1 Atividades Concluídas Conforme Planejado

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

### 3.2 Funcionalidades Não Implementadas

| Funcionalidade | Previsão Inicial | Status Atual | Justificativa |
|----------------|------------------|--------------|---------------|
| Gráficos e Relatórios Básicos | SEM5-SEM6 | ❌ Não implementado | Priorização de funcionalidades core |
| Controle de Investimentos | SEM6-SEM7 | ❌ Não implementado | Complexidade de modelagem financeira |
| Sincronização com Open Finance | SEM6-SEM7 | ❌ Não implementado | Complexidade técnica subestimada |
| Inteligência Artificial | SEM7-SEM8 | ❌ Não implementado | Dependências externas e escopo ampliado |

## 4. Análise Detalhada dos Atrasos

### 4.1 Gráficos e Relatórios Básicos

**Período Planejado:** Semanas 5-6  
**Status:** Não implementado  

**Justificativas:**

1. **Priorização de Funcionalidades Core:** A equipe optou por focar nas funcionalidades básicas de CRUD (Create, Read, Update, Delete) de transações financeiras antes de implementar visualizações gráficas.

2. **Design de UX/UI:** A criação de gráficos úteis e intuitivos demandou mais tempo de design e prototipação do que previsto.

**Processo Colaborativo:** Esta decisão foi tomada em reunião de equipe na semana 5, onde todos os membros concordaram em priorizar a estabilidade das funcionalidades básicas.

### 4.2 Controle de Investimentos

**Período Planejado:** Semanas 6-7  
**Status:** Não implementado  

**Justificativas:**

1. **Modelagem Financeira Complexa:** A implementação de controle de investimentos exigiu modelagem de dados mais sofisticada para diferentes tipos de ativos (ações, fundos, renda fixa, etc.).

2. **Atualizações de Preços:** Para ser útil, o controle de investimentos necessitaria integração com APIs de cotações, criando dependências externas não previstas.

3. **Cálculos Financeiros:** Implementar cálculos de rentabilidade, impostos e performance de investimentos mostrou-se mais complexo que o estimado inicialmente.

**Processo Colaborativo:** Após pesquisa conjunta sobre APIs de cotações e análise de viabilidade técnica, a equipe decidiu unanimemente postergar esta funcionalidade.

### 4.3 Sincronização com Open Finance

**Período Planejado:** Semanas 6-7  
**Status:** Não implementado  

**Justificativas:**

1. **Complexidade Regulatória:** A integração com Open Finance requer conformidade com regulamentações específicas do Banco Central do Brasil, incluindo certificações de segurança e protocolos de autenticação OAuth2 que se mostraram mais complexos que o inicialmente estimado.

2. **Dependências Externas:** A necessidade de homologação junto às instituições financeiras e APIs de terceiros criou dependências externas que não puderam ser controladas pela equipe.

3. **Questões de Segurança:** A implementação segura de dados bancários sensíveis exigiu estudos aprofundados sobre criptografia e proteção de dados que ultrapassaram o tempo estimado.

4. **Foco no MVP:** A equipe optou por priorizar a entrega de um produto mínimo viável (MVP) funcional com as características core do aplicativo.

**Processo Colaborativo:** Todos os membros da equipe participaram da pesquisa sobre regulamentações do Open Finance e das discussões sobre viabilidade técnica dentro do prazo disponível.

### 4.4 Inteligência Artificial para Análise Financeira

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

## 5. Reuniões e Marcos Colaborativos

### 5.1 Reuniões de Planejamento

| Data | Participantes | Tópicos Discutidos | Decisões Tomadas |
|------|---------------|-------------------|------------------|
| SEM 3 | Todos | Arquitetura inicial | Escolha do padrão de desenvolvimento |
| SEM 4 | Todos | Banco de dados | Migração Hive → SQLite |
| SEM 5 | Todos | Priorização | Foco em funcionalidades core |
| SEM 6 | Todos | Integração Open Finance | Postergação da funcionalidade |
| SEM 8 | Todos | Revisão de escopo | Confirmação do MVP |

### 5.2 Sessões de Pair Programming

Durante o desenvolvimento, foram realizadas sessões de pair programming onde múltiplos membros trabalhavam juntos:

- **Implementação do banco de dados** - Semanas 4-5
- **Desenvolvimento da interface principal** - Semanas 5-6
- **Testes e debugging** - Semanas 8-9
- **Refinamentos finais** - Semanas 10-11

## 6. Impacto no Projeto

### 6.1 Funcionalidades Core Entregues

Apesar dos atrasos em funcionalidades avançadas, o projeto entregou com sucesso:

- ✅ Cadastro e categorização de receitas/despesas
- ✅ Visualização de histórico financeiro
- ✅ Funcionamento offline completo
- ✅ Interface intuitiva e responsiva

### 6.2 Valor Entregue

O aplicativo em sua versão atual atende aos requisitos fundamentais estabelecidos na concepção do projeto, oferecendo uma solução robusta para controle financeiro pessoal offline.

## 7. Lições Aprendidas

### 7.1 Planejamento

1. **Estimativas Conservadoras:** Funcionalidades que envolvem integrações externas devem ter estimativas mais conservadoras.

2. **Dependências Críticas:** Identificar e mapear dependências externas desde o início do projeto.

3. **Priorização Clara:** Definir claramente o MVP e funcionalidades secundárias para melhor gestão de escopo.

### 7.2 Execução

1. **Iterações Menores:** Implementar funcionalidades em ciclos menores permite melhor controle e ajustes.

2. **Validação Contínua:** Testar integrações complexas em fases iniciais do projeto.

3. **Flexibilidade de Escopo:** Manter flexibilidade para ajustar escopo conforme complexidades emergem.

### 7.3 Colaboração

1. **Decisões Documentadas:** Registrar decisões técnicas tomadas em conjunto facilita justificativas posteriores.

2. **Pair Programming:** Trabalhar em dupla ou grupo aumenta a qualidade do código e compartilha conhecimento.

3. **Comunicação Constante:** Reuniões regulares mantêm todos alinhados com o progresso do projeto.

## 8. Próximos Passos

### 8.1 Funcionalidades Futuras (Pós-TCD)

As funcionalidades não implementadas foram reclassificadas como melhorias futuras:

1. **Gráficos e Relatórios** - Versão 1.1 (estimativa: 2-3 semanas adicionais)
2. **Controle de Investimentos** - Versão 1.2 (estimativa: 4-5 semanas adicionais)
3. **Open Finance Integration** - Versão 2.0 (estimativa: 6-8 semanas adicionais)
4. **IA para Análises** - Versão 2.1 (estimativa: 4-6 semanas adicionais)

### 8.2 Roadmap Proposto

- **Fase 1:** Gráficos e visualizações básicas
- **Fase 2:** Controle básico de investimentos
- **Fase 3:** Refinamentos de UX/UI baseados em feedback
- **Fase 4:** Implementação de sincronização cloud básica
- **Fase 5:** Integração Open Finance
- **Fase 6:** Recursos de IA

## 9. Conclusão

Embora o projeto não tenha entregue 100% das funcionalidades planejadas inicialmente, conseguiu implementar com sucesso todas as características essenciais propostas. Os atrasos nas funcionalidades de Open Finance e IA foram resultado de subestimação de complexidade técnica e regulatória, mas não comprometeram a viabilidade e utilidade do produto final.

O Balancei, em sua versão atual, cumpre efetivamente seu objetivo principal de oferecer uma ferramenta acessível e intuitiva para gestão financeira pessoal, estabelecendo uma base sólida para futuras expansões de funcionalidades.

**Importante:** O desenvolvimento do projeto foi verdadeiramente colaborativo, com todos os membros da equipe participando ativamente das decisões técnicas, planejamento e implementação, mesmo que a distribuição de commits não reflita completamente essa colaboração devido à natureza do processo de desenvolvimento adotado.

---

*Este relatório foi elaborado como parte dos entregáveis do TCD - Primeira Etapa da disciplina PDM 2025/1.*