# 📱 Apresentação do Projeto Balancei
*Aplicativo de Gestão Financeira Pessoal*

---

## 🎯 Visão Geral

**Balancei** é um aplicativo móvel desenvolvido em Flutter/Dart que oferece uma solução simples, intuitiva e segura para o controle de finanças pessoais, funcionando completamente offline.

### 🌟 Proposta de Valor
- **Simplicidade:** Interface intuitiva para usuários de todos os níveis
- **Privacidade:** 100% offline, seus dados permanecem no seu dispositivo
- **Acessibilidade:** Gratuito e sem dependência de internet
- **Multiplataforma:** Funciona em Android e iOS

---

## 🏗️ Arquitetura do Sistema

### **Clean Architecture + MVVM**
```
📱 UI Layer (Presentation)
├── Screens (HomeScreen, DashboardScreen, AddTransferScreen)
├── ViewModels (HomeViewModel, AddTransferViewModel)
├── States (HomeState, AddTransferState)
└── Components (TransactionCard, CategoryField)

🎯 Domain Layer (Business Logic)
├── Entities (TransactionEntity, CategoryEntity, FinancialSummaryEntity)
├── DTOs (TransferDTO, CreateCategoryDTO)
├── Enums (TransactionTypeEnum)
└── Validations (TransferValidator, CreateCategoryValidator)

🗄️ Data Layer (Infrastructure)
├── Database (Drift/SQLite)
├── DAOs (TransactionDao, CategoryDao)
├── Repositories (TransferRepository, CategoryRepository)
└── Mappers (TransactionMapper, CategoryMapper)
```

### **Tecnologias Principais**
- **Framework:** Flutter 3.0+
- **Estado:** Riverpod (Provider Pattern)
- **Banco:** Drift (SQLite)
- **Navegação:** GoRouter (Type-safe routing)
- **Internacionalização:** Intl (pt_BR)

---

## ⚡ Funcionalidades Implementadas

### ✅ **Core Features**
| Funcionalidade | Status | Descrição |
|---|---|---|
| 📊 **Dashboard Financeiro** | ✅ Completo | Visão geral de saldo, receitas e despesas |
| 💰 **Cadastro de Transações** | ✅ Completo | Adicionar receitas e despesas com categorização |
| 📝 **Gestão de Categorias** | ✅ Completo | Criar e customizar categorias com ícones e cores |
| 📱 **Modo Offline** | ✅ Completo | Funcionamento independente de internet |
| 📅 **Filtros Temporais** | ✅ Completo | Visualização por mês/período específico |
| 🔒 **Privacidade de Dados** | ✅ Completo | Opção de ocultar valores na interface |

### 🎨 **UX/UI Features**
- **Material Design 3** com tema customizado
- **Navegação por abas** com floating action button
- **Transições suaves** e animações
- **Design responsivo** para diferentes tamanhos de tela

---

## 🗃️ Estrutura de Dados

### **Modelo de Transação**
```dart
class TransactionEntity {
  int id;
  String title;
  String description;
  double amount;
  DateTime date;
  TransactionTypeEnum type; // income, expense
  CategoryEntity category;
  bool isRecurring;
  bool isCompleted;
  DateTime? recurrenceEndDate;
}
```

### **Modelo de Categoria**
```dart
class CategoryEntity {
  int id;
  String description;
  int iconCodePoint; // Material Icons
  int colorHex;      // Cores personalizáveis
}
```

### **Banco de Dados (SQLite)**
- **4 Tabelas principais:** Transactions, Categories, AvailableIcons, AvailableColors
- **Relacionamentos:** FK entre transações e categorias
- **Migrações:** Versionamento automático com Drift
- **Dados iniciais:** Categorias e ícones pré-populados

---

## 🚀 Fluxo da Aplicação

### **1. Inicialização**
```dart
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('pt_BR');
  runApp(ProviderScope(child: MyApp()));
}
```

### **2. Navegação Principal**
- **Home:** Dashboard + Lista de transações recentes
- **Dashboard:** Área reservada para gráficos (futuro)
- **Add Transaction:** Formulário de criação (Receita/Despesa)
- **Create Category:** Formulário de categorias personalizadas

### **3. Fluxo de Dados**
```
User Input → ViewModel → Repository → DAO → Database
    ↓
UI Update ← State ← Success/Error ← Mapper ← Response
```

---

## 🛠️ Padrões Implementados

### **State Management (Riverpod)**
- **AutoDisposeNotifier** para ViewModels
- **Provider** para dependências (DAOs, Repositories)
- **AsyncValue** para estados de loading/error
- **Family** para providers parametrizados

### **Repository Pattern**
```dart
interface TransferRepository {
  AsyncResult<List<TransactionEntity>> getTransfers();
  AsyncResult<Unit> addTransfer(TransferDTO transfer);
  AsyncResult<FinancialSummaryEntity> getFinancialSummary();
}
```

### **Validation Pattern**
```dart
class TransferValidator extends BaseValidator<TransferDTO> {
  // Validação de títulos, valores, datas, categorias
}
```

---

## 📈 Status Atual vs. Planejado

### ✅ **Entregue (100%)**
- ✅ CRUD completo de transações
- ✅ Sistema de categorias
- ✅ Interface responsiva
- ✅ Persistência local
- ✅ Filtros temporais

### ⏳ **Roadmap Futuro**
- 📊 **Gráficos e Relatórios** (v1.1)
- 💼 **Controle de Investimentos** (v1.2)
- 🏦 **Integração Open Finance** (v2.0)
- 🤖 **Análises com IA** (v2.1)

---

## 🎓 Valor Acadêmico

### **Aplicação de Conceitos PDM**
- ✅ **Arquitetura limpa** e escalável
- ✅ **Gerenciamento de estado** reativo
- ✅ **Persistência local** com SQLite
- ✅ **Navegação type-safe** com GoRouter
- ✅ **Testes** unitários e de integração
- ✅ **Boas práticas** de desenvolvimento Flutter

### **Desafios Superados**
- 🔧 Configuração complexa do Drift
- 🎨 Implementação de UI/UX consistente
- 🔄 Gerenciamento de estado reativo
- 📱 Compatibilidade multiplataforma

---

## 🎯 Conclusão

O **Balancei** representa uma implementação sólida de um aplicativo de gestão financeira, demonstrando a aplicação prática de conceitos avançados de desenvolvimento móvel com Flutter, incluindo arquitetura limpa, padrões de design e boas práticas de engenharia de software.

O projeto estabelece uma base robusta para futuras expansões, mantendo o foco na simplicidade, privacidade e experiência do usuário.

---

*Desenvolvido pela equipe: Eder Queiroz, Carlos Alexandre, Luiz Folador, Nicollas Fernandes*  
*Disciplina: PDM 2025/1*
