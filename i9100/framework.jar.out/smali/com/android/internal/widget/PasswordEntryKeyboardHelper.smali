.class public Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
.super Ljava/lang/Object;
.source "PasswordEntryKeyboardHelper.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field public static final KEYBOARD_MODE_ALPHA:I = 0x0

.field public static final KEYBOARD_MODE_NUMERIC:I = 0x1

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PasswordEntryKeyboardHelper"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mKeyboardMode:I

.field private mKeyboardState:I

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSoundEffectsEnabled:Z

.field private mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

.field private mTargetView:Landroid/view/View;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "keyboardView"
    .parameter "targetView"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 45
    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 60
    iput-object p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    .line 62
    iput-object p2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 63
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->createKeyboards()V

    .line 64
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 65
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibrator:Landroid/os/Vibrator;

    .line 66
    return-void
.end method

.method private createKeyboards()V
    .locals 5

    .prologue
    const v4, 0x10202ae

    const/4 v3, 0x1

    .line 73
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0004

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 74
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0006

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 78
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0007

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 82
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    .line 84
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0008

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 87
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const v2, 0x10b0009

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->enableShiftLock()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShifted(Z)Z

    .line 91
    return-void
.end method

.method private handleBackspace()V
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendDownUpKeyEvents(I)V

    .line 200
    return-void
.end method

.method private handleCharacter(I[I)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 232
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->sendKeyEventsToTarget(I)V

    .line 235
    return-void
.end method

.method private handleClose()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method private handleModeChange()V
    .locals 3

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 186
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    const/4 v1, 0x0

    .line 187
    .local v1, next:Landroid/inputmethodservice/Keyboard;
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v2, :cond_3

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    .line 192
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 193
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 194
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 196
    :cond_2
    return-void

    .line 189
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v2, :cond_1

    .line 190
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    goto :goto_0
.end method

.method private handleShift()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 203
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-nez v3, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 207
    .local v0, current:Landroid/inputmethodservice/Keyboard;
    const/4 v2, 0x0

    .line 208
    .local v2, next:Lcom/android/internal/widget/PasswordEntryKeyboard;
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    if-ne v0, v3, :cond_5

    :cond_2
    move v1, v5

    .line 210
    .local v1, isAlphaMode:Z
    :goto_1
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-nez v3, :cond_8

    .line 211
    if-eqz v1, :cond_6

    move v3, v5

    :goto_2
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 212
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    .line 220
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    .line 221
    if-eq v2, v0, :cond_4

    .line 222
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 224
    :cond_4
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v4, :cond_c

    move v3, v5

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard;->setShiftLocked(Z)V

    .line 225
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-eqz v4, :cond_d

    move v4, v5

    :goto_5
    invoke-virtual {v3, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    goto :goto_0

    .end local v1           #isAlphaMode:Z
    :cond_5
    move v1, v6

    .line 208
    goto :goto_1

    .restart local v1       #isAlphaMode:Z
    :cond_6
    move v3, v4

    .line 211
    goto :goto_2

    .line 212
    :cond_7
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    goto :goto_3

    .line 213
    :cond_8
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v5, :cond_a

    .line 214
    iput v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 215
    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    :goto_6
    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboardShifted:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    goto :goto_6

    .line 216
    :cond_a
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    if-ne v3, v4, :cond_3

    .line 217
    iput v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 218
    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    :goto_7
    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSymbolsKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    move-object v2, v3

    goto :goto_7

    :cond_c
    move v3, v6

    .line 224
    goto :goto_4

    :cond_d
    move v4, v6

    .line 225
    goto :goto_5
.end method

.method private playKeyClick(I)V
    .locals 6
    .parameter "primaryCode"

    .prologue
    .line 251
    iget-boolean v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSoundEffectsEnabled:Z

    if-eqz v4, :cond_1

    .line 252
    const/high16 v0, -0x4080

    .line 253
    .local v0, FX_VOLUME:F
    const/16 v1, 0xa

    .line 254
    .local v1, KEYCODE_ENTER:I
    const/16 v2, 0x20

    .line 256
    .local v2, KEYCODE_SPACE:I
    iget-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 260
    :cond_0
    const/4 v3, 0x5

    .line 261
    .local v3, sound:I
    sparse-switch p1, :sswitch_data_0

    .line 273
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v5, -0x4080

    invoke-virtual {v4, v3, v5}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 275
    .end local v0           #FX_VOLUME:F
    .end local v1           #KEYCODE_ENTER:I
    .end local v2           #KEYCODE_SPACE:I
    .end local v3           #sound:I
    :cond_1
    return-void

    .line 263
    .restart local v0       #FX_VOLUME:F
    .restart local v1       #KEYCODE_ENTER:I
    .restart local v2       #KEYCODE_SPACE:I
    .restart local v3       #sound:I
    :sswitch_0
    const/4 v3, 0x7

    .line 264
    goto :goto_0

    .line 267
    :sswitch_1
    const/16 v3, 0x8

    .line 268
    goto :goto_0

    .line 270
    :sswitch_2
    const/4 v3, 0x6

    goto :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        -0x4 -> :sswitch_1
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 9
    .parameter "character"

    .prologue
    .line 115
    iget-object v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 116
    .local v3, handler:Landroid/os/Handler;
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [C

    const/4 v7, 0x0

    int-to-char v8, p1

    aput-char v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 118
    .local v2, events:[Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 119
    array-length v0, v2

    .line 120
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 121
    aget-object v1, v2, v4

    .line 122
    .local v1, event:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x4

    invoke-static {v1, v5}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 124
    const/16 v5, 0x3ed

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .end local v0           #N:I
    .end local v1           #event:Landroid/view/KeyEvent;
    .end local v4           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public isAlpha()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 141
    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleBackspace()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0

    .line 145
    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleClose()V

    goto :goto_0

    .line 148
    :cond_3
    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleModeChange()V

    goto :goto_0

    .line 151
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleCharacter(I[I)V

    .line 153
    iget v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 156
    invoke-direct {p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->handleShift()V

    goto :goto_0
.end method

.method public onPress(I)V
    .locals 3
    .parameter "primaryCode"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 246
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->playKeyClick(I)V

    .line 247
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 279
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 283
    return-void
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 14
    .parameter "keyEventCode"

    .prologue
    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 131
    .local v1, eventTime:J
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 132
    .local v12, handler:Landroid/os/Handler;
    const/16 v13, 0x3f3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    const/16 v13, 0x3f3

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v13, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method

.method public setKeyboardMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mSoundEffectsEnabled:Z

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 111
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardMode:I

    .line 112
    return-void

    :cond_0
    move v1, v3

    .line 94
    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mQwertyKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 99
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 100
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_password"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v4

    .line 103
    .local v0, visiblePassword:Z
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_1

    .end local v0           #visiblePassword:Z
    :cond_1
    move v0, v3

    .line 100
    goto :goto_2

    .line 106
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mNumericKeyboard:Lcom/android/internal/widget/PasswordEntryKeyboard;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 107
    iput v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardState:I

    .line 108
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setVibratePattern(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, tmpArray:[I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 174
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 175
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 182
    :cond_1
    return-void

    .line 169
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 170
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_0

    .line 171
    const-string v3, "PasswordEntryKeyboardHelper"

    const-string v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 178
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    .line 179
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method
