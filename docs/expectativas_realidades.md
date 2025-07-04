# Expectativas vs Realidades - Projeto Balancei

**Equipe:** Eder Queiroz, Carlos Alexandre, Luiz Folador, Nicollas Fernandes  
**Data:** 3 de julho de 2025  
**Disciplina:** PDM 2025/1

## 1. Resumo Executivo

Este documento apresenta uma análise comparativa entre as expectativas definidas no documento de concepção do projeto Balancei e a realidade implementada, detalhando funcionalidades não entregues, justificativas técnicas e uma comparação das tecnologias planejadas versus utilizadas.

## 2. Análise de Funcionalidades: Expectativas vs Realidades

### 2.1 Funcionalidades Implementadas com Sucesso

| Funcionalidade | Status | Expectativa Original | Realidade Implementada |
|----------------|--------|---------------------|------------------------|
| **Cadastro de receitas e despesas** | ✅ Completo | Sistema básico de CRUD com categorização | Implementado conforme especificado com interface intuitiva |
| **Edição e exclusão de lançamentos** | ✅ Completo | Funcionalidade de edição completa | Implementado com validações e confirmações |
| **Visualização de histórico financeiro** | ✅ Completo | Lista organizada por data e categoria | Implementado com filtros e ordenação |
| **Modo offline** | ✅ Completo | Funcionamento independente de internet | Implementado com armazenamento local robusto |
| **Interface intuitiva** | ✅ Completo | Design simples e acessível | Implementado seguindo princípios de Material Design |
| **Compatibilidade multiplataforma** | ✅ Completo | Android e iOS via Flutter | Implementado e testado em ambas plataformas |

### 2.2 Funcionalidades Não Implementadas

#### 2.2.1 Gráficos e Relatórios Financeiros

**Expectativa Original:**
> "O Balancei fornecerá representações gráficas para ajudar na análise dos gastos e receitas."

**Realidade:**
❌ **Não implementado**

**Justificativa Detalhada:**

1. **Complexidade Técnica Subestimada:**
   - A integração de bibliotecas de gráficos Flutter (charts_flutter, fl_chart) mostrou-se mais complexa que previsto
   - Necessidade de otimização para diferentes tamanhos de tela e orientações
   - Desafios na implementação de gráficos responsivos e performáticos

2. **Priorização Estratégica:**
   - A equipe optou por consolidar primeiro as funcionalidades básicas de CRUD
   - Decisão de garantir uma base sólida antes de adicionar camadas de visualização
   - Tempo limitado direcionado para funcionalidades core mais críticas

3. **Requisitos de Design:**
   - Criação de gráficos úteis demandou mais pesquisa de UX/UI que o estimado
   - Necessidade de definir métricas e KPIs financeiros relevantes para os usuários

#### 2.2.2 Controle de Investimentos

**Expectativa Original:**
> "O usuário poderá cadastrar investimentos e acompanhar sua evolução."

**Realidade:**
❌ **Não implementado**

**Justificativa Detalhada:**

1. **Modelagem de Dados Complexa:**
   - Diferentes tipos de investimentos (ações, fundos, renda fixa, criptomoedas) requerem estruturas de dados específicas
   - Necessidade de modelar cálculos de rentabilidade, dividendos, taxas e impostos
   - Complexidade na implementação de fórmulas financeiras precisas

2. **Dependências Externas:**
   - Para ser útil, a funcionalidade demandaria integração com APIs de cotações em tempo real
   - Necessidade de dados históricos de mercado para cálculos de performance
   - Questões de latência e disponibilidade de serviços financeiros

3. **Escopo Expandido:**
   - A funcionalidade revelou-se mais abrangente que inicialmente concebido
   - Implicações regulatórias para apresentação de dados de investimento
   - Necessidade de disclaimers e avisos legais

#### 2.2.3 Integração com Open Finance

**Expectativa Original:**
> "Permitir que os usuários conectem suas contas bancárias para automatizar lançamentos financeiros."

**Realidade:**
❌ **Não implementado**

**Justificativa Detalhada:**

1. **Complexidade Regulatória:**
   - Conformidade com regulamentações do Banco Central do Brasil
   - Necessidade de certificações de segurança específicas
   - Protocolos de autenticação OAuth2 mais complexos que estimado

2. **Infraestrutura de Segurança:**
   - Implementação de criptografia end-to-end para dados bancários sensíveis
   - Necessidade de arquitetura de segurança robusta não prevista no escopo inicial
   - Questões de LGPD (Lei Geral de Proteção de Dados)

3. **Dependências de Terceiros:**
   - Processo de homologação junto às instituições financeiras
   - APIs de bancos com diferentes padrões e disponibilidades
   - Tempo de integração com fornecedores de Open Finance

#### 2.2.4 Análises e Insights Financeiros (IA)

**Expectativa Original:**
> "Implementação de IA para fornecer sugestões de economia e alertas sobre hábitos financeiros."

**Realidade:**
❌ **Não implementado**

**Justificativa Detalhada:**

1. **Complexidade de Implementação:**
   - Necessidade de datasets robustos para treinamento de modelos
   - Implementação de algoritmos de machine learning específicos para finanças pessoais
   - Otimização para execução em dispositivos móveis com recursos limitados

2. **Qualidade e Volume de Dados:**
   - IA efetiva requer histórico extenso de transações dos usuários
   - Necessidade de dados demográficos e comportamentais para personalização
   - Desafios na criação de modelos generalizáveis para diferentes perfis financeiros

3. **Recursos Técnicos:**
   - Implementação de TensorFlow Lite ou integração com APIs externas
   - Necessidade de expertise especializada em ML para finanças
   - Questões de performance e consumo de bateria em dispositivos móveis

## 3. Análise de Tecnologias: Planejadas vs Utilizadas

### 3.1 Tecnologias Core - Implementadas Conforme Planejado

| Tecnologia | Status | Planejamento Original | Implementação Real |
|------------|--------|----------------------|-------------------|
| **Flutter** | ✅ Utilizado | Framework principal para desenvolvimento | Implementado como previsto |
| **Dart** | ✅ Utilizado | Linguagem de programação base | Utilizado conforme planejado |
| **Material Design** | ✅ Utilizado | Princípios de design para UI/UX | Implementado nas interfaces |

### 3.2 Tecnologias de Armazenamento - Parcialmente Implementadas

| Tecnologia | Status | Planejamento Original | Implementação Real |
|------------|--------|----------------------|-------------------|
| **Hive** | ✅ Utilizado | Armazenamento local offline | Implementado como banco local principal |
| **SQLite** | ⚠️ Avaliado | Alternativa para armazenamento | Avaliado mas não implementado (Hive se mostrou suficiente) |

### 3.3 Tecnologias Backend - Não Implementadas

| Tecnologia | Status | Planejamento Original | Motivo da Não Implementação |
|------------|--------|----------------------|----------------------------|
| **Firebase** | ❌ Não utilizado | Backend para funcionalidades online | Não necessário devido ao foco offline |
| **Supabase** | ❌ Não utilizado | Alternativa de backend | Priorização do desenvolvimento offline |

### 3.4 Tecnologias de IA - Não Implementadas

| Tecnologia | Status | Planejamento Original | Motivo da Não Implementação |
|------------|--------|----------------------|----------------------------|
| **TensorFlow Lite** | ❌ Não utilizado | IA offline no dispositivo | Funcionalidade de IA foi priorizada para versões futuras |
| **OpenAI API** | ❌ Não utilizado | IA baseada em nuvem | Complexidade e custos não justificados para MVP |

### 3.5 Tecnologias de Integração - Não Implementadas

| Tecnologia | Status | Planejamento Original | Motivo da Não Implementação |
|------------|--------|----------------------|----------------------------|
| **APIs Open Finance** | ❌ Não utilizado | Integração bancária | Complexidade regulatória e técnica |
| **OAuth2** | ❌ Não utilizado | Autenticação bancária | Dependente da implementação Open Finance |

### 3.6 Bibliotecas Adicionais Utilizadas (Não Previstas)

| Tecnologia | Motivo da Adição | Benefício Obtido |
|------------|------------------|-------------------|
| **Provider** | Gerenciamento de estado | Melhor organização da arquitetura |
| **Shared Preferences** | Configurações do usuário | Persistência de preferências simples |
| **Flutter Launcher Icons** | Ícones da aplicação | Padronização visual multiplataforma |

## 4. Impacto das Decisões Tecnológicas

### 4.1 Decisões Acertadas

1. **Flutter como Framework Principal:**
   - **Benefício:** Desenvolvimento multiplataforma eficiente
   - **Resultado:** Aplicativo funcional em Android e iOS com código único

2. **Hive para Armazenamento Local:**
   - **Benefício:** Performance superior e simplicidade de uso
   - **Resultado:** Operações rápidas e confiáveis offline

3. **Foco em Tecnologias Offline:**
   - **Benefício:** Independência de conectividade e maior privacidade
   - **Resultado:** Aplicativo robusto e sempre disponível

### 4.2 Ajustes Realizados Durante o Desenvolvimento

1. **Não Implementação de SQLite:**
   - **Motivo:** Hive se mostrou mais adequado para o caso de uso
   - **Impacto:** Desenvolvimento mais ágil e menos complexidade

2. **Postergação de Backend em Nuvem:**
   - **Motivo:** Foco no MVP offline primeiro
   - **Impacto:** Maior concentração nas funcionalidades essenciais

## 5. Lições Aprendidas sobre Expectativas vs Realidade

### 5.1 Estimativas de Complexidade

1. **Subestimação de Integrações:**
   - Funcionalidades que dependem de terceiros são mais complexas
   - Regulamentações e certificações adicionam camadas de complexidade

2. **Sobrestimação de Necessidades Tecnológicas:**
   - Nem todas as tecnologias planejadas foram necessárias para o MVP
   - Simplicidade muitas vezes é mais efetiva que complexidade

### 5.2 Priorização de Funcionalidades

1. **Valor do MVP Bem Definido:**
   - Focar nas funcionalidades core primeiro foi a decisão correta
   - Usuários preferem um produto simples que funciona bem

2. **Iteração Incremental:**
   - Funcionalidades avançadas podem ser adicionadas em versões futuras
   - Base sólida permite expansão sustentável

## 6. Roadmap Tecnológico Futuro

### 6.1 Próximas Implementações (Versão 1.1)

- **Charts Flutter:** Para gráficos básicos
- **SQLite:** Como opção de backup para Hive
- **Flutter Local Notifications:** Para lembretes financeiros

### 6.2 Implementações Médio Prazo (Versão 2.0)

- **Firebase/Supabase:** Para sincronização em nuvem
- **APIs Open Finance:** Para integração bancária
- **OAuth2:** Para autenticação segura

### 6.3 Implementações Longo Prazo (Versão 2.1+)

- **TensorFlow Lite:** Para IA offline
- **OpenAI API:** Para insights avançados
- **Flutter Web:** Para versão web do aplicativo

## 7. Conclusão

O projeto Balancei demonstrou que uma abordagem pragmática e focada no MVP pode ser mais efetiva que tentar implementar todas as funcionalidades planejadas inicialmente. As tecnologias escolhidas (Flutter + Dart + Hive) se mostraram adequadas para entregar um produto funcional e de qualidade.

As funcionalidades não implementadas foram resultado de decisões estratégicas conscientes, priorizando a entrega de valor ao usuário através de funcionalidades essenciais bem implementadas. O roadmap futuro está bem definido para incorporar gradualmente as funcionalidades avançadas planejadas.

A experiência reforçou a importância de:
- Definir claramente o MVP antes do desenvolvimento
- Ser conservador em estimativas de funcionalidades complexas
- Priorizar qualidade sobre quantidade de funcionalidades
- Manter flexibilidade para ajustar escopo durante o desenvolvimento

---

*Este documento foi elaborado como parte dos entregáveis do TCD - Segunda Etapa da disciplina PDM 2025/1.*