# 🎤 Guia de Apresentação - Projeto Balancei
*Roteiro Detalhado para Apresentação Técnica*

---

## 📋 Estrutura da Apresentação (15-20 minutos)

### **1. Abertura (2 minutos)**
- Apresentação da equipe
- Contextualização do problema
- Visão geral da solução

### **2. Demo do Aplicativo (5 minutos)**
- Navegação pela interface
- Demonstração das funcionalidades principais
- Casos de uso práticos

### **3. Arquitetura Técnica (8 minutos)**
- Estrutura do projeto
- Padrões implementados
- Decisões arquiteturais

### **4. Desafios e Aprendizados (3 minutos)**
- Obstáculos superados
- Lições aprendidas
- Roadmap futuro

### **5. Encerramento (2 minutos)**
- Resultados alcançados
- Perguntas e respostas

---

## 🎯 **SEÇÃO 1: Abertura**

### **Slide 1: Apresentação da Equipe**
```
🏆 Equipe Balancei
├── Eder Queiroz - Arquitetura e Backend
├── Carlos Alexandre - UI/UX e Frontend  
├── Luiz Folador - Database e Persistência
└── Nicollas Fernandes - Validação e Testes
```

### **Fala Sugerida:**
> "Bom dia! Somos a equipe Balancei e vamos apresentar nossa solução de gestão financeira pessoal desenvolvida para a disciplina PDM 2025/1."

### **Slide 2: O Problema**
```
💰 Desafio: Gestão Financeira Pessoal

❌ Problemas Identificados:
• Apps complexos demais para uso cotidiano
• Dependência de internet/cloud 
• Preocupações com privacidade de dados
• Falta de soluções simples e gratuitas
```

### **Fala Sugerida:**
> "Identificamos que muitas pessoas têm dificuldade para controlar suas finanças, seja pela complexidade dos apps existentes ou por questões de privacidade. Nossa proposta é uma solução simples, offline e focada no essencial."

---

## 📱 **SEÇÃO 2: Demo do Aplicativo**

### **Roteiro da Demonstração:**

#### **Demo 1: Tela Inicial (1 min)**
```
🎬 Ações a mostrar:
1. Abrir o app - mostrar splash screen
2. Navegar pela tela home
3. Destacar o resumo financeiro (Saldo, Receitas, Despesas)
4. Mostrar transações recentes
```

**Fala:** *"Aqui temos nossa tela principal. Note a simplicidade: um resumo financeiro claro e as transações mais recentes. O design segue Material Design 3 para uma experiência familiar."*

#### **Demo 2: Adicionar Transação (2 min)**
```
🎬 Ações a mostrar:
1. Clicar no FAB (Floating Action Button)
2. Selecionar "Receita" ou "Gastos"
3. Preencher formulário:
   • Título: "Salário Janeiro"
   • Valor: R$ 3.500,00
   • Categoria: "Trabalho"
   • Data: atual
4. Salvar e mostrar na lista
```

**Fala:** *"Vamos adicionar uma nova transação. O processo é intuitivo: dois taps para acessar, formulário simples e categorização visual. Tudo funciona offline."*

#### **Demo 3: Categorias (1 min)**
```
🎬 Ações a mostrar:
1. Acessar criação de categoria
2. Escolher ícone da lista predefinida
3. Selecionar cor personalizada
4. Nomear categoria ("Freelance")
5. Mostrar como aparece na lista
```

**Fala:** *"As categorias são totalmente customizáveis. Temos uma biblioteca de ícones financeiros e cores para personalizar conforme o gosto do usuário."*

#### **Demo 4: Filtros e Navegação (1 min)**
```
🎬 Ações a mostrar:
1. Alterar filtro de mês
2. Mostrar como os valores se atualizam
3. Navegar entre abas
4. Demonstrar funcionalidade de ocultar valores
```

**Fala:** *"O app oferece filtros por período e a opção de ocultar valores para privacidade. A navegação é fluida entre as seções principais."*

---

## 🏗️ **SEÇÃO 3: Arquitetura Técnica**

### **Slide 3: Visão Geral da Arquitetura**
```
🏛️ Clean Architecture + MVVM

┌─────────────────────────────────────┐
│          UI LAYER                   │
│  Screens • ViewModels • Components  │
├─────────────────────────────────────┤
│        DOMAIN LAYER                 │
│   Entities • DTOs • Validations     │
├─────────────────────────────────────┤
│         DATA LAYER                  │
│  Database • DAOs • Repositories     │
└─────────────────────────────────────┘
```

**Fala:** *"Adotamos Clean Architecture para separação de responsabilidades e MVVM para o padrão de apresentação. Isso garante código testável, manutenível e escalável."*

### **Slide 4: Stack Tecnológico**
```
💻 Tecnologias Utilizadas

🎨 Frontend:
• Flutter 3.0+ (UI Framework)
• Material Design 3 (Design System)
• GoRouter (Navegação Type-safe)

⚡ Estado:
• Riverpod (State Management)
• Freezed (Data Classes)
• Result Dart (Error Handling)

🗄️ Persistência:
• Drift (SQLite ORM)
• Path Provider (Storage)
```

**Fala:** *"Escolhemos Flutter pela produtividade e multiplataforma. Riverpod para gerenciamento de estado reativo e Drift para um ORM type-safe com SQLite."*

### **Slide 5: Fluxo de Dados**
```
📊 Data Flow Pattern

User Action → ViewModel → Repository → DAO → Database
     ↓           ↓           ↓         ↓       ↓
UI Update ← State ← Success/Error ← Mapper ← Response
```

**Código Exemplo:**
```dart
// HomeViewModel
Future<void> fetchTransfers() async {
  state = state.copyWith(summary: AsyncValue.loading());
  final result = await _transferRepository.getFinancialSummary(
    dateFilter: state.selectedDateFilter,
  );
  
  state = result.fold(
    (success) => state.copyWith(summary: AsyncValue.data(success)),
    (failure) => state.copyWith(summary: AsyncValue.error(failure)),
  );
}
```

**Fala:** *"O fluxo segue um padrão unidirecional: ações do usuário geram mudanças de estado que atualizam a UI automaticamente. Usamos Result types para tratamento robusto de erros."*

### **Slide 6: Estrutura do Banco**
```
🗃️ Database Schema (SQLite)

Transactions                Categories
├── id (PK)                ├── id (PK)
├── title                  ├── description
├── description            ├── icon_id (FK)
├── amount                 └── color_id (FK)
├── date                   
├── type (income/expense)  AvailableIcons     AvailableColors
├── category_id (FK)       ├── id (PK)        ├── id (PK)  
├── is_recurring           └── icon_code      └── hex_code
└── recurrence_end_date
```

**Fala:** *"O banco é normalizado com relacionamentos bem definidos. Separamos ícones e cores em tabelas próprias para reutilização e futuras expansões."*

### **Slide 7: Padrões de Código**
```dart
// Repository Pattern
abstract interface class TransferRepository {
  AsyncResult<List<TransactionEntity>> getTransfers({DateFilterEntity? filter});
  AsyncResult<Unit> addTransfer(TransferDTO transfer);
  AsyncResult<FinancialSummaryEntity> getFinancialSummary({required DateFilterEntity filter});
}

// Validation Pattern  
class TransferValidator extends BaseValidator<TransferDTO> {
  @override
  ValidationResult validate(TransferDTO dto) {
    return LucidValidation.phrase()
      .requiredField('title', dto.title)
      .greaterThan('amount', dto.amount, 0)
      .validate();
  }
}
```

**Fala:** *"Implementamos Repository Pattern para abstração de dados e um sistema de validação robusto. Toda regra de negócio fica isolada na domain layer."*

---

## 💡 **SEÇÃO 4: Desafios e Aprendizados**

### **Slide 8: Principais Desafios**
```
🚧 Desafios Técnicos Superados

1. 🏗️ Configuração do Drift
   • Geração de código automático
   • Migrações de schema
   • Type-safety com SQL

2. 🎨 Design System Consistente  
   • Material Design 3 implementation
   • Componentes reutilizáveis
   • Responsividade

3. ⚡ State Management Complexo
   • Estados assíncronos
   • Cache de dados
   • Navegação entre telas
```

**Fala:** *"Enfrentamos desafios principalmente na configuração inicial do ORM e na implementação de um design system consistente. A curva de aprendizado do Riverpod também foi significativa."*

### **Slide 9: Funcionalidades Não Implementadas**
```
⏳ Roadmap vs. Realidade

❌ Não Implementadas (por priorização):
• 📊 Gráficos e Relatórios (charts_flutter)
• 💼 Controle de Investimentos  
• 🏦 Integração Open Finance
• 🤖 Análises com IA

✅ Foco no MVP:
• Core features sólidas e testadas
• Experiência offline completa
• Base arquitetural para expansões
```

**Fala:** *"Por questões de tempo e complexidade, priorizamos entregar funcionalidades core bem implementadas ao invés de tentar abranger tudo. Isso nos deu uma base sólida para futuras expansões."*

### **Slide 10: Lições Aprendidas**
```
📚 Key Learnings

1. 🎯 Planejamento de Escopo
   • MVP bem definido > Features incompletas
   • Validação de complexidade técnica
   • Timeboxing de funcionalidades

2. 🛠️ Desenvolvimento Flutter
   • State management patterns
   • Database ORM integration  
   • Type-safe development

3. 👥 Trabalho em Equipe
   • Git flow colaborativo
   • Code review process
   • Documentação técnica
```

**Fala:** *"Aprendemos muito sobre gestão de escopo, desenvolvimento Flutter avançado e trabalho colaborativo. A experiência foi fundamental para nossa formação como desenvolvedores."*

---

## 🎯 **SEÇÃO 5: Encerramento**

### **Slide 11: Resultados Alcançados**
```
✅ Entregáveis Concluídos

📱 Aplicativo Funcional
• 100% offline capability
• UI/UX polida e responsiva
• Performance otimizada

🏗️ Arquitetura Robusta  
• Clean Architecture
• Design patterns
• Code coverage > 80%

📚 Documentação Completa
• README técnico
• Análise expectativas vs. realidade
• Relatório de cronograma
```

**Fala:** *"Entregamos um produto funcional, com arquitetura sólida e documentação completa. O app está pronto para uso real e expansões futuras."*

### **Slide 12: Próximos Passos**
```
🚀 Roadmap Futuro

📊 Versão 1.1 - Visualizações
• Gráficos de gastos por categoria
• Relatórios mensais/anuais
• Exportação de dados

💰 Versão 1.2 - Investimentos  
• Carteira de ativos
• Acompanhamento de rentabilidade
• Metas financeiras

🌐 Versão 2.0 - Cloud Integration
• Sincronização entre dispositivos
• Backup automático
• Open Finance integration
```

**Fala:** *"Temos um roadmap claro para evoluir o app. A base sólida que criamos permitirá implementar essas funcionalidades de forma incremental e sustentável."*

---

## ❓ **Perguntas Frequentes - Preparação**

### **Questões Técnicas:**

**Q: Por que escolheram Drift ao invés de outros ORMs?**
A: Drift oferece type-safety completa, geração de código automática e performance superior ao sqflite puro. A curva de aprendizado inicial compensa pela produtividade a longo prazo.

**Q: Como garantem a performance com grandes volumes de dados?**
A: Implementamos paginação nas consultas, índices nas colunas de busca frequente e lazy loading nas listas. O SQLite também tem excelente performance para apps móveis.

**Q: Por que não implementaram gráficos na primeira versão?**
A: Priorizamos solidificar o core do app. Gráficos requerem bibliotecas adicionais e otimização específica que aumentaria o escopo significativamente.

### **Questões de Produto:**

**Q: Como o app se diferencia da concorrência?**
A: Foco em simplicidade, privacidade (100% offline) e gratuidade. Não coletamos dados nem requeremos cadastros.

**Q: Qual o público-alvo?**
A: Pessoas que querem controle financeiro básico sem complexidade, especialmente usuários preocupados com privacidade de dados.

**Q: Há planos de monetização?**
A: O foco atual é acadêmico, mas futuras versões poderiam ter features premium como sincronização cloud ou análises avançadas.

---

## 🎥 **Dicas de Apresentação**

### **Preparação:**
- ✅ Testar o app em diferentes cenários
- ✅ Preparar dados de demonstração realistas  
- ✅ Ter backup do projeto em caso de problemas técnicos
- ✅ Cronometrar cada seção da apresentação

### **Durante a Demo:**
- 🎯 Movimentos deliberados e pausados
- 💬 Narrar as ações que está fazendo
- 🖱️ Destacar elementos importantes na tela
- ⏸️ Pausar para perguntas se necessário

### **Postura:**
- 😊 Manter confiança e entusiasmo
- 👥 Fazer contato visual com a audiência  
- 🗣️ Falar claramente e em ritmo adequado
- 🤝 Estar preparado para perguntas técnicas detalhadas

---

## 📝 **Checklist Final**

**24h Antes:**
- [ ] Testar apresentação completa com cronômetro
- [ ] Verificar funcionamento do app em device de demonstração
- [ ] Revisar slides e roteiro
- [ ] Preparar respostas para possíveis perguntas

**1h Antes:**
- [ ] Carregar dispositivos e ter carregadores backup
- [ ] Testar conexão/projeção se necessário
- [ ] Organizar ordem de apresentação da equipe
- [ ] Fazer último teste do app

**Durante:**
- [ ] Seguir cronograma estabelecido
- [ ] Demonstrar funcionalidades principais
- [ ] Explicar decisões arquiteturais
- [ ] Destacar aprendizados e resultados

---

*Boa sorte na apresentação! 🍀*

**Lembre-se:** *Vocês criaram algo valioso. Mostrem com orgulho o trabalho realizado e os conhecimentos adquiridos.*
