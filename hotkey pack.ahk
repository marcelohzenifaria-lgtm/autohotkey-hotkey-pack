#Requires AutoHotkey v2.0

kittySpam := false

F12::
{
    global kittySpam
    kittySpam := !kittySpam
    if (kittySpam)
    {
        SetTimer(SpamKitty, 100)  ;spam every 100ms
    }
    else
    {
        SetTimer(SpamKitty, 0)  ;stop spamming
    }
}
SpamKitty()
{
    global kittySpam
    if (kittySpam)
    {
        Send("😺")  ;or use 🐱 whichever kitty you like!
    }
}

clicking := false

clickSpeed := 1

;auto clicker

!C::
{
    global clicking
    clicking := !clicking
    if (clicking)
    {
        SetTimer(ClickMouse, clickspeed)
    }
    else
    {
        SetTimer(ClickMouse, 0)
    }
}
ClickMouse()
{
    if (clicking)
    {
        Click
    }
}

;apps

#n::Run("notepad.exe") ;Opens notepad
#m::Run("msedge.exe")  ;Opens microsoft edge

;website opening

!y::Run("https://www.youtube.com/")  ;opens youtube on your default browser
#d::Run("https://chromedino.com/black/") ;opens chrome dino game night version
!r::Run("https://www.youtube.com/watch?v=dQw4w9WgXcQ") ;get rickrolled

;window management

#Left::
{
    WinMove(0, 0, 683, 768, "A") ;move window to left half
}
#Right::
{ 
   WinMove(683, 0, 683, 768, "A") ;move active window to right half
}

#Up::
{
    
  WinMove( 0, 0, 1366, 768, "A") ;fullscreen
}

;gui that shows all hotkeys

MyGui := Gui("", "🚀 Hotkeys Cheat Sheet")
MyGui.BackColor := "0x1a0033"  ;deep space purple background
MyGui.SetFont("s10", "Segoe UI")  ;nice clean font
MyGui.MarginX := 20  ;left/right breathing room
MyGui.MarginY := 15  ;top/bottom breathing room

; Apps section
MyGui.SetFont("s12 Bold", "Segoe UI")
MyGui.Add("Text", "cAqua", "=== APPS ===")
MyGui.SetFont("s9", "Segoe UI")
MyGui.Add("Text", "c0x00ff88", "Win + N = Notepad")
MyGui.Add("Text", "c0x00ff88", "Win + M = Microsoft Edge")

; Websites section
MyGui.SetFont("s12 Bold", "Segoe UI")
MyGui.Add("Text", "cAqua", "=== WEBSITES ===")
MyGui.SetFont("s9", "Segoe UI")
MyGui.Add("Text", "c0x00ff88", "Alt + Y = YouTube")
MyGui.Add("Text", "c0x00ff88", "Win + D = Dino Game")
MyGui.Add("Text", "c0x00ff88", "Alt + R = RickRoll")

; Window Management section
MyGui.SetFont("s12 Bold", "Segoe UI")
MyGui.Add("Text", "cAqua", "=== WINDOW MANAGEMENT ===")
MyGui.SetFont("s9", "Segoe UI")
MyGui.Add("Text", "c0x00ff88", "Win + Left = Snap left half")
MyGui.Add("Text", "c0x00ff88", "Win + Right = Snap right half")
MyGui.Add("Text", "c0x00ff88", "Win + Up = Fullscreen")

; Auto Clicker section
MyGui.SetFont("s12 Bold", "Segoe UI")
MyGui.Add("Text", "cAqua", "=== AUTO CLICKER ===")
MyGui.SetFont("s9", "Segoe UI")
MyGui.Add("Text", "c0x00ff88", "Alt + C = Toggle auto clicker")

; Emoji & Text section
MyGui.SetFont("s12 Bold", "Segoe UI")
MyGui.Add("Text", "cAqua", "=== EMOJIS & TEXT ===")
MyGui.SetFont("s9", "Segoe UI")
MyGui.Add("Text", "c0x00ff88", "F3 = Mortals lyrics")
MyGui.Add("Text", "c0x00ff88", "F5 = Rickroll lyrics (secret weapon)")
MyGui.Add("Text", "c0x00ff88", "F6 = Emoji spammer 🤣")
MyGui.Add("Text", "c0x00ff88", "F7 = Smile faces :P:D")
MyGui.Add("Text", "c0x00ff88", "F8 = Sad emojis 😭😖😞")
MyGui.Add("Text", "c0x00ff88", "F9 = Happy emoji 😊")
MyGui.Add("Text", "c0x00ff88", "F10 = Heart emoji ❤️")
MyGui.Add("Text", "c0x00ff88", "F12 = kitty face spammer")

MyGui.Show("w450 h600")
MyGui.Opt("+Resize")  ;allows resizing

;auto emoji


F9::Send("😊")  ;happy emoji
F10::Send("❤️")  ;heart emoji
F8::Send("😭😖😞") ;types sad emojis
F7::Send(":P:D") ;smile faces
F6::Send("🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣🤣 emoji spammer heheh") ;emoji spammer

;my secret troll heheh

F5::Send("We're no strangers to love You know the rules and so do I A full commitment's what I'm thinking of You wouldn't get this from any other guy I just wanna tell you how I'm feeling Gotta make you understand Never gonna give you up Never gonna let you down Never gonna run around and desert you Never gonna make you cry Never gonna say good bye Never gonna tell a lie and hurt you We've known each other for so long Your heart's been aching but you're too shy to say it Inside we both know what's been going on We know the game and we're gonna play it And if you ask me how I'm feeling Don't tell me you're too blind to see Never gonna give you up Never gonna let you down Never gonna run around and desert you Never gonna make you cry Never gonna say goodbye Never gonna tell a lie and hurt you No, I'm never gonna give you up No, I'm never gonna let you down No, I'll never run around and hurt you Never, ever desert you We've known each other for so long Your heart's been aching but Never gonna give you up Never gonna let you down Never gonna run around and desert you Never gonna make you cry Never gonna say goodbye Never gonna tell a lie and hurt you No, I'm never gonna give you up No, I'm never gonna let you down No, I'll never run around and hurt youI'll never, ever desert you")


;my fav musics

F3::Send("Stranded in the open Dried out tears of sorrow Lacking all emotion Staring down the barrel waiting for the Final gate to open To a new tomorrow Moving with the motion Following the light that sets me free Sets me free") ;one of my av musics

