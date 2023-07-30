# Diagram style samples

## D2

Примеры с указанием команды генерации `.svg`:

* [Standart](arch.md), `d2 arch.d2 arch.svg`
* [Theme: Sketch](arch-sketch.md), `d2 --sketch arch.d2 arch-sketch.svg`
* [Render: ELK](arch-elk.md), `d2 --layout=elk arch.d2 arch-elk.svg`
* [Render: ELK, Theme: Sketch](arch-elk-sketch.md), `d2 --layout=elk --sketch arch.d2 arch-elk-sketch.svg`

## Mermaid

Этот формат Github/Gitea конвертят в .svg на лету.

Примеры с указанием директивы, которой исходники отличаются между собой:

* [Standart](mermaid.md)
* [Theme: neutral](mermaid-neutral.md), `%%{init: {"theme": "neutral" }%%`
* [Theme: neutral, Arrow: linear](mermaid-neutral-linear.md), `%%{init: {"theme": "neutral","flowchart": { "curve": "linear"}} }%%`
* [Arrow: linear](mermaid-linear.md), `%%{init: {"flowchart": { "curve": "linear"}} }%%`
* [Render: ELK](mermaid-elk.md), `%%{init: {"flowchart": {"defaultRenderer": "elk"}} }%%`
* [Render: ELK, Theme:neutral](mermaid-elk-neutral.md), `%%{init: {"theme": "neutral","flowchart": {"defaultRenderer": "elk"}} }%%`

Пример команды для генерации локальной копии:

```sh
IMG=ghcr.io/mermaid-js/mermaid-cli/mermaid-cli:10.2.5-beta.9
docker run --rm -u `id -u`:`id -g` -v $(PWD):/data $(IMG) -i mermaid.md -o readme.md
```

## См также

* [D2](https://d2lang.com/)
* [Mermaid](https://mermaid.js.org/intro/)
* [Postgresql schema -> D2](https://github.com/LeKovr/d2-erd-from-postgres)
* Данные для диаграммы взяты из архитектуры проекта [Showonce](https://github.com/LeKovr/showonce) v1.0
