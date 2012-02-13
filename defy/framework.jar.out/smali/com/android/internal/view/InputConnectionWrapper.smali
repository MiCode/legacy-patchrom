.class public Lcom/android/internal/view/InputConnectionWrapper;
.super Ljava/lang/Object;
.source "InputConnectionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_TIME_MILLIS:I = 0x7d0


# instance fields
.field private final mIInputContext:Lcom/android/internal/view/IInputContext;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/IInputContext;)V
    .locals 0
    .parameter "inputContext"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->beginBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "states"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->clearMetaKeyStates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .parameter "text"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 2
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingText(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->endBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .parameter "reqModes"

    .prologue
    const/4 v2, 0x0

    .local v2, value:I
    :try_start_0
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_0

    iget v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v2

    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_0
    return v3

    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 5
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .local v2, value:Landroid/view/inputmethod/ExtractedText;
    :try_start_0
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v2

    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_0
    return-object v3

    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .local v2, value:Ljava/lang/CharSequence;
    :try_start_0
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSelectedText:Ljava/lang/CharSequence;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v2

    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_0
    return-object v3

    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .local v2, value:Ljava/lang/CharSequence;
    :try_start_0
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v2

    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_0
    return-object v3

    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .local v2, value:Ljava/lang/CharSequence;
    :try_start_0
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->getInstance()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    #calls: Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->dispose()V
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v2

    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_0
    return-object v3

    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 2
    .parameter "id"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performContextMenuAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performEditorAction(I)Z
    .locals 2
    .parameter "actionCode"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performEditorAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->reportFullscreenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->sendKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingRegion(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setSelection(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
