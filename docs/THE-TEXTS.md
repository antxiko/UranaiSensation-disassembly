# The texts

The texts are in Japanese, nearly all in hiragana, and are painted with the font each part leaves in page 1 of the
VRAM (`tools/fuente.py`): the 53 letters at 0x01-0x35 are fixed; the voiced syllables and the double ones (が,
きゃ...) are put together by the kernel as it paints (tables 0x919F and 0x91B8); and **the kanji change from screen to
screen**, because each part loads its own in the same codes (the kanji 中 is 0x8A in part p1D, 0x5D in p1E and 0x60
in p26). That is why a text read from the disk without its screen comes out with the wrong letters, and the ones
here are **copied from the screens that come from running the disk** (see [The program](THE-PROGRAM.html) and
[The fortunes](THE-FORTUNES.html)), with the font of each one. Where it says «(name)» goes the chosen person's name.

The long texts of the fortunes (those of the omikuji, the hand, the horoscope and the blood type) are not in the
code: they are read from the data sectors when the result is given. These are the ones that come out on the screens
gone through.

## The main screen and the menu

| original | translation |
|---|---|
| PUSH SPACE KEY | press the space bar |
| MENU · INPUT · DISPLAY · DELETE | menu · enter · show · delete |
| 何番に 登録しますか？ | which number do I enter it in? |
| 血液型相性占い | match by blood type |
| おみくじ | omikuji (the temple fortune) |
| めいぼ | the list of people |
| 西洋占星術 | Western astrology |
| 手相占い | palm reading |
| はい · いいえ | yes · no |

## Entering a person (INPUT)

| original | translation |
|---|---|
| 名前を、いんぷっとして下さい。 | type the name |
| SP · おわり | space · end (on the table of letters) |
| これで いいですか？ | is this all right? |
| (name) の生年月日を、いんぷっとして下さい。 | type (name)'s date of birth |
| いんぷっと · わからない · やめる | input · don't know · quit |
| 昭和 年 月 日 | year, month and day of the Shōwa era |
| (name) の出生地を、いんぷっとして下さい。 | type (name)'s place of birth |
| 1:15000000 | the scale of the map of Japan |
| (name) の出生時間を、いんぷっとして下さい。 | type (name)'s time of birth |
| 時 分 | hours, minutes |
| (name) の性別を、いんぷっとして下さい。 | type (name)'s sex |
| 男性 · 女性 | man · woman |
| (name) の血液型を、いんぷっとして下さい。 | type (name)'s blood type |
| A型 | type A |
| かえたい時は、いんぷっとを しなおして下さい | if you want to change it, type it again |

## The omikuji

| original | translation |
|---|---|
| おみくじを ひく | draw the omikuji |
| おみくじをひく前に おまいりを する | before drawing it, pray at the temple |
| すずをふる · かしわでを うつ | ring the bell · clap your hands |
| 運勢 · 旅行 · 願望 · 学問 · 待人 · 争事 · 失物 · ETC. | fortune · travel · wishes · studies · the awaited person · disputes · lost things · etc. |
| はじめる · おわり | start · end |
| すとっぷ | stop! |
| 大吉 | great blessing |
| いよく みちあふれ、なにをしても大せいこう♪ | brimming with drive: whatever you do, a great success ♪ |

The eight levels, with the text of the first topic (fortune) and variant 0 (forced: see
[The fortunes](THE-FORTUNES.html)):

| original | translation |
|---|---|
| 大吉 · まんかいの やえざくらの ように人生が、はなひらく | great blessing · life blossoms like double cherry trees in full bloom |
| 中吉 · まなつのひまわりのように 人生に いきおいがある | middle blessing · like a sunflower in midsummer, life goes with vigour |
| 小吉 · かわぎしに さきみだれる コスモスのように のどか | small blessing · peaceful, like cosmos blooming all over the riverbank |
| 末吉 · あせらず じきを待て！ のんびりする方がよし | blessing in the end · don't rush, wait for the right time! better to take it easy |
| 吉 · 今をのがして チャンスは なし！ はやめにつかめ | blessing · let it slip now and there is no other chance: grab it early |
| 凶 · あきのサマーセーターの ように、うすらさむい運勢 | bad luck · a chilly fortune, like a summer jumper in autumn |
| 大凶 · 風あたりが つよい。 今は たえる事！ | great bad luck · the wind blows hard: now is the time to endure! |
| 大々凶 · からだがひえてしまって もう 動けない。がまん | very great bad luck · your body has gone cold and you cannot move any more: bear it |

## Palm reading

| original | translation |
|---|---|
| 手をあわせて ゆびを くんで下さい | put your hands together and cross your fingers |
| おやゆびが 下になった方の手が 占う手です | the hand whose thumb ends up underneath is the one that is read |
| 占う手を えらんで下さい | choose the hand to read |
| 右手 · 左手 | right hand · left hand |
| 生命線 · 頭脳線 · 感情線 · 運命線 · 結婚線 · 全体 · その他の線 | the life line · head line · heart line · fate line · marriage line · the whole hand · the other lines |
| 生命線から、人さし指の下に向けて、のぼっていく線が出ている | from the life line a line rises towards the base of the index finger |
| 運命線にそってのぼる生命線 | a life line that rises alongside the fate line |
| 頭脳線が 2本ある | there are two head lines |
| 感情線の先が、人さし指まで のびている | the end of the heart line reaches the index finger |
| 運命線が感情線と1つになって、人さし指の下まで のびている | the fate line joins the heart line and reaches below the index finger |
| 短い しわが、たくさんある | there are many short wrinkles |
| 生命線と頭脳線が、はなれている | the life line and the head line are apart |
| くすり指のつけねに、1本くっきりと出ている | at the base of the ring finger there is one, clearly marked |
| OK！ | OK! |
| 運勢 · 恋愛運 · 健康運 · 金運 · 仕事運 · 性格 · おわり | fortune · in love · in health · with money · at work · character · end |
| どこに 出力しますか？ | where do I output it? |
| てれび · ぷりんたー · やめる | the TV · the printer · quit |
| 「(name) には、金運の神さまが、ついているみたいよ！ お金には、こまらずに 生きていけそう」 | «(name) seems to have the god of money luck on their side! Looks like they will get through life without money troubles» |

## The horoscope

| original | translation |
|---|---|
| Horoscope | the horoscope (in English, on a sign) |
| (name) の上昇宮は はくよう宮です | (name)'s ascendant is Aries (白羊宮, «the palace of the white ram») |
| 性格 · 恋愛 · 健康 · 金運 · おわり | character · love · health · money · end |
| なにを うらないたいのか えらんで下さい | choose what you want your fortune told about |
| 「(name) は、 自分の目的のためなら どんな事でもする人！ たとえば 『この人、 | «(name) is someone who will do anything for their own ends! For example, "this person, ...» |

## Blood type

| original | translation |
|---|---|
| おわり · 総合 · 恋愛 | end · overall · love |
| 65％ | the match percentage |

## The handy printer

The program can print the fortunes on a handheld printer (はんでぃ ぷりんたー, *handy printer*), the kind that is
moved by hand over the paper. Its messages are in parts p0B, p18, p1B, p1D, p1E, p24, p26, p27 and p28:

| original | translation |
|---|---|
| はんでぃ ぷりんたーで ぷりんとあうとします！！ | printing on the handy printer!! |
| ぷりんたーが せっと されていません！！ | the printer is not set!! |
| ただいま ぷりんとあうと中です！！ | printing now!! |
| ぷりんとあうとを やめました！！ | printing cancelled!! |
| ぷりんとあうとが おわりました！！ | printing finished!! |
| ぷりんたーを うごかしてください | move the printer |
| ぷりんとしたいところに おいてください | put it where you want to print |

In «ただいま ぷりんとあうと中です» the kanji 中 has the code each part gives it: 0x8A in p1D, 0x5D in p1E, 0x60 in
p26 and 0xDB in p27. Read with the font of the main screen, 0x5D comes out as 女 and 0x60 as 生.
