.data
    # --- ARQUIVOS DE IMAGEM (Caminhos atualizados para a pasta assets) ---
    .include "../assets/Menu1.data"
    .include "../assets/pressbutton1.data"
    .include "../assets/studios.data"
    .include "../assets/primeiroposmenu.data"
    .include "../assets/posmenu.data"
    .include "../assets/pospuzzle.data"
    .include "../assets/entradaloja.data"
    .include "../assets/oquerestareste.data"
    .include "../assets/fase1.data" 
    .include "../assets/fase2.data"       
    .include "../assets/fase3.data"       
    .include "../assets/comerciante.data" 
    .include "../assets/jagunco.data"        
    .include "../assets/jagunco_atk.data"
    .include "../assets/msg_npc.data"
    .include "../assets/popup_chave.data"
    .include "../assets/msg_trancado.data"
    .include "../assets/hud_chave.data"
    .include "../assets/hud_bg.data"      
    .include "../assets/icone_espada.data"
    .include "../assets/dialogoComerciante.data"
    .include "../assets/cangaco.data"
    .include "../assets/cobra.data"
    
    .align 2
    # --- VARIÁVEIS DE ESTADO ---
    ATTACK_TIMER:   .word 0      
    HAS_KEY:        .word 0      
    DIALOG_ACTIVE:  .word 0      
    DEBOUNCE_TIMER: .word 0      
    DIALOG_TIMER:   .word 0
    ENTROU_LOJA_PRIMEIRA_VEZ: .word 0
    SAIU_LOJA_PRIMEIRA_VEZ: .word 0
    
    # --- COORDENADAS ---
    NPC_X:  .word 144
    NPC_Y:  .word 136
    ROCK_X: .word 250
    ROCK_Y: .word 50
    COBRA_X: .word 144
    COBRA_Y: .word 100

    .align 2
    COR_BRANCA: .byte 0xFF

    # --- MAPAS DE COLISAO (0=Livre, 1=Parede) ---
    
    MAPA_COLISAO_F1:
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
    .byte 1,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0  # <--- SAÍDA NA DIREITA (0)
    .byte 1,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0  # <--- SAÍDA NA DIREITA (0)
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1
    .byte 1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
    .byte 1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

    .align 2
    MAPA_COLISAO_F2:
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,0,0,1,1,1,1,0,0,0,0,0,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0
    .byte 1,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0
    .byte 0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0 # < ABERTO
    .byte 0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,1 # < ABERTO
    .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1 # < ABERTO
    .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1 # < ABERTO
    .byte 1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
    .byte 1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1
    .byte 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1
    .byte 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
    
    .align 2
    MAPA_COLISAO_F3:
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1
    
    .align 2
    # MAPA DA LOJA (Saída embaixo)
    MAPA_COLISAO_LOJA:
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 
    .byte 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 
    .byte 1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1 
    .byte 1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1 
    .byte 1,1,1,0,0,0,0,0,1,1,1,1,0,0,0,0,0,1,1,1
    .byte 1,1,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,1,1
    .byte 1,1,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,1,1
    .byte 1,1,1,1,0,0,1,1,1,1,1,1,1,1,0,0,1,1,1,1
    .byte 1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1
    .byte 1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1
    .byte 1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1
    .byte 1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1

    .align 2
    # --- MUSICA ---
    notas: 
    .word 9, 0, 0, 67, 1000, 0, 74, 1000, 0, 70, 1500, 0
    .word 69, 500, 0, 67, 500, 0, 70, 500, 0, 69, 500, 0
    .word 67, 500, 0, 66, 500, 0

.text
.globl main

main:
    # --- MENU ---
    li s0, 0xFF000000
    la a1, Menu1          
    jal desenha_imagem_completa
    la a1, studios        
    li a2, 110
    li a3, 215
    jal desenha_sprite_transparente
    li s4, 0xFF200000
    li s5, 0

loop_menu:
    jal tocar_musica
    lw t0, 0(s4)
    bnez t0, mostrar_cutscenes_iniciais
    addi s5, s5, 1
    li t0, 20
    blt s5, t0, mostrar_texto
    li t0, 40
    blt s5, t0, apagar_texto
    li s5, 0
    j loop_menu

mostrar_texto:
    la a1, pressbutton1
    li a2, 60
    li a3, 160
    jal desenha_sprite_transparente
    j delay_menu

apagar_texto:
    la a1, Menu1
    li a2, 60
    li a3, 160
    la t1, pressbutton1
    lw a4, 0(t1)
    lw a5, 4(t1)
    jal restaura_fundo_parcial
    j delay_menu

delay_menu:
    li a7, 32
    li a0, 33
    ecall
    j loop_menu

# --- CUTSCENES INICIAIS ---
mostrar_cutscenes_iniciais:
    # Limpa buffer de teclado
    lw t1, 4(s4)
    
    # Tela 1: primeiroposmenu
    la a1, primeiroposmenu
    jal desenha_imagem_completa
    jal aguarda_tecla
    
    # Tela 2: posmenu
    la a1, posmenu
    jal desenha_imagem_completa
    jal aguarda_tecla
    
    # Continua para iniciar o jogo
    j iniciar_jogo_setup

# Função para aguardar tecla
aguarda_tecla:
    addi sp, sp, -4
    sw ra, 0(sp)
    
    # Delay inicial
    li a7, 32
    li a0, 300
    ecall
    
    # Limpa buffer
    lw t1, 4(s4)
    
aguarda_loop:
    jal tocar_musica
    li a7, 32
    li a0, 50
    ecall
    lw t0, 0(s4)
    beqz t0, aguarda_loop
    
    # Limpa input
    lw t1, 4(s4)
    li a7, 32
    li a0, 200
    ecall
    
    lw ra, 0(sp)
    addi sp, sp, 4
    ret

    # --- SETUP JOGO ---
iniciar_jogo_setup:
    lw t1, 4(s4) 
    
    la t0, HAS_KEY
    sw zero, 0(t0)
    la t0, DIALOG_ACTIVE
    sw zero, 0(t0)
    la t0, DEBOUNCE_TIMER
    sw zero, 0(t0)
    la t0, DIALOG_TIMER
    sw zero, 0(t0)
    la t0, ENTROU_LOJA_PRIMEIRA_VEZ
    sw zero, 0(t0)
    la t0, SAIU_LOJA_PRIMEIRA_VEZ
    sw zero, 0(t0)

    la s9, fase1            
    la s8, MAPA_COLISAO_F1  
    
    li s0, 0xFF000000
    mv a1, s9
    jal desenha_imagem_completa

setup_variaveis:
    li s0, 160      
    li s1, 200      
    
    mv a0, s0
    mv a1, s1
    la a2, jagunco      
    jal desenha_link_safe  
    jal desenha_hud
    
loop_jogo:
    # --- VERIFICAÇÃO DE TRANSIÇÕES DE FASE ---
    
    # 1. Verifica se está na LOJA e quer SAIR (Parte de baixo)
    la t0, comerciante
    beq s9, t0, check_sair_loja
    
    j check_fases_normais

check_sair_loja:
    li t0, 215             
    bge s1, t0, sair_da_loja
    j continue_loop        

check_fases_normais:
    # 2. Gatilho para ENTRAR na loja (Fase 2, Direita)
    la t0, fase2
    bne s9, t0, skip_check_loja_entry
    
    li t0, 310
    bge s0, t0, entrar_loja
    
skip_check_loja_entry:
    # 3. Transição para FASE 2 (Direita da Fase 1)
    li t0, 300
    bge s0, t0, checar_ida_fase2
    
    # 4. Transição para FASE 1 (Esquerda da Fase 2)
    li t0, 8
    blt s0, t0, tentar_voltar_fase1
    
    # 5. Transição para FASE 3 (Topo da Fase 2 ou 1)
    li t0, 20
    blt s1, t0, tentar_ir_fase3
    
    # 6. Transição de volta da FASE 3 (Baixo)
    li t0, 215
    bge s1, t0, tentar_voltar_fase2_de_cima

checar_ida_fase2:
    la t0, fase1
    bne s9, t0, continue_loop
    li t0, 300
    bge s0, t0, tentar_ir_fase2

continue_loop:
    # Atualiza timers
    la t0, DEBOUNCE_TIMER
    lw t1, 0(t0)
    beqz t1, update_dialog_timer
    addi t1, t1, -1
    sw t1, 0(t0)

update_dialog_timer:
    la t0, DIALOG_ACTIVE
    lw t1, 0(t0)
    beqz t1, check_input

check_input:
    # Verifica se pode ler teclado
    la t0, DEBOUNCE_TIMER
    lw t1, 0(t0)
    bnez t1, delay_geral
    
    lw t0, 0(s4)
    beqz t0, checar_animacao_ataque 
    
    lw t1, 4(s4)
    mv s3, t1
    mv s6, s0
    mv s7, s1

    # Verifica tecla K
    la t0, DIALOG_ACTIVE
    lw t2, 0(t0)
    li t6, 107  # k
    beq s3, t6, handle_k_button
    
    # Movimento normal
    li t5, 4
    li t6, 119      # w
    beq s3, t6, try_w
    li t6, 97       # a
    beq s3, t6, try_a
    li t6, 115      # s
    beq s3, t6, try_s
    li t6, 100      # d
    beq s3, t6, try_d
    j loop_jogo

delay_geral:
    jal tocar_musica
    li a7, 32
    li a0, 50
    ecall
    j loop_jogo

# --- LÓGICA DO COMERCIANTE ---
entrar_loja:
    # Verifica se é a primeira vez que entra na loja
    la t0, ENTROU_LOJA_PRIMEIRA_VEZ
    lw t1, 0(t0)
    bnez t1, entrar_loja_normal
    
    # Primeira vez - mostra cutscene
    li t2, 1
    sw t2, 0(t0)
    
    # Mostra tela de entrada da loja
    la a1, entradaloja
    jal desenha_imagem_completa
    jal aguarda_tecla
    
entrar_loja_normal:
    la s9, comerciante         
    la s8, MAPA_COLISAO_LOJA   
    
    li s0, 0xFF000000
    mv a1, s9
    jal desenha_imagem_completa

    # Desenha Dialogo do Comerciante
    la a1, dialogoComerciante
    li a2, 50
    li a3, 10
    jal desenha_sprite_transparente

    # Posiciona Jogador Embaixo
    li s0, 160      
    li s1, 200
    
    mv a0, s0
    mv a1, s1
    la a2, jagunco
    jal desenha_link_safe
    
    # Desenha HUD
    jal desenha_hud
    
    li s4, 0xFF200000
    lw t0, 4(s4) 

    j loop_jogo

sair_da_loja:
    # Verifica se é a primeira vez que sai da loja
    la t0, SAIU_LOJA_PRIMEIRA_VEZ
    lw t1, 0(t0)
    bnez t1, sair_loja_normal
    
    # Primeira vez - mostra cutscene
    li t2, 1
    sw t2, 0(t0)
    
    # Mostra tela "O que resta"
    la a1, oquerestareste
    jal desenha_imagem_completa
    jal aguarda_tecla
    
sair_loja_normal:
    la s9, fase2
    la s8, MAPA_COLISAO_F2
    
    li s0, 0xFF000000
    mv a1, s9
    jal desenha_imagem_completa
    
    # Sai da loja na neve (Direita)
    li s0, 290
    li s1, 120
    
    mv a0, s0
    mv a1, s1
    la a2, jagunco
    jal desenha_link_safe
    
    jal desenha_hud
    
    li s4, 0xFF200000
    lw t0, 4(s4)

    j loop_jogo

# --- OUTRAS TRANSIÇÕES ---

tentar_ir_fase2:
    la t0, fase1
    bne s9, t0, continue_loop
    la t0, HAS_KEY
    lw t1, 0(t0)
    beqz t1, bloquear_passagem
    
    # Mostra cutscene pospuzzle
    la a1, pospuzzle
    jal desenha_imagem_completa
    jal aguarda_tecla
    
    la t0, DIALOG_ACTIVE
    sw zero, 0(t0)
    la t0, ATTACK_TIMER
    sw zero, 0(t0)
    la s9, fase2
    la s8, MAPA_COLISAO_F2
    li s0, 0xFF000000
    mv a1, s9
    jal desenha_imagem_completa
    li s0, 12
    mv a0, s0
    mv a1, s1
    la a2, jagunco
    jal desenha_link_safe
    jal desenha_hud
    lw t0, 4(s4)
    j loop_jogo

tentar_voltar_fase1:
    la t0, fase2
    bne s9, t0, continue_loop
    la t0, DIALOG_ACTIVE
    sw zero, 0(t0)
    la t0, ATTACK_TIMER
    sw zero, 0(t0)
    la s9, fase1
    la s8, MAPA_COLISAO_F1
    li s0, 0xFF000000
    mv a1, s9
    jal desenha_imagem_completa
    li s0, 290
    mv a0, s0
    mv a1, s1
    la a2, jagunco
    jal desenha_link_safe
    jal desenha_hud
    lw t0, 4(s4)
    j loop_jogo

tentar_ir_fase3:
    la t0, fase2
    bne s9, t0, continue_loop
    
    # SALVA posições na pilha
    addi sp, sp, -8
    sw s0, 0(sp)
    sw s1, 4(sp)
    
    # Limpa estados
    la t0, DIALOG_ACTIVE
    sw zero, 0(t0)
    la t0, ATTACK_TIMER
    sw zero, 0(t0)
    
    # MOSTRA TELA DE HISTÓRIA DO CANGAÇO
    la a1, cangaco
    jal desenha_imagem_completa
    jal aguarda_tecla
    
    # Vai para fase 3
    la s9, fase3
    la s8, MAPA_COLISAO_F3
    la a1, fase3
    jal desenha_imagem_completa
    
    # RESTAURA posições
    lw s0, 0(sp)
    lw s1, 4(sp)
    addi sp, sp, 8
    
    # Define spawn
    li s1, 210
    
    # Delay
    li a7, 32
    li a0, 100
    ecall
    
    # Desenha cobra no meio da fase 3
    la t0, COBRA_X
    lw a0, 0(t0)
    la t0, COBRA_Y
    lw a1, 0(t0)
    la a2, cobra
    jal desenha_link_safe
    
    # Desenha personagem
    mv a0, s0
    mv a1, s1
    la a2, jagunco
    jal desenha_link_safe
    jal desenha_hud
    
    li a7, 32
    li a0, 100
    ecall
    
    j loop_jogo

tentar_voltar_fase2_de_cima:
    la t0, fase3
    bne s9, t0, continue_loop
    la t0, DIALOG_ACTIVE
    sw zero, 0(t0)
    la t0, ATTACK_TIMER
    sw zero, 0(t0)
    la s9, fase2
    la s8, MAPA_COLISAO_F2
    li s0, 0xFF000000
    mv a1, s9
    jal desenha_imagem_completa
    li s1, 30    
    li s0, 160   
    mv a0, s0
    mv a1, s1
    la a2, jagunco
    jal desenha_link_safe
    jal desenha_hud
    lw t0, 4(s4)
    j loop_jogo

bloquear_passagem:
    la a1, msg_trancado
    li a2, 120
    li a3, 110
    jal desenha_sprite_transparente
    li a7, 32
    li a0, 2000
    ecall
    la a1, fase1
    li a2, 120
    li a3, 110
    li a4, 80
    li a5, 20
    jal restaura_fundo_parcial
    mv a0, s0
    mv a1, s1
    la a2, jagunco
    jal desenha_link_safe
    j continue_loop

# --- BOTÃO K E OUTROS ---
handle_k_button:
    la t0, DIALOG_ACTIVE
    lw t1, 0(t0)
    bnez t1, fechar_dialogo_input
    j botao_acao

fechar_dialogo_input:
    la t0, fase1
    bne s9, t0, skip_fechar_dialogo
    jal fechar_dialogo
    la t0, DEBOUNCE_TIMER
    li t1, 10
    sw t1, 0(t0)
skip_fechar_dialogo:
    j loop_jogo

botao_acao:
    la t0, fase1
    bne s9, t0, checar_pedra
    
    la t0, NPC_X
    lw t1, 0(t0)
    sub t2, s0, t1
    srai t3, t2, 31
    xor t2, t2, t3
    sub t2, t2, t3 
    li t4, 40       
    bge t2, t4, checar_pedra 
    
    la t0, NPC_Y
    lw t1, 0(t0)
    sub t2, s1, t1
    srai t3, t2, 31
    xor t2, t2, t3
    sub t2, t2, t3 
    bge t2, t4, checar_pedra

    jal abrir_dialogo
    la t0, DEBOUNCE_TIMER
    li t1, 10
    sw t1, 0(t0)
    j loop_jogo 

checar_pedra:
    la t0, HAS_KEY
    lw t1, 0(t0)
    bnez t1, iniciar_ataque 
    
    la t0, ROCK_X
    lw t1, 0(t0)
    sub t2, s0, t1
    srai t3, t2, 31
    xor t2, t2, t3
    sub t2, t2, t3
    li t4, 35
    bge t2, t4, iniciar_ataque
    la t0, ROCK_Y
    lw t1, 0(t0)
    sub t2, s1, t1
    srai t3, t2, 31
    xor t2, t2, t3
    sub t2, t2, t3
    bge t2, t4, iniciar_ataque
    
    la t0, HAS_KEY
    li t1, 1
    sw t1, 0(t0)
    jal desenha_hud
    jal mostrar_mensagem_chave
    j iniciar_ataque

mostrar_mensagem_chave:
    addi sp, sp, -4
    sw ra, 0(sp)
    la a1, popup_chave
    li a2, 80
    li a3, 100
    jal desenha_sprite_transparente
    li a7, 32
    li a0, 2500
    ecall
    la a1, fase1
    li a2, 80
    li a3, 100
    li a4, 160
    li a5, 40
    jal restaura_fundo_parcial
    mv a0, s0
    mv a1, s1
    la a2, jagunco
    jal desenha_link_safe
    lw ra, 0(sp)
    addi sp, sp, 4
    ret

abrir_dialogo:
    addi sp, sp, -4
    sw ra, 0(sp)
    la t0, fase1
    bne s9, t0, fim_abrir_dialogo
    la t0, DIALOG_ACTIVE
    li t1, 1
    sw t1, 0(t0)
    la t0, DIALOG_TIMER
    sw zero, 0(t0)
    la a1, msg_npc
    li a2, 10
    li a3, 180
    jal desenha_sprite_transparente
fim_abrir_dialogo:
    lw ra, 0(sp)
    addi sp, sp, 4
    ret

fechar_dialogo:
    addi sp, sp, -4
    sw ra, 0(sp)
    la t0, DIALOG_ACTIVE
    sw zero, 0(t0)
    la t0, fase1
    bne s9, t0, skip_restore_dialog
    mv a1, s9
    li a2, 10
    li a3, 180
    li a4, 300
    li a5, 50
    jal restaura_fundo_parcial
skip_restore_dialog:
    mv a0, s0
    mv a1, s1
    la a2, jagunco
    jal desenha_link_safe
    lw ra, 0(sp)
    addi sp, sp, 4
    ret

# --- HUD ---
desenha_hud:
    addi sp, sp, -4
    sw ra, 0(sp)
    la a1, hud_bg      
    li a2, 230         
    li a3, 210         
    jal desenha_sprite_transparente
    la a1, icone_espada
    li a2, 292         
    li a3, 212         
    jal desenha_sprite_transparente
    la t0, HAS_KEY
    lw t1, 0(t0)
    beqz t1, fim_hud   
    la a1, hud_chave
    li a2, 272         
    li a3, 212         
    jal desenha_sprite_transparente
fim_hud:
    lw ra, 0(sp)
    addi sp, sp, 4
    ret

iniciar_ataque:
    la t0, ATTACK_TIMER
    li t1, 10
    sw t1, 0(t0)
    j redesenha_geral

checar_animacao_ataque:
    la t0, ATTACK_TIMER
    lw t1, 0(t0)
    beqz t1, loop_jogo
    addi t1, t1, -1
    sw t1, 0(t0)
    li a7, 32
    li a0, 33
    ecall
    j redesenha_geral

redesenha_geral:
    mv a1, s9
    mv a2, s0       
    mv a3, s1
    li a4, 22
    li a5, 22
    jal restaura_fundo_parcial
    
    # Se estiver na fase 3, redesenha a cobra (32x48)
    la t0, fase3
    bne s9, t0, skip_redraw_cobra
    
    # Restaura fundo onde está a cobra
    mv a1, s9
    la t0, COBRA_X
    lw a2, 0(t0)
    la t0, COBRA_Y
    lw a3, 0(t0)
    li a4, 32
    li a5, 48
    jal restaura_fundo_parcial
    
    # Desenha cobra novamente
    la t0, COBRA_X
    lw a0, 0(t0)
    la t0, COBRA_Y
    lw a1, 0(t0)
    la a2, cobra
    jal desenha_link_safe
    
skip_redraw_cobra:
    la t0, ATTACK_TIMER
    lw t1, 0(t0)
    bnez t1, draw_atk_sprite
    la a2, jagunco        
    j draw_final
draw_atk_sprite:
    la a2, jagunco_atk    
draw_final:
    mv a0, s0
    mv a1, s1
    jal desenha_link_safe
    lw t0, 4(s4) 
    j loop_jogo

# --- MOVIMENTO ---
try_w:
    sub s1, s1, t5
    jal verifica_colisao
    bnez a0, cancelar
    j aplicar
try_s:
    add s1, s1, t5
    jal verifica_colisao
    bnez a0, cancelar
    j aplicar
try_a:
    sub s0, s0, t5
    jal verifica_colisao
    bnez a0, cancelar
    j aplicar
try_d:
    add s0, s0, t5
    jal verifica_colisao
    bnez a0, cancelar
    j aplicar

cancelar:
    mv s0, s6
    mv s1, s7
    j loop_jogo

aplicar:
    mv a1, s9
    mv a2, s6
    mv a3, s7
    li a4, 22
    li a5, 22
    jal restaura_fundo_parcial
    
    # Se estiver na fase 3, redesenha a cobra (32x48)
    la t0, fase3
    bne s9, t0, skip_cobra_aplicar
    
    # Restaura fundo onde está a cobra
    mv a1, s9
    la t0, COBRA_X
    lw a2, 0(t0)
    la t0, COBRA_Y
    lw a3, 0(t0)
    li a4, 32
    li a5, 48
    jal restaura_fundo_parcial
    
    # Desenha cobra novamente
    la t0, COBRA_X
    lw a0, 0(t0)
    la t0, COBRA_Y
    lw a1, 0(t0)
    la a2, cobra
    jal desenha_link_safe
    
skip_cobra_aplicar:
    mv a0, s0
    mv a1, s1
    la a2, jagunco      
    jal desenha_link_safe
    li a7, 32
    li a0, 33
    ecall
    j loop_jogo

# =========================================================================
# FUNÇÕES GRÁFICAS
# =========================================================================

desenha_link_safe:
    addi sp, sp, -16
    sw ra, 12(sp)
    lw t0, 0(a2)      
    lw t1, 4(a2)      
    addi a2, a2, 8    
    li t2, 0          
L_lnk_Y:
    bge t2, t1, fim_lnk
    li t3, 0          
L_lnk_X:
    bge t3, t0, prox_lnk_Y
    add t4, a0, t3    
    bltz t4, skip_lnk_px 
    li t5, 320
    bge t4, t5, skip_lnk_px 
    add t5, a1, t2    
    bltz t5, skip_lnk_px 
    li t6, 240
    bge t5, t6, skip_lnk_px 
    lbu t6, 0(a2)
    
    # Pula pixel 255 (transparente) e 0 (preto transparente)
    li t5, 255
    beq t6, t5, skip_lnk_px
    beqz t6, skip_lnk_px
    
    add t5, a1, t2    
    li a3, 320
    mul t5, t5, a3    
    add t5, t5, t4    
    li a3, 0xFF000000
    add t5, t5, a3
    sb t6, 0(t5)      
skip_lnk_px:
    addi a2, a2, 1    
    addi t3, t3, 1    
    j L_lnk_X
prox_lnk_Y:
    addi t2, t2, 1    
    j L_lnk_Y
fim_lnk:
    lw ra, 12(sp)
    addi sp, sp, 16
    ret

verifica_colisao:
    addi sp, sp, -20
    sw ra, 16(sp)
    sw s0, 12(sp)
    sw s1, 8(sp)
    sw s2, 4(sp)
    sw s4, 0(sp)
    bltz s0, fim_livre
    li t2, 300
    bge s0, t2, fim_livre
    addi t0, s0, 11
    srli t0, t0, 4
    addi t1, s1, 11
    srli t1, t1, 4
    li t2, 20
    bge t0, t2, fim_livre
    li t2, 15
    bge t1, t2, fim_livre
    li t2, 20
    mul t3, t1, t2
    add t3, t3, t0
    mv t4, s8
    add t4, t4, t3
    lb t5, 0(t4)
    li t6, 1
    beq t5, t6, fim_bloqueado
fim_livre:
    li a0, 0
    j fim_colisao_ret
fim_bloqueado:
    li a0, 1
fim_colisao_ret:
    lw s4, 0(sp)
    lw s2, 4(sp)
    lw s1, 8(sp)
    lw s0, 12(sp)
    lw ra, 16(sp)
    addi sp, sp, 20
    ret

desenha_imagem_completa:
    addi sp, sp, -16
    sw ra, 12(sp)
    addi t0, a1, 8
    li a0, 0xFF000000
    li t1, 0
    li t2, 76800
L_full: 
    bge t1, t2, fim_full
    lb t3, 0(t0)
    sb t3, 0(a0)
    addi t0, t0, 1
    addi a0, a0, 1
    addi t1, t1, 1
    j L_full
fim_full: 
    lw ra, 12(sp)
    addi sp, sp, 16
    ret

desenha_sprite_transparente:
    addi sp, sp, -16
    sw ra, 12(sp)
    lw t0, 0(a1)
    lw t1, 4(a1)
    addi a1, a1, 8
    li t2, 0
L_spr_y: 
    bge t2, t1, fim_spr
    li t3, 0
L_spr_x: 
    bge t3, t0, prox_spr_y
    lbu t4, 0(a1)
    addi a1, a1, 1
    beqz t4, skip_px
    add t5, a3, t2
    li t6, 320
    mul t5, t5, t6
    add t6, a2, t3
    add t5, t5, t6
    li t6, 0xFF000000
    add t5, t5, t6
    sb t4, 0(t5)
skip_px: 
    addi t3, t3, 1
    j L_spr_x
prox_spr_y: 
    addi t2, t2, 1
    j L_spr_y
fim_spr: 
    lw ra, 12(sp)
    addi sp, sp, 16
    ret

restaura_fundo_parcial:
    addi sp, sp, -16
    sw ra, 12(sp)
    addi t0, a1, 8
    li t1, 0
L_rst_y: 
    bge t1, a5, fim_rst
    li t2, 0
L_rst_x: 
    bge t2, a4, prox_rst_y
    add t5, a2, t2    
    bltz t5, skip_rst
    li t6, 320
    bge t5, t6, skip_rst
    
    add t3, a3, t1
    li t4, 320
    mul t3, t3, t4
    add t3, t3, t5
    
    add t6, t0, t3
    lb t5, 0(t6)
    li t6, 0xFF000000
    add t6, t6, t3
    sb t5, 0(t6)
    
skip_rst:
    addi t2, t2, 1
    j L_rst_x
prox_rst_y: 
    addi t1, t1, 1
    j L_rst_y
fim_rst: 
    lw ra, 12(sp)
    addi sp, sp, 16
    ret

tocar_musica:
    addi sp, sp, -32
    sw ra, 28(sp)
    sw t0, 0(sp)
    sw t1, 4(sp)
    sw t2, 8(sp)
    sw t3, 12(sp)
    sw t4, 16(sp)
    la t0, notas
    lw t1, 0(t0)
    lw t2, 4(t0)
    lw t3, 8(t0)
    li t4, 12
    mul t4, t4, t2
    add t4, t4, t0
    addi t4, t4, 12
    li a7, 30
    ecall
    sub t5, a0, t3
    lw t6, 4(t4)
    bgtu t6, t5, fim_musica
    addi t2, t2, 1
    bne t2, t1, tocar_nota
    li t2, 0
    li t4, 12
    mul t4, t4, t2
    add t4, t4, t0
    addi t4, t4, 12
tocar_nota:
    li a7, 31
    lw a0, 0(t4)
    lw a1, 4(t4)
    li a2, 0
    li a3, 100
    ecall
    li a7, 30
    ecall
    sw a0, 8(t0)
    sw t2, 4(t0)
fim_musica:
    lw t4, 16(sp)
    lw t3, 12(sp)
    lw t2, 8(sp)
    lw t1, 4(sp)
    lw t0, 0(sp)
    lw ra, 28(sp)
    addi sp, sp, 32
    ret
