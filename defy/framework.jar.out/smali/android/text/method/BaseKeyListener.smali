.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/BaseKeyListener$1;
    }
.end annotation


# static fields
.field static final OLD_SEL_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    return-void
.end method

.method private altBackspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    invoke-static {p2, v4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    if-eq v4, v6, :cond_0

    move v4, v5

    .end local p1
    :goto_0
    return v4

    .restart local p1
    :cond_0
    instance-of v4, p1, Landroid/widget/TextView;

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, layout:Landroid/text/Layout;
    if-nez v2, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .local v1, l:I
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .local v3, start:I
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .local v0, end:I
    if-ne v0, v3, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move v4, v6

    goto :goto_0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3
    .parameter "caps"
    .parameter "autoText"

    .prologue
    const/4 v0, 0x1

    .local v0, contentType:I
    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz p1, :cond_0

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_0
    return v0

    :pswitch_0
    or-int/lit16 v0, v0, 0x1000

    goto :goto_0

    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    :pswitch_2
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .local v2, result:Z
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, a:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, b:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, selStart:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, selEnd:I
    if-eq v4, v3, :cond_1

    invoke-interface {p2, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    :cond_0
    return v2

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->altBackspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v5

    .local v5, to:I
    if-eq v5, v3, :cond_3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v0, 0x43

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "view"
    .parameter "content"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v7

    :goto_0
    return v5

    :cond_1
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, a:I
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, b:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, selStart:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, selEnd:I
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v4

    .local v4, text:Ljava/lang/CharSequence;
    if-nez v4, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    invoke-interface {p2, v3, v2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v5, 0x1

    goto :goto_0
.end method
