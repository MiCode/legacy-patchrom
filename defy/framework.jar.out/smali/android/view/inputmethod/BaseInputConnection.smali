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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .parameter "mgr"
    .parameter "fullEditor"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureDefaultComposingSpans()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x1010230

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, style:Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_0

    instance-of v4, v2, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .end local v1           #context:Landroid/content/Context;
    .end local v2           #style:Ljava/lang/CharSequence;
    .end local v3           #ta:Landroid/content/res/TypedArray;
    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1       #context:Landroid/content/Context;
    goto :goto_0

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
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 6
    .parameter "text"

    .prologue
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .local v2, sps:[Ljava/lang/Object;
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    aget-object v1, v2, v0

    .local v1, o:Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 13
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    const/4 v9, -0x1

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v3

    .local v3, content:Landroid/text/Editable;
    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .local v1, a:I
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .local v2, b:I
    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .local v6, selStart:I
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    .local v5, selEnd:I
    if-ge v2, v1, :cond_1

    move v8, v1

    .local v8, tmp:I
    move v1, v2

    move v2, v8

    .end local v8           #tmp:I
    :cond_1
    if-eq v1, v9, :cond_3

    if-eq v2, v9, :cond_3

    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :cond_2
    :goto_1
    if-eqz p3, :cond_8

    const/4 v7, 0x0

    .local v7, sp:Landroid/text/Spannable;
    instance-of v9, p1, Landroid/text/Spannable;

    if-nez v9, :cond_6

    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7           #sp:Landroid/text/Spannable;
    invoke-direct {v7, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v7       #sp:Landroid/text/Spannable;
    move-object p1, v7

    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    iget-object v9, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v9, :cond_7

    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    iget-object v9, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v9, v9

    if-ge v4, v9, :cond_7

    iget-object v9, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v9, v9, v4

    const/4 v10, 0x0

    invoke-interface {v7}, Landroid/text/Spannable;->length()I

    move-result v11

    const/16 v12, 0x121

    invoke-interface {v7, v9, v10, v11, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4           #i:I
    .end local v7           #sp:Landroid/text/Spannable;
    :cond_3
    move v1, v6

    move v2, v5

    if-gez v1, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-gez v2, :cond_5

    const/4 v2, 0x0

    :cond_5
    if-ge v2, v1, :cond_2

    move v8, v1

    .restart local v8       #tmp:I
    move v1, v2

    move v2, v8

    goto :goto_1

    .end local v8           #tmp:I
    .restart local v7       #sp:Landroid/text/Spannable;
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v7, v0

    :cond_7
    invoke-static {v7}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .end local v7           #sp:Landroid/text/Spannable;
    :cond_8
    if-lez p2, :cond_c

    const/4 v9, 0x1

    sub-int v9, v2, v9

    add-int/2addr p2, v9

    :goto_3
    if-gez p2, :cond_9

    const/4 p2, 0x0

    :cond_9
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v9

    if-le p2, v9, :cond_a

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_a
    invoke-static {v3, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    if-nez p3, :cond_d

    invoke-static {v1, v2, v3, p1}, Lcom/motorola/spellchecker/SpellingCheckManager;->replaceWithSpellCheckerSpans(IILandroid/text/Editable;Ljava/lang/CharSequence;)Landroid/text/Editable;

    :goto_4
    if-ltz v6, :cond_b

    if-eq v6, v5, :cond_b

    const-string v9, "android.ime.command.SELECTION_REPLACED"

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v9, v10}, Landroid/view/inputmethod/BaseInputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_b
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    :cond_c
    add-int/2addr p2, v1

    goto :goto_3

    :cond_d
    invoke-interface {v3, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_4
.end method

.method private sendCurrentText()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .local v8, content:Landroid/text/Editable;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v6

    .local v6, N:I
    if-eqz v6, :cond_0

    if-ne v6, v2, :cond_4

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_2

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    :cond_2
    new-array v7, v2, [C

    .local v7, chars:[C
    invoke-interface {v8, v4, v2, v7, v4}, Landroid/text/Editable;->getChars(II[CI)V

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .local v9, events:[Landroid/view/KeyEvent;
    if-eqz v9, :cond_4

    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v9

    if-ge v10, v1, :cond_3

    aget-object v1, v9, v10

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0

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

    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .local v3, sps:[Ljava/lang/Object;
    if-eqz v3, :cond_2

    array-length v4, v3

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    aget-object v2, v3, v1

    .local v2, o:Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .local v0, fl:I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .end local v0           #fl:I
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "states"

    .prologue
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 13
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .local v4, content:Landroid/text/Editable;
    if-nez v4, :cond_0

    move v10, v11

    :goto_0
    return v10

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, b:I
    if-le v0, v1, :cond_1

    move v9, v0

    .local v9, tmp:I
    move v0, v1

    move v1, v9

    .end local v9           #tmp:I
    :cond_1
    if-ltz v0, :cond_a

    if-eq v0, v1, :cond_a

    move v7, v12

    .local v7, hasSelection:Z
    :goto_1
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .local v2, ca:I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .local v3, cb:I
    if-ge v3, v2, :cond_2

    move v9, v2

    .restart local v9       #tmp:I
    move v2, v3

    move v3, v9

    .end local v9           #tmp:I
    :cond_2
    if-eq v2, v10, :cond_4

    if-eq v3, v10, :cond_4

    if-ge v2, v0, :cond_3

    move v0, v2

    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    :cond_4
    const/4 v5, 0x0

    .local v5, deleted:I
    if-lez p1, :cond_6

    sub-int v8, v0, p1

    .local v8, start:I
    if-gez v8, :cond_5

    const/4 v8, 0x0

    :cond_5
    invoke-interface {v4, v8, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    sub-int v5, v0, v8

    .end local v8           #start:I
    :cond_6
    if-lez p2, :cond_8

    sub-int/2addr v1, v5

    add-int v6, v1, p2

    .local v6, end:I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v10

    if-le v6, v10, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    :cond_7
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .end local v6           #end:I
    :cond_8
    if-eqz v7, :cond_9

    const-string v10, "android.ime.command.SELECTION_REPLACED"

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v10, v11}, Landroid/view/inputmethod/BaseInputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_9
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move v10, v12

    goto :goto_0

    .end local v2           #ca:I
    .end local v3           #cb:I
    .end local v5           #deleted:I
    .end local v7           #hasSelection:Z
    :cond_a
    move v7, v11

    goto :goto_1
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .local v0, content:Landroid/text/Editable;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 6
    .parameter "reqModes"

    .prologue
    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, b:I
    if-le v0, v1, :cond_2

    move v3, v0

    .local v3, tmp:I
    move v0, v1

    move v1, v3

    .end local v3           #tmp:I
    :cond_2
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, b:I
    if-le v0, v1, :cond_2

    move v3, v0

    .local v3, tmp:I
    move v0, v1

    move v1, v3

    .end local v3           #tmp:I
    :cond_2
    if-eq v0, v1, :cond_0

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

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
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, b:I
    if-le v0, v1, :cond_1

    move v3, v0

    .local v3, tmp:I
    move v0, v1

    move v1, v3

    .end local v3           #tmp:I
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

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
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, b:I
    if-le v0, v1, :cond_1

    move v3, v0

    .local v3, tmp:I
    move v0, v1

    move v1, v3

    .end local v3           #tmp:I
    :cond_1
    if-gtz v0, :cond_2

    const-string v4, ""

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_3

    move p1, v0

    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

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
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 15
    .parameter "actionCode"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

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

    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 34
    .parameter "action"
    .parameter "data"

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    const-string v7, "android.ime.command.REPLACE_TEXT"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.ime.command.HIGHLIGHT_WORD"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .local v4, content:Landroid/text/Editable;
    if-nez v4, :cond_3

    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v10

    .local v10, a:I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v14

    .local v14, b:I
    const/4 v7, -0x1

    if-eq v10, v7, :cond_4

    const/4 v7, -0x1

    if-eq v14, v7, :cond_4

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v20

    .local v20, length:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v29

    .local v29, selStart:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v28

    .local v28, selEnd:I
    move/from16 v0, v29

    move/from16 v1, v28

    if-le v0, v1, :cond_5

    add-int v29, v29, v28

    sub-int v28, v29, v28

    sub-int v29, v29, v28

    :cond_5
    if-gez v29, :cond_6

    const/16 v29, 0x0

    :cond_6
    if-gez v28, :cond_7

    const/16 v28, 0x0

    :cond_7
    const-string v7, "before_cursor"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .local v15, before:I
    if-gez v15, :cond_8

    neg-int v15, v15

    :cond_8
    const-string v7, "after_cursor"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .local v11, after:I
    if-gez v11, :cond_9

    neg-int v11, v11

    :cond_9
    sub-int v5, v29, v15

    .local v5, start:I
    add-int v6, v28, v11

    .local v6, end:I
    if-gez v5, :cond_a

    const/4 v5, 0x0

    :cond_a
    move v0, v5

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    move/from16 v5, v20

    :cond_b
    move v0, v6

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    move/from16 v6, v20

    :cond_c
    const-string v7, "android.ime.command.REPLACE_TEXT"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "replacement"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v24

    .local v24, replacement:Ljava/lang/CharSequence;
    if-eqz v24, :cond_13

    move v0, v5

    move v1, v6

    move-object v2, v4

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/spellchecker/SpellingCheckManager;->replaceWithSpellCheckerSpans(IILandroid/text/Editable;Ljava/lang/CharSequence;)Landroid/text/Editable;

    const-string v7, "cursor_position"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .local v16, curPosition:I
    add-int v16, v16, v5

    if-gez v16, :cond_d

    const/16 v16, 0x0

    :cond_d
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    move/from16 v16, v20

    :cond_e
    move-object v0, v4

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    if-ltz v29, :cond_f

    move/from16 v0, v29

    move/from16 v1, v28

    if-eq v0, v1, :cond_f

    const-string v7, "android.ime.command.SELECTION_REPLACED"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/BaseInputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_f
    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v16           #curPosition:I
    .end local v24           #replacement:Ljava/lang/CharSequence;
    :cond_10
    const-string v7, "anno_key"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .local v12, anno_key:Ljava/lang/CharSequence;
    const-string v7, "anno_value"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    .local v13, anno_value:Ljava/lang/CharSequence;
    const-string v7, "highlight"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .local v9, highlight:I
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-static/range {v4 .. v9}, Lcom/motorola/spellchecker/SpellingCheckManager;->attachSpellCheckerFlags(Landroid/text/Spannable;IILjava/lang/String;Ljava/lang/String;I)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v7, 0x0

    goto :goto_1

    :cond_12
    const/4 v8, 0x0

    goto :goto_2

    .end local v9           #highlight:I
    .end local v12           #anno_key:Ljava/lang/CharSequence;
    .end local v13           #anno_value:Ljava/lang/CharSequence;
    .restart local v24       #replacement:Ljava/lang/CharSequence;
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_0

    .end local v4           #content:Landroid/text/Editable;
    .end local v5           #start:I
    .end local v6           #end:I
    .end local v10           #a:I
    .end local v11           #after:I
    .end local v14           #b:I
    .end local v15           #before:I
    .end local v20           #length:I
    .end local v24           #replacement:Ljava/lang/CharSequence;
    .end local v28           #selEnd:I
    .end local v29           #selStart:I
    :cond_14
    const-string v7, "android.ime.command.MOTION_CLICK"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    .local v19, isClick:Z
    if-nez v19, :cond_15

    const-string v7, "android.ime.command.MOTION_EVENT"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1c

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    move-object v7, v0

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v25

    .local v25, root:Landroid/view/View;
    if-eqz v25, :cond_1b

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    check-cast v30, Landroid/view/ViewRoot;

    .local v30, viewRoot:Landroid/view/ViewRoot;
    const-string v7, "BaseInputConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "root view = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", view root = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v30, :cond_16

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/view/MotionEvent;

    .local v17, event:Landroid/view/MotionEvent;
    if-eqz v17, :cond_1b

    const/4 v7, 0x2

    move v0, v7

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .local v21, loc:[I
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    const/4 v8, 0x0

    aget v8, v21, v8

    int-to-float v8, v8

    sub-float v32, v7, v8

    .local v32, x:F
    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/4 v8, 0x1

    aget v8, v21, v8

    int-to-float v8, v8

    sub-float v33, v7, v8

    .local v33, y:F
    const-string v7, "BaseInputConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loc: ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v21, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v21, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") and x = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , y = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "STATUSBAR_HEIGHT"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    .local v26, sb_height:I
    const/4 v7, 0x1

    aget v7, v21, v7

    move v0, v7

    move/from16 v1, v26

    if-le v0, v1, :cond_18

    const-string v7, "INPUT_METHOD_CONTENT_TOP_INSETS"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .local v18, im_content_top_inset:I
    const-string v7, "SCREEN_HEIGHT"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .local v27, screen_height:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v31

    .local v31, view_height:I
    const/16 v23, 0x0

    .local v23, new_top:I
    const/4 v7, 0x1

    aget v7, v21, v7

    add-int v7, v7, v31

    move/from16 v0, v27

    move v1, v7

    if-ne v0, v1, :cond_1a

    const/4 v7, 0x1

    aget v7, v21, v7

    sub-int v23, v7, v18

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_17

    move/from16 v23, v26

    :cond_17
    invoke-virtual/range {v17 .. v17}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move/from16 v0, v23

    int-to-float v0, v0

    move v8, v0

    sub-float v33, v7, v8

    .end local v18           #im_content_top_inset:I
    .end local v23           #new_top:I
    .end local v27           #screen_height:I
    .end local v31           #view_height:I
    :cond_18
    const-string v7, "BaseInputConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "final event pos: x = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , y = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-static/range {v17 .. v17}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v22

    .local v22, newEvent:Landroid/view/MotionEvent;
    if-eqz v19, :cond_19

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->dispatchPointer(Landroid/view/MotionEvent;)V

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    const/4 v7, 0x1

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_19
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->dispatchPointer(Landroid/view/MotionEvent;)V

    const/4 v7, 0x1

    goto/16 :goto_0

    .end local v22           #newEvent:Landroid/view/MotionEvent;
    .restart local v18       #im_content_top_inset:I
    .restart local v23       #new_top:I
    .restart local v27       #screen_height:I
    .restart local v31       #view_height:I
    :cond_1a
    sub-int v7, v27, v26

    sub-int v7, v7, v18

    sub-int v7, v7, v31

    div-int/lit8 v7, v7, 0x2

    add-int v23, v26, v7

    goto :goto_3

    .end local v17           #event:Landroid/view/MotionEvent;
    .end local v18           #im_content_top_inset:I
    .end local v21           #loc:[I
    .end local v23           #new_top:I
    .end local v26           #sb_height:I
    .end local v27           #screen_height:I
    .end local v30           #viewRoot:Landroid/view/ViewRoot;
    .end local v31           #view_height:I
    .end local v32           #x:F
    .end local v33           #y:F
    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_0

    .end local v25           #root:Landroid/view/View;
    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object v0, v2

    .local v0, h:Landroid/os/Handler;
    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/16 v2, 0x3f3

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    monitor-exit v1

    const/4 v1, 0x0

    return v1

    .end local v0           #h:Landroid/os/Handler;
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

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

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .local v2, content:Landroid/text/Editable;
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    move v0, p1

    .local v0, a:I
    move v1, p2

    .local v1, b:I
    if-le v0, v1, :cond_0

    move v5, v0

    .local v5, tmp:I
    move v0, v1

    move v1, v5

    .end local v5           #tmp:I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .local v4, length:I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-le v0, v4, :cond_3

    move v0, v4

    :cond_3
    if-le v1, v4, :cond_4

    move v1, v4

    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_5

    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3           #i:I
    :cond_5
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

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

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    return v0
.end method

.method public setSelection(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .local v1, len:I
    if-gt p1, v1, :cond_1

    if-le p2, v1, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-ne p1, p2, :cond_3

    const/high16 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method
