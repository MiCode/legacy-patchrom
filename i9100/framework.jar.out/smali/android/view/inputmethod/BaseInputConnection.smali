.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object; = null

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .parameter "targetView"
    .parameter "fullEditor"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 72
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .parameter "mgr"
    .parameter "fullEditor"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 65
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureDefaultComposingSpans()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 551
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 553
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 554
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 560
    .local v1, context:Landroid/content/Context;
    :goto_0
    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x1010230

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 565
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 566
    .local v2, style:Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 567
    if-eqz v2, :cond_0

    instance-of v4, v2, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    .line 568
    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 573
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #style:Ljava/lang/CharSequence;
    .end local v3           #ta:Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 555
    :cond_1
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 556
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1       #context:Landroid/content/Context;
    goto :goto_0

    .line 558
    .end local v1           #context:Landroid/content/Context;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #context:Landroid/content/Context;
    goto :goto_0
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 123
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 119
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 76
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 77
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, sps:[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 79
    array-length v3, v2

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 80
    aget-object v1, v2, v0

    .line 81
    .local v1, o:Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 82
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 79
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 86
    .end local v0           #i:I
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 11
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    const/4 v7, -0x1

    .line 577
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v3

    .line 578
    .local v3, content:Landroid/text/Editable;
    if-nez v3, :cond_0

    .line 663
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 585
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 586
    .local v1, a:I
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 590
    .local v2, b:I
    if-ge v2, v1, :cond_1

    .line 591
    move v6, v1

    .line 592
    .local v6, tmp:I
    move v1, v2

    .line 593
    move v2, v6

    .line 596
    .end local v6           #tmp:I
    :cond_1
    if-eq v1, v7, :cond_3

    if-eq v2, v7, :cond_3

    .line 597
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 610
    :cond_2
    :goto_1
    if-eqz p3, :cond_8

    .line 611
    const/4 v5, 0x0

    .line 612
    .local v5, sp:Landroid/text/Spannable;
    instance-of v7, p1, Landroid/text/Spannable;

    if-nez v7, :cond_6

    .line 613
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .end local v5           #sp:Landroid/text/Spannable;
    invoke-direct {v5, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 614
    .restart local v5       #sp:Landroid/text/Spannable;
    move-object p1, v5

    .line 615
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 616
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v7, :cond_7

    .line 617
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v4, v7, :cond_7

    .line 618
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v7, v7, v4

    const/4 v8, 0x0

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v9

    const/16 v10, 0x121

    invoke-interface {v5, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 617
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 599
    .end local v4           #i:I
    .end local v5           #sp:Landroid/text/Spannable;
    :cond_3
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 600
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 601
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 602
    :cond_4
    if-gez v2, :cond_5

    const/4 v2, 0x0

    .line 603
    :cond_5
    if-ge v2, v1, :cond_2

    .line 604
    move v6, v1

    .line 605
    .restart local v6       #tmp:I
    move v1, v2

    .line 606
    move v2, v6

    goto :goto_1

    .line 623
    .end local v6           #tmp:I
    .restart local v5       #sp:Landroid/text/Spannable;
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v5, v0

    .line 625
    :cond_7
    invoke-static {v5}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 644
    .end local v5           #sp:Landroid/text/Spannable;
    :cond_8
    if-lez p2, :cond_b

    .line 645
    const/4 v7, 0x1

    sub-int v7, v2, v7

    add-int/2addr p2, v7

    .line 649
    :goto_3
    if-gez p2, :cond_9

    const/4 p2, 0x0

    .line 650
    :cond_9
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v7

    if-le p2, v7, :cond_a

    .line 651
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result p2

    .line 652
    :cond_a
    invoke-static {v3, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 654
    invoke-interface {v3, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 662
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 647
    :cond_b
    add-int/2addr p2, v1

    goto :goto_3
.end method

.method private sendCurrentText()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 511
    iget-boolean v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .line 516
    .local v8, content:Landroid/text/Editable;
    if-eqz v8, :cond_0

    .line 517
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v6

    .line 518
    .local v6, N:I
    if-eqz v6, :cond_0

    .line 521
    if-ne v6, v2, :cond_4

    .line 524
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_2

    .line 525
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 528
    :cond_2
    new-array v7, v2, [C

    .line 529
    .local v7, chars:[C
    invoke-interface {v8, v4, v2, v7, v4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 530
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .line 531
    .local v9, events:[Landroid/view/KeyEvent;
    if-eqz v9, :cond_4

    .line 532
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v9

    if-ge v10, v1, :cond_3

    .line 534
    aget-object v1, v9, v10

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 532
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 536
    :cond_3
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 543
    .end local v7           #chars:[C
    .end local v9           #events:[Landroid/view/KeyEvent;
    .end local v10           #i:I
    :cond_4
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 545
    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 546
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 90
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 94
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 95
    .local v3, sps:[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 96
    array-length v4, v3

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 97
    aget-object v2, v3, v1

    .line 98
    .local v2, o:Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    .line 99
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 104
    .local v0, fl:I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_0

    .line 106
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 114
    .end local v0           #fl:I
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "states"

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 161
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 163
    :goto_0
    return v1

    .line 162
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 163
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 181
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 10
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v9, -0x1

    .line 192
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 193
    .local v4, content:Landroid/text/Editable;
    if-nez v4, :cond_0

    const/4 v9, 0x0

    .line 239
    :goto_0
    return v9

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 197
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 198
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 200
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 201
    move v8, v0

    .line 202
    .local v8, tmp:I
    move v0, v1

    .line 203
    move v1, v8

    .line 207
    .end local v8           #tmp:I
    :cond_1
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 208
    .local v2, ca:I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 209
    .local v3, cb:I
    if-ge v3, v2, :cond_2

    .line 210
    move v8, v2

    .line 211
    .restart local v8       #tmp:I
    move v2, v3

    .line 212
    move v3, v8

    .line 214
    .end local v8           #tmp:I
    :cond_2
    if-eq v2, v9, :cond_4

    if-eq v3, v9, :cond_4

    .line 215
    if-ge v2, v0, :cond_3

    move v0, v2

    .line 216
    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    .line 219
    :cond_4
    const/4 v5, 0x0

    .line 221
    .local v5, deleted:I
    if-lez p1, :cond_6

    .line 222
    sub-int v7, v0, p1

    .line 223
    .local v7, start:I
    if-gez v7, :cond_5

    const/4 v7, 0x0

    .line 224
    :cond_5
    invoke-interface {v4, v7, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 225
    sub-int v5, v0, v7

    .line 228
    .end local v7           #start:I
    :cond_6
    if-lez p2, :cond_8

    .line 229
    sub-int/2addr v1, v5

    .line 231
    add-int v6, v1, p2

    .line 232
    .local v6, end:I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v6, v9, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 234
    :cond_7
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 237
    .end local v6           #end:I
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 239
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 250
    .local v0, content:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 252
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 253
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 254
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 256
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 6
    .parameter "reqModes"

    .prologue
    const/4 v5, 0x0

    .line 265
    iget-boolean v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 279
    :goto_0
    return v4

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 268
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_1

    move v4, v5

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 271
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 273
    .local v1, b:I
    if-le v0, v1, :cond_2

    .line 274
    move v3, v0

    .line 275
    .local v3, tmp:I
    move v0, v1

    .line 276
    move v1, v3

    .line 279
    .end local v3           #tmp:I
    :cond_2
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 135
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 325
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 326
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-object v4

    .line 328
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 329
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 331
    .local v1, b:I
    if-le v0, v1, :cond_2

    .line 332
    move v3, v0

    .line 333
    .local v3, tmp:I
    move v0, v1

    .line 334
    move v1, v3

    .line 337
    .end local v3           #tmp:I
    :cond_2
    if-eq v0, v1, :cond_0

    .line 339
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_3

    .line 340
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 342
    :cond_3
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 350
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 351
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 375
    :goto_0
    return-object v4

    .line 353
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 354
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 356
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 357
    move v3, v0

    .line 358
    .local v3, tmp:I
    move v0, v1

    .line 359
    move v1, v3

    .line 363
    .end local v3           #tmp:I
    :cond_1
    if-gez v1, :cond_2

    .line 364
    const/4 v1, 0x0

    .line 367
    :cond_2
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 368
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    .line 372
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 373
    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 375
    :cond_4
    add-int v4, v1, p1

    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 295
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 317
    :goto_0
    return-object v4

    .line 297
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 298
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 300
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 301
    move v3, v0

    .line 302
    .local v3, tmp:I
    move v0, v1

    .line 303
    move v1, v3

    .line 306
    .end local v3           #tmp:I
    :cond_1
    if-gtz v0, :cond_2

    .line 307
    const-string v4, ""

    goto :goto_0

    .line 310
    :cond_2
    if-le p1, v0, :cond_3

    .line 311
    move p1, v0

    .line 314
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 315
    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 317
    :cond_4
    sub-int v4, v0, p1

    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 15
    .parameter "actionCode"

    .prologue
    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 383
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 387
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 506
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public reportIsSoftInputMethodShowing(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 668
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setIsSoftInputMethodShowing(Z)V

    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 487
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 488
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v0, v2

    .line 489
    .local v0, h:Landroid/os/Handler;
    :goto_0
    if-nez v0, :cond_0

    .line 490
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 491
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 494
    :cond_0
    if-eqz v0, :cond_1

    .line 495
    const/16 v2, 0x3f3

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 498
    :cond_1
    monitor-exit v1

    .line 499
    const/4 v1, 0x0

    return v1

    .line 488
    .end local v0           #h:Landroid/os/Handler;
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setComposingRegion(II)Z
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 420
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 421
    .local v2, content:Landroid/text/Editable;
    if-eqz v2, :cond_6

    .line 422
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 423
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 424
    move v0, p1

    .line 425
    .local v0, a:I
    move v1, p2

    .line 426
    .local v1, b:I
    if-le v0, v1, :cond_0

    .line 427
    move v5, v0

    .line 428
    .local v5, tmp:I
    move v0, v1

    .line 429
    move v1, v5

    .line 432
    .end local v5           #tmp:I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 433
    .local v4, length:I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 434
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 435
    :cond_2
    if-le v0, v4, :cond_3

    move v0, v4

    .line 436
    :cond_3
    if-le v1, v4, :cond_4

    move v1, v4

    .line 438
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 439
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 440
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 441
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    .end local v3           #i:I
    :cond_5
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 449
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 450
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 452
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v4           #length:I
    :cond_6
    const/4 v6, 0x1

    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v0, 0x1

    .line 415
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 416
    return v0
.end method

.method public setSelection(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    .line 461
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 462
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 479
    :goto_0
    return v2

    .line 463
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 464
    .local v1, len:I
    if-gt p1, v1, :cond_1

    if-le p2, v1, :cond_2

    :cond_1
    move v2, v3

    .line 469
    goto :goto_0

    .line 471
    :cond_2
    if-ne p1, p2, :cond_3

    const/high16 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 475
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    :goto_1
    move v2, v3

    .line 479
    goto :goto_0

    .line 477
    :cond_3
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method
