.class public Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;,
        Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    }
.end annotation


# static fields
.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REPORT_FULLSCREEN_MODE:I = 0x64

.field private static final DO_REPORT_IS_SOFT_INPUT_METHOD_SHOWING:I = 0x1f4

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mInputConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "mainLooper"
    .parameter "conn"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    .line 85
    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    .line 86
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    .line 87
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 162
    return-void
.end method

.method public clearMetaKeyStates(I)V
    .locals 2
    .parameter "states"

    .prologue
    .line 152
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 153
    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 120
    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 121
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 116
    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 117
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 1
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 156
    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 158
    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 186
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    .line 188
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 166
    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "IInputConnectionWrapper"

    .line 196
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 452
    const-string v8, "IInputConnectionWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled message code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local p0
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 200
    .local v1, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 201
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_2

    .line 202
    :cond_1
    const-string v8, "IInputConnectionWrapper"

    const-string v9, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v9, 0x0

    iget v10, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 209
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v11, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 206
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    :try_start_1
    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    iget v10, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 214
    .end local v1           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 216
    .restart local v1       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 217
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_4

    .line 218
    :cond_3
    const-string v8, "IInputConnectionWrapper"

    const-string v9, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v9, 0x0

    iget v10, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 224
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 225
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v11, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 222
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_4
    :try_start_3
    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    iget v10, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 230
    .end local v1           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 232
    .restart local v1       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_4
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 233
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_6

    .line 234
    :cond_5
    const-string v8, "IInputConnectionWrapper"

    const-string v9, "getSelectedText on inactive InputConnection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v9, 0x0

    iget v10, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 240
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_2
    move-exception v8

    move-object v2, v8

    .line 241
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "Got RemoteException calling setSelectedText"

    invoke-static {v11, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 238
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_6
    :try_start_5
    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v9}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget v10, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 246
    .end local v1           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 248
    .restart local v1       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_6
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 249
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_8

    .line 250
    :cond_7
    const-string v8, "IInputConnectionWrapper"

    const-string v9, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v9, 0x0

    iget v10, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 256
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 257
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v11, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 254
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_8
    :try_start_7
    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v9}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v9

    iget v10, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 262
    .end local v1           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 264
    .restart local v1       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    :try_start_8
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 265
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_a

    .line 266
    :cond_9
    const-string v8, "IInputConnectionWrapper"

    const-string v9, "getExtractedText on inactive InputConnection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    const/4 v9, 0x0

    iget v10, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 272
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    .end local p0
    :catch_4
    move-exception v8

    move-object v2, v8

    .line 273
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "Got RemoteException calling setExtractedText"

    invoke-static {v11, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 270
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :cond_a
    :try_start_9
    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    iget-object p0, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, p0, v9}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v9

    iget v10, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    invoke-interface {v8, v9, v10}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 278
    .end local v1           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_5
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 279
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_c

    .line 280
    :cond_b
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "commitText on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 283
    :cond_c
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, p0, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_0

    .line 287
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_6
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 288
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_e

    .line 289
    :cond_d
    const-string v8, "IInputConnectionWrapper"

    const-string/jumbo v8, "setSelection on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 292
    :cond_e
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v8, v9}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_0

    .line 296
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_7
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 297
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_10

    .line 298
    :cond_f
    const-string v8, "IInputConnectionWrapper"

    const-string/jumbo v8, "performEditorAction on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    :cond_10
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v8}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_0

    .line 305
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_8
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 306
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_12

    .line 307
    :cond_11
    const-string v8, "IInputConnectionWrapper"

    const-string/jumbo v8, "performContextMenuAction on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    :cond_12
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v8}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    goto/16 :goto_0

    .line 314
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_9
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 315
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_14

    .line 316
    :cond_13
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "commitCompletion on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 319
    :cond_14
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v3, p0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    goto/16 :goto_0

    .line 323
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_a
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 324
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_16

    .line 325
    :cond_15
    const-string v8, "IInputConnectionWrapper"

    const-string/jumbo v8, "setComposingText on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 328
    :cond_16
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, p0, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_0

    .line 332
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_b
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 333
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_18

    .line 334
    :cond_17
    const-string v8, "IInputConnectionWrapper"

    const-string/jumbo v8, "setComposingRegion on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 337
    :cond_18
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v8, v9}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    goto/16 :goto_0

    .line 341
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_c
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 346
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_19

    .line 347
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "finishComposingText on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 350
    :cond_19
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto/16 :goto_0

    .line 354
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_d
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 355
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_1a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_1b

    .line 356
    :cond_1a
    const-string v8, "IInputConnectionWrapper"

    const-string/jumbo v8, "sendKeyEvent on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 359
    :cond_1b
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    invoke-interface {v3, p0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 363
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_e
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 364
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 365
    :cond_1c
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 368
    :cond_1d
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v8}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    goto/16 :goto_0

    .line 372
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_f
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 373
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_1f

    .line 374
    :cond_1e
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    :cond_1f
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    .line 381
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_10
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 382
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_21

    .line 383
    :cond_20
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "beginBatchEdit on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 386
    :cond_21
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    goto/16 :goto_0

    .line 390
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_11
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 391
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_23

    .line 392
    :cond_22
    const-string v8, "IInputConnectionWrapper"

    const-string v8, "endBatchEdit on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 395
    :cond_23
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 399
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_12
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 400
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_25

    .line 401
    :cond_24
    const-string v8, "IInputConnectionWrapper"

    const-string/jumbo v8, "showStatusIcon on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 404
    :cond_25
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_26

    move v8, v9

    :goto_1
    invoke-interface {v3, v8}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    goto/16 :goto_0

    :cond_26
    move v8, v10

    goto :goto_1

    .line 408
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_13
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    .line 409
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_28

    .line 410
    :cond_27
    const-string v8, "IInputConnectionWrapper"

    const-string/jumbo v8, "performPrivateCommand on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 413
    :cond_28
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    .line 414
    .restart local v1       #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iget-object p0, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    invoke-interface {v3, p0, v8}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 421
    .end local v1           #args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :sswitch_14
    iget-object v8, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 422
    .local v7, originalIc:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 423
    .local v4, icBaseInputConnection:Landroid/view/inputmethod/BaseInputConnection;
    const/4 v5, 0x0

    .line 424
    .local v5, icInputConnectionWrapper:Landroid/view/inputmethod/InputConnectionWrapper;
    const/4 v6, 0x0

    .line 426
    .local v6, icInternalInputConnectionWrapper:Lcom/android/internal/view/InputConnectionWrapper;
    instance-of v8, v7, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v8, :cond_2a

    .line 427
    move-object v0, v7

    check-cast v0, Landroid/view/inputmethod/BaseInputConnection;

    move-object v4, v0

    .line 436
    :goto_2
    if-eqz v7, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v8

    if-nez v8, :cond_2c

    .line 437
    :cond_29
    const-string v8, "IInputConnectionWrapper"

    const-string/jumbo v8, "reportIsSoftInputMethodShowing on inactive InputConnection"

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 428
    :cond_2a
    instance-of v8, v7, Landroid/view/inputmethod/InputConnectionWrapper;

    if-eqz v8, :cond_2b

    .line 429
    move-object v0, v7

    check-cast v0, Landroid/view/inputmethod/InputConnectionWrapper;

    move-object v5, v0

    goto :goto_2

    .line 430
    :cond_2b
    instance-of v8, v7, Lcom/android/internal/view/InputConnectionWrapper;

    if-eqz v8, :cond_0

    .line 431
    move-object v0, v7

    check-cast v0, Lcom/android/internal/view/InputConnectionWrapper;

    move-object v6, v0

    goto :goto_2

    .line 441
    :cond_2c
    if-eqz v4, :cond_2e

    .line 442
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_2d

    move v8, v9

    :goto_3
    invoke-virtual {v4, v8}, Landroid/view/inputmethod/BaseInputConnection;->reportIsSoftInputMethodShowing(Z)Z

    goto/16 :goto_0

    :cond_2d
    move v8, v10

    goto :goto_3

    .line 443
    :cond_2e
    if-eqz v5, :cond_30

    .line 444
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_2f

    move v8, v9

    :goto_4
    invoke-virtual {v5, v8}, Landroid/view/inputmethod/InputConnectionWrapper;->reportIsSoftInputMethodShowing(Z)Z

    goto/16 :goto_0

    :cond_2f
    move v8, v10

    goto :goto_4

    .line 445
    :cond_30
    if-eqz v6, :cond_0

    .line 446
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_31

    move v8, v9

    :goto_5
    invoke-virtual {v6, v8}, Lcom/android/internal/view/InputConnectionWrapper;->reportIsSoftInputMethodShowing(Z)Z

    goto/16 :goto_0

    :cond_31
    move v8, v10

    goto :goto_5

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x19 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x37 -> :sswitch_9
        0x39 -> :sswitch_6
        0x3a -> :sswitch_7
        0x3b -> :sswitch_8
        0x3c -> :sswitch_a
        0x3f -> :sswitch_b
        0x41 -> :sswitch_c
        0x46 -> :sswitch_d
        0x50 -> :sswitch_f
        0x5a -> :sswitch_10
        0x5f -> :sswitch_11
        0x64 -> :sswitch_12
        0x78 -> :sswitch_13
        0x82 -> :sswitch_e
        0x1f4 -> :sswitch_14
    .end sparse-switch
.end method

.method public finishComposingText()V
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 145
    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .parameter "reqModes"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 106
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 107
    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .parameter "request"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 111
    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 113
    return-void
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .locals 1
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 102
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 103
    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .parameter "length"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 94
    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 95
    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .locals 6
    .parameter "length"
    .parameter "flags"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 98
    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 99
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method obtainMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 475
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 476
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 477
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 478
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 483
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 484
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 485
    iput-object p5, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 486
    iput p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 487
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "seq"
    .parameter "callback"

    .prologue
    .line 468
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 469
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->callback:Lcom/android/internal/view/IInputContextCallback;

    .line 470
    iput p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->seq:I

    .line 471
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 495
    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;-><init>()V

    .line 496
    .local v0, args:Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg1:Ljava/lang/Object;

    .line 497
    iput-object p3, v0, Lcom/android/internal/view/IInputConnectionWrapper$SomeArgs;->arg2:Ljava/lang/Object;

    .line 498
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public performContextMenuAction(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 132
    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 133
    return-void
.end method

.method public performEditorAction(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 128
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 129
    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 173
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 174
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 169
    const/16 v0, 0x64

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 170
    return-void

    :cond_0
    move v1, v2

    .line 169
    goto :goto_0
.end method

.method public reportIsSoftInputMethodShowing(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    .line 179
    const/16 v0, 0x1f4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 180
    return-void

    :cond_0
    move v1, v2

    .line 179
    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 148
    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 149
    return-void
.end method

.method public setComposingRegion(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 136
    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 137
    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 140
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 141
    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 124
    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    .line 125
    return-void
.end method
