#!/bin/bash
# ============================================================
# CONECTA SISTEMAS — GUIA DE DEPLOY GITHUB PAGES
# Execute estes comandos no seu terminal (Git Bash / Terminal)
# ============================================================

# ============================================================
# PASSO 1: CRIAR REPOSITÓRIO NO GITHUB
# ============================================================
# Acesse: https://github.com/new
# - Repository name: conecta-site
# - Description: Site institucional Conecta Sistemas
# - Public (para GitHub Pages gratuito) ou Private (requer Pro)
# - NÃO marque "Add a README" (já temos)
# - Clique "Create repository"

# ============================================================
# PASSO 2: CONFIGURAR GIT LOCAL (se ainda não fez)
# ============================================================
git config --global user.name "SeuNome"
git config --global user.email "seu@email.com"

# ============================================================
# PASSO 3: NAVEGAR ATÉ A PASTA DO PROJETO
# ============================================================
# Copie a pasta 'conecta-site' para onde quiser no seu PC
# Exemplo: C:\Users\Winner\Projects\conecta-site
cd /caminho/para/conecta-site

# ============================================================
# PASSO 4: INICIALIZAR O REPOSITÓRIO E FAZER PUSH
# ============================================================
git init
git add .
git commit -m "feat: site institucional Conecta Sistemas v1.0"
git branch -M main
git remote add origin https://github.com/SEU-USUARIO/conecta-site.git
git push -u origin main

# ============================================================
# PASSO 5: ATIVAR GITHUB PAGES
# ============================================================
# No GitHub, acesse o repositório:
# Settings > Pages
# Source: "GitHub Actions"
# O workflow deploy.yml já vai rodar automaticamente
# Aguarde ~2 minutos

# ============================================================
# PASSO 6: ACESSAR O SITE
# ============================================================
# URL padrão: https://SEU-USUARIO.github.io/conecta-site/
# Se configurar domínio próprio, edite o arquivo CNAME

# ============================================================
# PASSO 7 (OPCIONAL): DOMÍNIO CUSTOMIZADO
# ============================================================
# 1. Edite o arquivo CNAME:
#    Remova o comentário e coloque: www.conectasistemas.com.br
#
# 2. No painel DNS do seu domínio, crie:
#    CNAME: www -> SEU-USUARIO.github.io
#    A records (apex / @):
#      185.199.108.153
#      185.199.109.153
#      185.199.110.153
#      185.199.111.153
#
# 3. Em Settings > Pages, digite o domínio
# 4. Marque "Enforce HTTPS"
#
# 5. Commit e push:
#    git add CNAME
#    git commit -m "feat: custom domain"
#    git push

# ============================================================
# ATUALIZAÇÕES FUTURAS
# ============================================================
# Sempre que editar o site:
git add .
git commit -m "update: descrição da mudança"
git push
# O GitHub Actions faz deploy automático!
