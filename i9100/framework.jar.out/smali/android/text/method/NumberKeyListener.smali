.class public abstract Landroid/text/method/NumberKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "NumberKeyListener.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    return-void
.end method

.method protected static ok([CC)Z
    .locals 3
    .parameter "accept"
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 82
    array-length v1, p0

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 83
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    move v1, v2

    .line 88
    :goto_1
    return v1

    .line 82
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v7, 0x1

    .line 45
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 46
    .local v0, accept:[C
    const/4 v1, 0x0

    .line 49
    .local v1, filter:Z
    move v3, p2

    .local v3, i:I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 50
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_1

    .line 55
    :cond_0
    if-ne v3, p3, :cond_2

    .line 57
    const/4 v6, 0x0

    .line 78
    :goto_1
    return-object v6

    .line 49
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_2
    sub-int v6, p3, p2

    if-ne v6, v7, :cond_3

    .line 62
    const-string v6, ""

    goto :goto_1

    .line 65
    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 67
    .local v2, filtered:Landroid/text/SpannableStringBuilder;
    sub-int/2addr v3, p2

    .line 68
    sub-int/2addr p3, p2

    .line 70
    sub-int v5, p3, p2

    .line 72
    .local v5, len:I
    sub-int v4, p3, v7

    .local v4, j:I
    :goto_2
    if-lt v4, v3, :cond_5

    .line 73
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_4

    .line 74
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 72
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    move-object v6, v2

    .line 78
    goto :goto_1
.end method

.method protected abstract getAcceptedChars()[C
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 2
    .parameter "event"
    .parameter "content"

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/text/method/NumberKeyListener;->getAcceptedChars()[C

    move-result-object v0

    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v9, 0x30

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 97
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 98
    .local v0, a:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 100
    .local v1, b:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 101
    .local v5, selStart:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 104
    .local v4, selEnd:I
    if-ltz v5, :cond_0

    if-gez v4, :cond_1

    .line 105
    :cond_0
    const/4 v4, 0x0

    move v5, v4

    .line 106
    invoke-static {p2, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 109
    :cond_1
    if-eqz p4, :cond_3

    invoke-virtual {p0, p4, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v6

    move v2, v6

    .line 110
    .local v2, i:I
    :goto_0
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    move v3, v6

    .line 111
    .local v3, repeatCount:I
    :goto_1
    if-nez v3, :cond_5

    .line 112
    if-eqz v2, :cond_6

    .line 113
    if-eq v5, v4, :cond_2

    .line 114
    invoke-static {p2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 117
    :cond_2
    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 119
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    move v6, v8

    .line 134
    :goto_2
    return v6

    .end local v2           #i:I
    .end local v3           #repeatCount:I
    :cond_3
    move v2, v7

    .line 109
    goto :goto_0

    .restart local v2       #i:I
    :cond_4
    move v3, v7

    .line 110
    goto :goto_1

    .line 122
    .restart local v3       #repeatCount:I
    :cond_5
    if-ne v2, v9, :cond_6

    if-ne v3, v8, :cond_6

    .line 125
    if-ne v5, v4, :cond_6

    if-lez v4, :cond_6

    sub-int v6, v5, v8

    invoke-interface {p2, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_6

    .line 127
    sub-int v6, v5, v8

    const/16 v7, 0x2b

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v4, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 128
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    move v6, v8

    .line 129
    goto :goto_2

    .line 133
    :cond_6
    invoke-static {p2}, Landroid/text/method/NumberKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_2
.end method
