# Termit

Termit is an easy way to translate stuff in your terminal. You can check out its node.js npm version [normit](https://github.com/pawurb/normit).

## Installation
Download .zip and unzip.

## Usage
```bash
bin/termit 'source_language' 'target_language' 'text'
```

Example:

```bash
termit en es "hey cowboy where is your horse?"
=> "Hey vaquero dónde está tu caballo?"

termit fr en "qui est votre papa?"
=> "Who's Your Daddy?"
```

Quotation marks are not necessary for text data input:
```bash
termit fr ru qui est votre papa
=> "Кто твой папочка?"
```

### Speech synthesis

Specify a **-t** (talk) flag to use speech synthesis (requires mpg123):
```bash
termit en fr "hey cowboy where is your horse?" -t
=> "Hey cowboy où est votre cheval ?" # and a french voice says something about a horse
```

You can use termit as a speech synthesizer of any supported language without having to translate anything:
```bash
termit en en "hold your horses cowboy !" -t
=> "hold your horses cowboy !" # and an english voice asks you to hold on
```

## Language codes:

To find all available language codes visit https://msdn.microsoft.com/en-us/library/hh456380.aspx

## Requirements

Works with Ruby 1.9.2 and higher.

To use speech synthesis you need to have mpg123 installed.

For Windows:
Download mpg123 binaries from '' and unzip in 'C:\mpg123'. Add 'C:\mpg123' in your PATH and you are ready to go! 

## Status

It was rewritten to work with [Bing Translator](https://www.bing.com/translator) . 

## Disclaimer

Termit works by scraping the private APIs and is therefore not recommended for use in production or on a large scale.
