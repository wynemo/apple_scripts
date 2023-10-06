import sys
from googletrans import Translator

def translate_text(text):
    translator = Translator()
    translation = translator.translate(text, dest='zh-cn')  # Translate to English, you can change the destination language if desired
    return translation.text

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print('Please provide text to translate as a command-line argument.')
        sys.exit(1)

    input_text = sys.argv[1]
    translated_text = translate_text(input_text)
    print(f'Translated text: {translated_text}')
