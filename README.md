**1. Új gépen, egyszer:** nyiss CMD-t, és írd be ezt a sort:

```
powershell "[Net.WebRequest]::DefaultWebProxy.Credentials=[Net.CredentialCache]::DefaultCredentials;iwr https://raw.githubusercontent.com/laczkomate/j/main/j.bat -o j.bat -useb"
```

Nem ír ki semmit, ez így rendben van.

**2. Használat, bármikor, bármelyik ablakban:**

| Parancs | Mit csinál |
|---|---|
| `j` | tartalomjegyzék, az összes kártya neve |
| `j switch` | egy kártya (a név a tartalomjegyzékből) |
| `j tetelek` | a feladat szövegéből megmutatja, melyik tétel kell |
| `j gyakorlas` | hogyan érdemes gyakorolni |

**3. Ha végeztél a géppel:**

```
j torol
```

Letörli a `j`-t a gépről, és semmi nem marad utána.

A kezdő sort érdemes a telefonodra felírni. Három részből áll: proxyhoz bejelentkezés (`...DefaultCredentials;`), letöltés (`iwr` + a cím), mentés (`-o j.bat -useb`).

Ezen a gépen most még a régi `j.bat` van, abban nincs `j torol`. Pár perc múlva futtasd le újra az 1. lépést, az frissíti.

Ha ki akarod próbálni élesben, nyisd meg a `j gyakorlas` kártyát, és adok egy első feladatot. ZH1 vagy ZH2 jellegű legyen?
