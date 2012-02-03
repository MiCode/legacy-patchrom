.class public Landroid/widget/DialerFilter;
.super Landroid/widget/RelativeLayout;
.source "DialerFilter.java"


# static fields
.field public static final DIGITS_AND_LETTERS:I = 0x1

.field public static final DIGITS_AND_LETTERS_NO_DIGITS:I = 0x2

.field public static final DIGITS_AND_LETTERS_NO_LETTERS:I = 0x3

.field public static final DIGITS_ONLY:I = 0x4

.field public static final LETTERS_ONLY:I = 0x5


# instance fields
.field mDigits:Landroid/widget/EditText;

.field mHint:Landroid/widget/EditText;

.field mIcon:Landroid/widget/ImageView;

.field mInputFilters:[Landroid/text/InputFilter;

.field private mIsQwerty:Z

.field mLetters:Landroid/widget/EditText;

.field mMode:I

.field mPrimary:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private makeDigitsPrimary()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    if-ne v0, v1, :cond_0

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DialerFilter;->swapPrimaryAndHint(Z)V

    .line 278
    :cond_0
    return-void
.end method

.method private makeLettersPrimary()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    if-ne v0, v1, :cond_0

    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/DialerFilter;->swapPrimaryAndHint(Z)V

    .line 272
    :cond_0
    return-void
.end method

.method private swapPrimaryAndHint(Z)V
    .locals 6
    .parameter "makeLettersPrimary"

    .prologue
    .line 281
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 282
    .local v3, lettersText:Landroid/text/Editable;
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 283
    .local v1, digitsText:Landroid/text/Editable;
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    .line 284
    .local v2, lettersInput:Landroid/text/method/KeyListener;
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .line 286
    .local v0, digitsInput:Landroid/text/method/KeyListener;
    if-eqz p1, :cond_0

    .line 287
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    .line 288
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    .line 294
    :goto_0
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 295
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 297
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 299
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 300
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 302
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 305
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 306
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 307
    return-void

    .line 290
    :cond_0
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    .line 291
    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 335
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    return-void

    .line 337
    :pswitch_0
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 338
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 343
    :pswitch_1
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 348
    :pswitch_2
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public clearText()V
    .locals 2

    .prologue
    .line 359
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 360
    .local v0, text:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 362
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 366
    iget-boolean v1, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    if-eqz v1, :cond_0

    .line 367
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    goto :goto_0
.end method

.method public getDigits()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFilterText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 327
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 328
    invoke-virtual {p0}, Landroid/widget/DialerFilter;->getLetters()Ljava/lang/CharSequence;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/DialerFilter;->getDigits()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getLetters()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    return v0
.end method

.method public isQwertyKeyboard()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v6, "DialerFilter"

    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 53
    new-array v1, v3, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v2}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v2, v1, v4

    iput-object v1, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    .line 55
    const v1, 0x1020005

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    .line 56
    iget-object v1, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DialerFilter must have a child EditText named hint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    iget-object v1, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 61
    iget-object v1, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    .line 62
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 63
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 64
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 67
    const v1, 0x102000c

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    .line 68
    iget-object v1, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DialerFilter must have a child EditText named primary"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    iget-object v1, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 73
    iget-object v1, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    .line 74
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 75
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 76
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 79
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {p0, v3}, Landroid/widget/DialerFilter;->setFocusable(Z)V

    .line 85
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 87
    .local v0, kmap:Landroid/view/KeyCharacterMap;
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    if-eq v1, v3, :cond_2

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    .line 88
    iget-boolean v1, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    if-eqz v1, :cond_3

    .line 89
    const-string v1, "DialerFilter"

    const-string v1, "This device looks to be QWERTY"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_1
    iput-boolean v3, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    .line 98
    invoke-virtual {p0, v3}, Landroid/widget/DialerFilter;->setMode(I)V

    .line 99
    return-void

    :cond_2
    move v1, v4

    .line 87
    goto :goto_0

    .line 92
    :cond_3
    const-string v1, "DialerFilter"

    const-string v1, "This device looks to be 12-KEY"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 108
    iget-object v0, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    :cond_0
    return-void

    .line 109
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, handled:Z
    sparse-switch p1, :sswitch_data_0

    .line 166
    iget v3, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    :sswitch_0
    if-nez v1, :cond_5

    .line 208
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 210
    :goto_1
    return v3

    .line 132
    :sswitch_1
    iget v3, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 134
    :pswitch_0
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 135
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 136
    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 140
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 141
    invoke-virtual {p0, v5}, Landroid/widget/DialerFilter;->setMode(I)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 147
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 148
    invoke-virtual {p0, v5}, Landroid/widget/DialerFilter;->setMode(I)V

    .line 150
    :cond_1
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 151
    goto :goto_0

    .line 154
    :pswitch_3
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 155
    goto :goto_0

    .line 158
    :pswitch_4
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 168
    :pswitch_5
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 172
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 174
    const/4 v1, 0x1

    .line 175
    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v2

    .line 184
    .local v2, isPrint:Z
    if-nez v2, :cond_3

    const/16 v3, 0x3e

    if-eq p1, v3, :cond_3

    const/16 v3, 0x3d

    if-ne p1, v3, :cond_0

    .line 186
    :cond_3
    sget-object v3, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 187
    .local v0, c:C
    if-eqz v0, :cond_4

    .line 188
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    and-int/2addr v1, v3

    goto/16 :goto_0

    .line 190
    :cond_4
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/widget/DialerFilter;->setMode(I)V

    goto/16 :goto_0

    .line 197
    .end local v0           #c:C
    .end local v2           #isPrint:Z
    :pswitch_6
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 198
    goto/16 :goto_0

    .line 202
    :pswitch_7
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 210
    goto/16 :goto_1

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 132
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 216
    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 217
    .local v0, a:Z
    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 218
    .local v1, b:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onModeChange(II)V
    .locals 0
    .parameter "oldMode"
    .parameter "newMode"

    .prologue
    .line 408
    return-void
.end method

.method public removeFilterWatcher(Landroid/text/TextWatcher;)V
    .locals 3
    .parameter "watcher"

    .prologue
    .line 395
    iget v1, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 396
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 400
    .local v0, text:Landroid/text/Spannable;
    :goto_0
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 401
    return-void

    .line 398
    .end local v0           #text:Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .restart local v0       #text:Landroid/text/Spannable;
    goto :goto_0
.end method

.method public setDigitsWatcher(Landroid/text/TextWatcher;)V
    .locals 6
    .parameter "watcher"

    .prologue
    .line 380
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 381
    .local v2, text:Ljava/lang/CharSequence;
    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    .line 382
    .local v1, span:Landroid/text/Spannable;
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v1, p1, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 383
    return-void
.end method

.method public setFilterWatcher(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 386
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 387
    invoke-virtual {p0, p1}, Landroid/widget/DialerFilter;->setLettersWatcher(Landroid/text/TextWatcher;)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/DialerFilter;->setDigitsWatcher(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public setLettersWatcher(Landroid/text/TextWatcher;)V
    .locals 6
    .parameter "watcher"

    .prologue
    .line 374
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 375
    .local v2, text:Ljava/lang/CharSequence;
    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    .line 376
    .local v1, span:Landroid/text/Spannable;
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v1, p1, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 377
    return-void
.end method

.method public setMode(I)V
    .locals 5
    .parameter "newMode"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 263
    :goto_0
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    .line 264
    .local v0, oldMode:I
    iput p1, p0, Landroid/widget/DialerFilter;->mMode:I

    .line 265
    invoke-virtual {p0, v0, p1}, Landroid/widget/DialerFilter;->onModeChange(II)V

    .line 266
    return-void

    .line 233
    .end local v0           #oldMode:I
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    .line 234
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    .line 240
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 241
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 245
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeLettersPrimary()V

    .line 246
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 251
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    .line 252
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 257
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeLettersPrimary()V

    .line 258
    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
