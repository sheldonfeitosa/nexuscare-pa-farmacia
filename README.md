# Sistema PA-Farmácia - INMCEB
## Versão com Sinais Sonoros

### 🔊 **NOVA FUNCIONALIDADE: SINAIS SONOROS**

O sistema agora inclui notificações sonoras para melhorar a experiência do usuário:

#### **Sons Implementados:**

1. **🔊 Som de Admissão**
   - **Quando**: Toda vez que um paciente é admitido no PA
   - **Característica**: Tom ascendente (800Hz → 1200Hz) - som mais alegre
   - **Duração**: 0.3 segundos

2. **🔊 Som de Transferência**
   - **Quando**: Toda vez que um paciente é transferido para outro centro
   - **Característica**: Dois tons (600Hz + 800Hz) - som mais informativo
   - **Duração**: 0.4 segundos

3. **🔊 Som de Alta**
   - **Quando**: Toda vez que um paciente recebe alta
   - **Característica**: Tom descendente (1000Hz → 400Hz) - som mais suave
   - **Duração**: 0.4 segundos

### **Como Funciona:**

- **Web Audio API**: Utiliza a API nativa do navegador para gerar sons
- **Compatibilidade**: Funciona em todos os navegadores modernos
- **Volume**: Configurado para 30% do volume máximo
- **Fallback**: Se houver erro, apenas registra no console (não quebra o sistema)

### **Tecnologia Utilizada:**

```javascript
// Exemplo do som de admissão
function tocarSomAdmissao() {
    var audioContext = new (window.AudioContext || window.webkitAudioContext)();
    var oscillator = audioContext.createOscillator();
    var gainNode = audioContext.createGain();
    
    // Configuração do som
    oscillator.frequency.setValueAtTime(800, audioContext.currentTime);
    oscillator.frequency.exponentialRampToValueAtTime(1200, audioContext.currentTime + 0.3);
    
    // Reprodução
    oscillator.start(audioContext.currentTime);
    oscillator.stop(audioContext.currentTime + 0.3);
}
```

### **Benefícios:**

✅ **Feedback Imediato**: Usuário sabe instantaneamente quando uma ação foi concluída
✅ **Acessibilidade**: Ajuda usuários com deficiência visual
✅ **Produtividade**: Permite trabalhar sem olhar constantemente para a tela
✅ **Experiência**: Torna o sistema mais interativo e profissional

### **Arquivos do Backup:**

- `index.html` - Sistema completo com sinais sonoros
- `projeto_pa_farmacia.ipynb` - Notebook com documentação completa
- `README.md` - Este arquivo de instruções

### **Como Usar:**

1. Abra o arquivo `index.html` em qualquer navegador
2. Os sons serão reproduzidos automaticamente nas ações:
   - Admitir paciente
   - Transferir paciente  
   - Dar alta ao paciente

### **Notas Técnicas:**

- Os sons são gerados dinamicamente (não são arquivos de áudio)
- Funciona offline (não precisa de internet)
- Volume pode ser controlado pelo sistema operacional
- Compatível com Windows, Mac e Linux

---

**Desenvolvido para INMCEB - Instituto de Medicina do Comportamento Eurípedes Barsanulfo**

*Sistema de Controle de Leitos do Pronto Atendimento Psiquiátrico com Notificações Sonoras*

   ## Deploy
   Aplicação deployada no Vercel.
