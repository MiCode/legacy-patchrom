.class public Lcom/android/internal/widget/EditableInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EditableInputConnection.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EditableInputConnection"


# instance fields
.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter "textview"

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 37
    iput-object p1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 38
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 3
    .parameter "states"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/internal/widget/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 60
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 70
    :goto_0
    return v2

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    .line 62
    .local v1, kl:Landroid/text/method/KeyListener;
    if-eqz v1, :cond_1

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 116
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v3

    .line 127
    :goto_0
    return v3

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    .line 120
    .local v1, errorBefore:Ljava/lang/CharSequence;
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    .line 121
    .local v2, success:Z
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    .line 123
    .local v0, errorAfter:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    if-ne v1, v0, :cond_1

    .line 124
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move v3, v2

    .line 127
    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    .line 42
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 97
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 98
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    :cond_0
    move-object v1, v0

    .line 105
    .end local v0           #et:Landroid/view/inputmethod/ExtractedText;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1
    .parameter "actionCode"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 110
    const/4 v0, 0x1

    return v0
.end method
