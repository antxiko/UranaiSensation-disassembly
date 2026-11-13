# Los textos

Los textos van en japonés, casi todo en hiragana, y se pintan con la fuente que cada parte deja en la página 1 de la
VRAM (`tools/fuente.py`): las 53 letras de 0x01-0x35 son fijas; las sonoras y las sílabas dobles (が, きゃ...) las monta
el núcleo al pintar (tablas 0x919F y 0x91B8); y **los kanji cambian de pantalla en pantalla**, porque cada parte carga
los suyos en los mismos códigos (el kanji 中 lleva el 0x8A en la parte p1D, el 0x5D en la p1E y el 0x60 en la p26). Por eso un texto
leído del disco sin su pantalla sale con letras cambiadas, y los de aquí están **copiados de las pantallas que salen
de ejecutar el disco** (ver [El programa](EL-PROGRAMA.html) y [Las adivinaciones](LAS-ADIVINACIONES.html)), con la
fuente de cada una. Donde pone «(nombre)» va el de la persona elegida.

Los textos largos de las suertes (las de la omikuji, la mano, el horóscopo y el grupo sanguíneo) no van en el código:
se leen de los sectores de datos al dar el resultado. Aquí van los que salen en las pantallas recorridas.

## La pantalla principal y el menú

| original | traducción |
|---|---|
| PUSH SPACE KEY | pulsa la barra espaciadora |
| MENU · INPUT · DISPLAY · DELETE | menú · apuntar · ver · borrar |
| 何番に 登録しますか？ | ¿en qué número lo apunto? |
| 血液型相性占い | compatibilidad por el grupo sanguíneo |
| おみくじ | omikuji (la suerte del templo) |
| めいぼ | la lista de personas |
| 西洋占星術 | astrología occidental |
| 手相占い | lectura de la mano |
| はい · いいえ | sí · no |

## Apuntar a una persona (INPUT)

| original | traducción |
|---|---|
| 名前を、いんぷっとして下さい。 | escribe el nombre |
| SP · おわり | espacio · terminar (en la tabla de letras) |
| これで いいですか？ | ¿así está bien? |
| (nombre) の生年月日を、いんぷっとして下さい。 | escribe la fecha de nacimiento de (nombre) |
| いんぷっと · わからない · やめる | escribir · no lo sé · dejarlo |
| 昭和 年 月 日 | año, mes y día de la era Shōwa |
| (nombre) の出生地を、いんぷっとして下さい。 | escribe el lugar de nacimiento de (nombre) |
| 1:15000000 | la escala del mapa de Japón |
| (nombre) の出生時間を、いんぷっとして下さい。 | escribe la hora de nacimiento de (nombre) |
| 時 分 | horas, minutos |
| (nombre) の性別を、いんぷっとして下さい。 | escribe el sexo de (nombre) |
| 男性 · 女性 | hombre · mujer |
| (nombre) の血液型を、いんぷっとして下さい。 | escribe el grupo sanguíneo de (nombre) |
| A型 | grupo A |
| かえたい時は、いんぷっとを しなおして下さい | si quieres cambiarlo, vuelve a escribirlo |

## La omikuji

| original | traducción |
|---|---|
| おみくじを ひく | sacar la omikuji |
| おみくじをひく前に おまいりを する | antes de sacarla, rezar en el templo |
| すずをふる · かしわでを うつ | tocar la campana · dar las palmadas |
| 運勢 · 旅行 · 願望 · 学問 · 待人 · 争事 · 失物 · ETC. | la suerte · los viajes · los deseos · los estudios · la persona esperada · los pleitos · lo perdido · etc. |
| はじめる · おわり | empezar · terminar |
| すとっぷ | ¡para! |
| 大吉 | la gran suerte |
| いよく みちあふれ、なにをしても大せいこう♪ | rebosas de ganas: hagas lo que hagas, un gran éxito ♪ |

Los ocho niveles, con el texto del primer tema (la suerte) y la variante 0 (forzados: ver
[Las adivinaciones](LAS-ADIVINACIONES.html)):

| original | traducción |
|---|---|
| 大吉 · まんかいの やえざくらの ように人生が、はなひらく | la gran suerte · la vida florece como los cerezos dobles en plena flor |
| 中吉 · まなつのひまわりのように 人生に いきおいがある | suerte media · como un girasol en pleno verano, la vida va con fuerza |
| 小吉 · かわぎしに さきみだれる コスモスのように のどか | suerte pequeña · tranquila, como los cosmos que florecen en la orilla del río |
| 末吉 · あせらず じきを待て！ のんびりする方がよし | suerte al final · ¡sin prisas, espera el momento! mejor tomárselo con calma |
| 吉 · 今をのがして チャンスは なし！ はやめにつかめ | suerte · si la dejas escapar ahora, no hay más ocasiones: agárrala pronto |
| 凶 · あきのサマーセーターの ように、うすらさむい運勢 | mala suerte · una suerte fresquita, como un jersey de verano en otoño |
| 大凶 · 風あたりが つよい。 今は たえる事！ | muy mala suerte · el viento sopla fuerte: ¡ahora toca aguantar! |
| 大々凶 · からだがひえてしまって もう 動けない。がまん | malísima · el cuerpo se ha quedado helado y ya no se puede mover: paciencia |

## La lectura de la mano

| original | traducción |
|---|---|
| 手をあわせて ゆびを くんで下さい | junta las manos y cruza los dedos |
| おやゆびが 下になった方の手が 占う手です | la mano cuyo pulgar queda debajo es la que se lee |
| 占う手を えらんで下さい | elige la mano que se va a leer |
| 右手 · 左手 | mano derecha · mano izquierda |
| 生命線 · 頭脳線 · 感情線 · 運命線 · 結婚線 · 全体 · その他の線 | la línea de la vida · de la cabeza · del corazón · del destino · del matrimonio · el conjunto · las otras líneas |
| 生命線から、人さし指の下に向けて、のぼっていく線が出ている | de la línea de la vida sale una línea que sube hacia debajo del índice |
| 運命線にそってのぼる生命線 | una línea de la vida que sube junto a la del destino |
| 頭脳線が 2本ある | hay dos líneas de la cabeza |
| 感情線の先が、人さし指まで のびている | la punta de la línea del corazón llega hasta el índice |
| 運命線が感情線と1つになって、人さし指の下まで のびている | la línea del destino se junta con la del corazón y llega hasta debajo del índice |
| 短い しわが、たくさんある | hay muchas arrugas cortas |
| 生命線と頭脳線が、はなれている | la línea de la vida y la de la cabeza están separadas |
| くすり指のつけねに、1本くっきりと出ている | en la base del anular sale una, bien marcada |
| OK！ | ¡vale! |
| 運勢 · 恋愛運 · 健康運 · 金運 · 仕事運 · 性格 · おわり | la suerte · en el amor · en la salud · con el dinero · en el trabajo · el carácter · terminar |
| どこに 出力しますか？ | ¿por dónde lo saco? |
| てれび · ぷりんたー · やめる | la tele · la impresora · dejarlo |
| 「(nombre) には、金運の神さまが、ついているみたいよ！ お金には、こまらずに 生きていけそう」 | «(nombre) tiene de su parte al dios de la suerte con el dinero, parece. Vivirá sin apuros de dinero» |

## El horóscopo

| original | traducción |
|---|---|
| Horoscope | el horóscopo (en inglés, en un rótulo) |
| (nombre) の上昇宮は はくよう宮です | el ascendente de (nombre) es Aries (白羊宮, «el palacio del carnero blanco») |
| 性格 · 恋愛 · 健康 · 金運 · おわり | el carácter · el amor · la salud · el dinero · terminar |
| なにを うらないたいのか えらんで下さい | elige sobre qué quieres la suerte |
| 「(nombre) は、 自分の目的のためなら どんな事でもする人！ たとえば 『この人、 | «(nombre) es de los que hacen lo que sea por sus fines. Por ejemplo: "esta persona, ...» |

## El grupo sanguíneo

| original | traducción |
|---|---|
| おわり · 総合 · 恋愛 | terminar · en conjunto · en el amor |
| 65％ | el porcentaje de compatibilidad |

## La impresora de mano

El programa puede sacar las suertes por una impresora de mano (はんでぃ ぷりんたー, *handy printer*), de las que se
pasan con la mano por encima del papel. Sus avisos están en las partes p0B, p18, p1B, p1D, p1E, p24, p26, p27 y p28:

| original | traducción |
|---|---|
| はんでぃ ぷりんたーで ぷりんとあうとします！！ | ¡¡se imprime con la impresora de mano!! |
| ぷりんたーが せっと されていません！！ | ¡¡la impresora no está puesta!! |
| ただいま ぷりんとあうと中です！！ | ¡¡imprimiendo!! |
| ぷりんとあうとを やめました！！ | ¡¡impresión cancelada!! |
| ぷりんとあうとが おわりました！！ | ¡¡impresión terminada!! |
| ぷりんたーを うごかしてください | mueve la impresora |
| ぷりんとしたいところに おいてください | ponla donde quieras imprimir |

En «ただいま ぷりんとあうと中です» el kanji 中 va con el código que le da cada parte: 0x8A en p1D, 0x5D en p1E,
0x60 en p26 y 0xDB en p27. Leídos con la fuente de la pantalla principal, el 0x5D sale 女 y el 0x60 sale 生.
