# 🧶 Malu Crochês — App Mobile

> Aplicativo mobile de catálogo e gestão de produtos para uma loja de crochê artesanal, desenvolvido com **FlutterFlow** + **Firebase**.

![Flutter](https://img.shields.io/badge/Flutter-0f172a?style=for-the-badge&logo=flutter&logoColor=38bdf8)
![Dart](https://img.shields.io/badge/Dart-0f172a?style=for-the-badge&logo=dart&logoColor=00d2b8)
![Firebase](https://img.shields.io/badge/Firebase-0f172a?style=for-the-badge&logo=firebase&logoColor=facc15)
![FlutterFlow](https://img.shields.io/badge/FlutterFlow-0f172a?style=for-the-badge&logo=flutter&logoColor=a78bfa)
![Cloud Firestore](https://img.shields.io/badge/Cloud%20Firestore-0f172a?style=for-the-badge&logo=googlecloud&logoColor=4285F4)

---

## 📋 Sobre o Projeto

O **Malu Crochês** é um app mobile multiplataforma (Android/iOS) que permite a clientes navegar pelo catálogo de produtos artesanais e ao administrador gerenciar o acervo completo — adicionando, editando e controlando disponibilidade de peças em tempo real via Firestore.

---

## ✨ Funcionalidades

### 👤 Perfil Cliente
- 📦 Visualização do catálogo de produtos com foto, nome, descrição e preço
- 🔍 Página de detalhe de cada produto com visualização expandida de imagem
- ℹ️ Página institucional "Sobre" com informações da loja
- 🔐 Autenticação via **Google Sign-In** e **Apple Sign-In**

### 🛠️ Perfil Administrador
- ➕ Cadastro de novos produtos com upload de foto para **Firebase Storage**
- ✏️ Edição de produtos existentes (nome, descrição, preço, foto, disponibilidade)
- 🔄 Controle de disponibilidade (`on_sale`) em tempo real
- 📊 Dashboard administrativo com visão geral do catálogo

---

## 🗂️ Estrutura do Projeto

```
lib/
├── admin/
│   ├── add/                  # Cadastro de novos produtos
│   ├── administrator/        # Tela principal do administrador
│   ├── dashboard_admin/      # Dashboard admin
│   └── editprodut/           # Edição de produtos
├── common/
│   ├── dashboard/            # Dashboard do cliente (catálogo)
│   ├── product/              # Detalhe do produto
│   └── about/                # Página institucional
├── auth/
│   └── firebase_auth/        # Google, Apple, Email e autenticação anônima
├── backend/
│   ├── schema/               # Models Firestore (ProductsRecord)
│   └── firebase_storage/     # Upload de imagens
└── custom_code/
    └── actions/              # Ação customizada: lock de orientação de tela
```

---

## 🧱 Modelo de Dados (Firestore)

**Coleção:** `products`

| Campo | Tipo | Descrição |
|---|---|---|
| `name` | String | Nome do produto |
| `description` | String | Descrição da peça |
| `price` | Double | Preço |
| `photo` | String | URL da imagem (Firebase Storage) |
| `on_sale` | Boolean | Disponível para venda |
| `created_at` | Timestamp | Data de criação |
| `modified_at` | Timestamp | Última atualização |

---

## 🚀 Como Executar

### Pré-requisitos
- Flutter SDK `>=3.0.0`
- Conta no Firebase com projeto configurado
- FlutterFlow (para edição visual, opcional)

### Configuração

```bash
# Clone o repositório
git clone https://github.com/Airton659/MaluApp-flutterflow.git
cd MaluApp-flutterflow

# Instale as dependências
flutter pub get

# Configure o Firebase
# Substitua o arquivo firebase/google-services.json pelo do seu projeto
# e firebase/GoogleService-Info.plist para iOS

# Execute o app
flutter run
```

---

## 🧠 Destaques Técnicos

- **Arquitetura FlutterFlow** com separação clara entre camadas `admin`, `common`, `auth` e `backend`
- **Autenticação múltipla** — Google, Apple, Email/Senha e sessão anônima via Firebase Auth
- **Realtime com Firestore** — catálogo atualizado em tempo real para todos os usuários
- **Upload de imagens** direto para Firebase Storage com referência salva no documento
- **go_router** para navegação declarativa com suporte a deep links e autenticação condicional
- **Orientação de tela travada** via custom action Dart para experiência mobile consistente
- **Suporte a Web** — dependências configuradas para flutter web (`firebase_*_web`)

---

## 📦 Principais Dependências

| Pacote | Uso |
|---|---|
| `cloud_firestore` | Banco de dados em tempo real |
| `firebase_auth` | Autenticação de usuários |
| `firebase_storage` | Upload e armazenamento de imagens |
| `go_router` | Navegação declarativa |
| `google_sign_in` | Login com Google |
| `sign_in_with_apple` | Login com Apple |
| `image_picker` | Seleção de imagens da galeria/câmera |
| `cached_network_image` | Cache de imagens remotas |
| `flutter_animate` | Animações de UI |
| `google_fonts` | Tipografia customizada |

---

## 👨‍💻 Autor

Desenvolvido por **José Airton Junior**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0f172a?style=flat-square&logo=linkedin&logoColor=38bdf8)](https://br.linkedin.com/in/jose-airton)
[![GitHub](https://img.shields.io/badge/GitHub-0f172a?style=flat-square&logo=github&logoColor=ffffff)](https://github.com/Airton659)
