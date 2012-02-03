.class public Landroid/view/inputmethod/InputConnectionWrapper;
.super Ljava/lang/Object;
.source "InputConnectionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# instance fields
.field final mMutable:Z

.field private mTarget:Landroid/view/inputmethod/InputConnection;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .parameter "target"
    .parameter "mutable"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p2, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mMutable:Z

    .line 32
    iput-object p1, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    .line 33
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1
    .parameter "states"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 1
    .parameter "reqModes"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "flags"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1
    .parameter "editorAction"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    move-result v0

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 123
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public reportIsSoftInputMethodShowing(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, icBaseInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    const/4 v1, 0x0

    .line 132
    .local v1, icInternalInputConnectionWrapper:Lcom/android/internal/view/InputConnectionWrapper;
    iget-object v2, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    instance-of v2, v2, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v2, :cond_1

    .line 133
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    .end local v0           #icBaseInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    check-cast v0, Landroid/view/inputmethod/BaseInputConnection;

    .line 138
    .restart local v0       #icBaseInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->reportIsSoftInputMethodShowing(Z)Z

    move-result v2

    .line 144
    :goto_1
    return v2

    .line 134
    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    instance-of v2, v2, Lcom/android/internal/view/InputConnectionWrapper;

    if-eqz v2, :cond_0

    .line 135
    iget-object v1, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    .end local v1           #icInternalInputConnectionWrapper:Lcom/android/internal/view/InputConnectionWrapper;
    check-cast v1, Lcom/android/internal/view/InputConnectionWrapper;

    .restart local v1       #icInternalInputConnectionWrapper:Lcom/android/internal/view/InputConnectionWrapper;
    goto :goto_0

    .line 140
    :cond_2
    if-eqz v1, :cond_3

    .line 141
    invoke-virtual {v1, p1}, Lcom/android/internal/view/InputConnectionWrapper;->reportIsSoftInputMethodShowing(Z)Z

    move-result v2

    goto :goto_1

    .line 144
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 111
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 91
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v0

    return v0
.end method

.method public setTarget(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mMutable:Z

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "not mutable"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputConnectionWrapper;->mTarget:Landroid/view/inputmethod/InputConnection;

    .line 43
    return-void
.end method
