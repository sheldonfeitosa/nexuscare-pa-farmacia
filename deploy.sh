#!/bin/bash

# 🚀 Script de Deploy Automatizado para Vercel
# NexusCare - Sistema de Controle de Leitos

echo "🚀 Iniciando deploy do NexusCare para Vercel..."

# Verificar se o Vercel CLI está instalado
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI não encontrado. Instalando..."
    npm install -g vercel
fi

# Verificar se está logado no Vercel
if ! vercel whoami &> /dev/null; then
    echo "🔐 Fazendo login no Vercel..."
    vercel login
fi

# Fazer deploy
echo "📦 Fazendo deploy..."
vercel --prod

echo "✅ Deploy concluído!"
echo "🌐 Seu sistema NexusCare está disponível em:"
echo "   https://seu-projeto.vercel.app"
echo ""
echo "📋 Próximos passos:"
echo "   1. Configure domínio personalizado (opcional)"
echo "   2. Configure variáveis de ambiente se necessário"
echo "   3. Teste todas as funcionalidades"
echo ""
echo "🎉 Sistema pronto para uso em produção!"
