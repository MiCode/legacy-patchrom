.class public Landroid/widget/EditText;
.super Landroid/widget/TextView;
.source "EditText.java"


# static fields
.field private static final IMM_PRIV_COMMAND_DOUBLETAP:Ljava/lang/String; = "com.swype.android.inputmethod/cmd_doubletap"

.field private static final IMM_PRIV_COMMAND_RELAUNCH_SWYPE:Ljava/lang/String; = "com.swype.android.inputmethod/relaunch"

.field private static final IMM_PRIV_COMMAND_TAP:Ljava/lang/String; = "com.swype.android.inputmethod/cmd_tap"


# instance fields
.field private doubleTapDetector:Landroid/view/GestureDetector;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Landroid/widget/EditText;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 114
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/widget/EditText;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 117
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/EditText$1;

    invoke-direct {v2, p0}, Landroid/widget/EditText$1;-><init>(Landroid/widget/EditText;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/EditText;->doubleTapDetector:Landroid/view/GestureDetector;

    .line 136
    return-void
.end method

.method static synthetic access$000(Landroid/widget/EditText;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/EditText;->sendTapNotificationToIME(Z)V

    return-void
.end method

.method private sendTapNotificationToIME(Z)V
    .locals 3
    .parameter "isSingleTap"

    .prologue
    .line 146
    if-eqz p1, :cond_1

    const-string v1, "com.swype.android.inputmethod/cmd_tap"

    move-object v0, v1

    .line 148
    .local v0, command:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/widget/EditText;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Landroid/widget/EditText;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Landroid/widget/EditText;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    :cond_0
    return-void

    .line 146
    .end local v0           #command:Ljava/lang/String;
    :cond_1
    const-string v1, "com.swype.android.inputmethod/cmd_doubletap"

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public extendSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 222
    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Editable;

    return-object p0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 237
    if-eqz p1, :cond_0

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditText;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 239
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 240
    return-void
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 165
    const-string v0, "com.swype.android.inputmethod/relaunch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/widget/EditText;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 159
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/EditText;->doubleTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 160
    return v0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 215
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .parameter "ellipsis"

    .prologue
    .line 226
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 231
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 208
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 201
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "text"
    .parameter "type"

    .prologue
    .line 193
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 194
    return-void
.end method
