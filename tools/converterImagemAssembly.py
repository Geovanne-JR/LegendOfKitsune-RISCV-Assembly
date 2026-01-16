from PIL import Image
import sys

def imagem_para_assembly(caminho_imagem):
    try:
        # Abre a imagem
        img = Image.open(caminho_imagem)
        # Converte para RGB (garante que não tenha transparência bugada)
        img = img.convert('RGB')
        
        largura, altura = img.size
        pixels = list(img.getdata())
        
        print(f"# Imagem: {caminho_imagem} ({largura}x{altura})")
        print(f".word {largura}, {altura}  # Largura e Altura (Opcional guardar)")
        print("DADOS_IMAGEM:")
        
        contador = 0
        linha_atual = "    .word "
        
        for r, g, b in pixels:
            # FPGRARS usa o formato 0x00RRGGBB
            # Convertemos R, G, B para Hexadecimal
            cor_hex = f"0x00{r:02x}{g:02x}{b:02x}"
            
            linha_atual += cor_hex + ", "
            contador += 1
            
            # Quebra a linha a cada 8 pixels para o código não ficar gigante horizontalmente
            if contador % 8 == 0:
                print(linha_atual[:-2]) # Remove a última vírgula
                linha_atual = "    .word "
        
        # Imprime o que sobrou (se não for múltiplo de 8)
        if contador % 8 != 0:
            print(linha_atual[:-2])
            
        print("\n# Fim dos dados da imagem")

    except Exception as e:
        print(f"Erro: {e}")

# Como usar: python converter.py nome_da_imagem.png
if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Uso: python converter.py <nome_do_arquivo>")
    else:
        imagem_para_assembly(sys.argv[1])