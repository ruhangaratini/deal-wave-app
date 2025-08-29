# 🌊 Deal Wave App

Sistema de vendas para gestão de pedidos, produtos, clientes e relatórios.  
⚠️ OBS: O projeto contém apenas a estrutura base e **não está funcional no momento**.

---

## 🎯 Objetivos

- Desenvolver e aprimorar conhecimentos de **frontend com Flutter**
- Exercitar boas práticas de **Clean Architecture** e **Clean Code**
- Aplicar conceitos de **System Design** em um sistema completo

---

## 🛠️ Tecnologias (planejadas)

- **Frontend:** Flutter
- **Backend:** Java (Spring Boot)
- **Banco de dados:** PostgreSQL
- **Arquitetura:** Clean Architecture + SOLID

---

## 📂 Estrutura do projeto (atual)

```plaintext
lib/
├── data/            # Data sources, models, repositories
├── domain/          # Regras de negócio, entidades, casos de uso
├── presentation/    # UI e lógica de estado
└── main.dart        # Arquivo principal
```

---

## 🚀 Como executar

### 🔹 Frontend (Flutter Web)

⚠️ OBS: O sistema de autenticação não foi implementado ainda, então basta clicar em "Entrar" para acessar.

```bash
# Clonar o repositório
git clone https://github.com/ruhangaratini/deal-wave-app.git
cd deal-wave-app

# Instalar dependências
flutter pub get

# Executar no navegador
flutter run -d chrome
```
