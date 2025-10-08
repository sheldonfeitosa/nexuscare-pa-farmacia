# 🚀 Deploy do NexusCare no Vercel

## 📋 Pré-requisitos

- Conta no [Vercel](https://vercel.com)
- Conta no [GitHub](https://github.com) (recomendado)
- Git instalado localmente

## 🛠️ Métodos de Deploy

### Método 1: Deploy via GitHub (Recomendado)

1. **Criar repositório no GitHub:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit - NexusCare PA Farmácia"
   git branch -M main
   git remote add origin https://github.com/SEU_USUARIO/nexuscare-pa-farmacia.git
   git push -u origin main
   ```

2. **Conectar ao Vercel:**
   - Acesse [vercel.com](https://vercel.com)
   - Clique em "New Project"
   - Importe o repositório do GitHub
   - Configure:
     - **Framework Preset**: Other
     - **Root Directory**: `./PA_01`
     - **Build Command**: (deixe vazio)
     - **Output Directory**: (deixe vazio)

3. **Deploy automático:**
   - O Vercel fará deploy automaticamente
   - Cada push no GitHub atualizará o site

### Método 2: Deploy via Vercel CLI

1. **Instalar Vercel CLI:**
   ```bash
   npm i -g vercel
   ```

2. **Fazer login:**
   ```bash
   vercel login
   ```

3. **Deploy:**
   ```bash
   cd PA_01
   vercel
   ```

4. **Deploy para produção:**
   ```bash
   vercel --prod
   ```

### Método 3: Deploy via Drag & Drop

1. **Preparar arquivos:**
   - Comprima a pasta `PA_01` em um arquivo ZIP
   - Inclua apenas os arquivos essenciais:
     - `index.html`
     - `vercel.json`
     - `package.json`
     - `README.md`

2. **Upload no Vercel:**
   - Acesse [vercel.com](https://vercel.com)
   - Clique em "New Project"
   - Arraste o arquivo ZIP
   - Configure o projeto

## ⚙️ Configurações do Vercel

### Arquivo `vercel.json`
```json
{
  "version": 2,
  "builds": [
    {
      "src": "index.html",
      "use": "@vercel/static"
    }
  ],
  "routes": [
    {
      "src": "/(.*)",
      "dest": "/index.html"
    }
  ]
}
```

### Variáveis de Ambiente (Opcional)
Se precisar configurar variáveis de ambiente:
- Acesse o dashboard do Vercel
- Vá em Settings > Environment Variables
- Adicione variáveis se necessário

## 🔧 Pós-Deploy

### 1. Configurar Domínio Personalizado (Opcional)
- No dashboard do Vercel
- Vá em Settings > Domains
- Adicione seu domínio personalizado

### 2. Configurar HTTPS
- O Vercel fornece HTTPS automaticamente
- Certificados SSL são gerenciados automaticamente

### 3. Monitoramento
- Use o dashboard do Vercel para monitorar:
  - Performance
  - Analytics
  - Logs de erro

## 📱 Funcionalidades do Sistema

### ✅ Recursos Implementados
- **Sistema de Login** com recuperação de senha
- **Controle de Leitos** (PA-01 a PA-15)
- **Gestão de Pacientes** com dados completos
- **Comunicação PA-Farmácia** em tempo real
- **Sistema de Permissões** por setor
- **Dashboard** com estatísticas
- **Relatórios** exportáveis
- **Notificações** por email e WhatsApp
- **Backup automático** de dados
- **Sistema de Rastreabilidade** de pacientes

### 🔐 Sistema de Usuários
- **Cadastro de usuários** via interface administrativa
- **Sistema de permissões** por setor
- **Recuperação de senha** com perguntas de segurança

### 📊 Setores de Origem
- APARTAMENTOS
- MARIA VIEIRA
- INFANTO
- GERALDO CARNEIRO
- CÂNDIDA PEREIRA
- BELMIRA AZEREDO

## 🚨 Importante

### Dados Locais
- O sistema usa `localStorage` para persistir dados
- Dados são salvos no navegador do usuário
- Para ambiente de produção, considere implementar backend

### Segurança
- Senhas são armazenadas em texto simples (localStorage)
- Para produção, implemente autenticação segura
- Configure HTTPS obrigatório

### Performance
- Sistema otimizado para carregamento rápido
- Cache configurado no Vercel
- Compressão automática de assets

## 📞 Suporte

Para dúvidas sobre o deploy:
1. Consulte a [documentação do Vercel](https://vercel.com/docs)
2. Verifique os logs no dashboard do Vercel
3. Teste localmente antes do deploy

## 🎉 Deploy Concluído!

Após o deploy, seu sistema NexusCare estará disponível em:
- **URL do Vercel**: `https://seu-projeto.vercel.app`
- **Domínio personalizado**: `https://seudominio.com` (se configurado)

O sistema estará pronto para uso em produção! 🚀
