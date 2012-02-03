.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;,
        Landroid/view/inputmethod/InputMethodManager$H;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final HIDE_NOT_ALWAYS:I = 0x2

.field static final MSG_BIND:I = 0x2

.field static final MSG_DUMP:I = 0x1

.field static final MSG_SET_ACTIVE:I = 0x4

.field static final MSG_UNBIND:I = 0x3

.field public static final RESULT_HIDDEN:I = 0x3

.field public static final RESULT_SHOWN:I = 0x2

.field public static final RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final SHOW_FORCED:I = 0x2

.field public static final SHOW_IMPLICIT:I = 0x1

.field static final TAG:Ljava/lang/String; = "InputMethodManager"

.field static mInstance:Landroid/view/inputmethod/InputMethodManager;

.field static final mInstanceSync:Ljava/lang/Object;

.field static mIsSoftInputMethodShowing:Z


# instance fields
.field mActive:Z

.field mBindSequence:I

.field final mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mCurId:Ljava/lang/String;

.field mCurMethod:Lcom/android/internal/view/IInputMethodSession;

.field mCurRootView:Landroid/view/View;

.field mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCursorCandEnd:I

.field mCursorCandStart:I

.field mCursorRect:Landroid/graphics/Rect;

.field mCursorSelEnd:I

.field mCursorSelStart:I

.field final mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

.field mFullscreenMode:Z

.field final mH:Landroid/view/inputmethod/InputMethodManager$H;

.field mHasBeenInactive:Z

.field final mIInputContext:Lcom/android/internal/view/IInputContext;

.field final mMainLooper:Landroid/os/Looper;

.field mNextServedNeedsStart:Z

.field mNextServedView:Landroid/view/View;

.field mServedConnecting:Z

.field mServedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mServedView:Landroid/view/View;

.field final mService:Lcom/android/internal/view/IInputMethodManager;

.field mTmpCursorRect:Landroid/graphics/Rect;

.field sServiceEx:Landroid/sec/clipboard/IClipboardService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManager;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V
    .locals 3
    .parameter "service"
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 273
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    .line 274
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    .line 285
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    .line 403
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$1;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 440
    new-instance v1, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v1, p0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 443
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 444
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    .line 445
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v1, p0, p2}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    .line 446
    new-instance v1, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-direct {v1, p0, p2, v2}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 449
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_0

    .line 450
    sput-object p0, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 455
    :cond_0
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 456
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    .line 458
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;
    .locals 4
    .parameter "mainLooper"

    .prologue
    .line 475
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 476
    :try_start_0
    sget-object v3, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_0

    .line 477
    sget-object v3, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v2

    move-object v2, v3

    .line 483
    :goto_0
    return-object v2

    .line 479
    :cond_0
    const-string v3, "input_method"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 480
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 481
    .local v1, service:Lcom/android/internal/view/IInputMethodManager;
    new-instance v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {v3, v1, p0}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V

    sput-object v3, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    .line 482
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    sget-object v2, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    .line 482
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #service:Lcom/android/internal/view/IInputMethodManager;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 492
    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->mInstance:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public checkFocus()V
    .locals 4

    .prologue
    .line 1122
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    if-nez v1, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1126
    :cond_0
    const/4 v0, 0x0

    .line 1127
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1128
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    if-nez v2, :cond_1

    .line 1129
    monitor-exit v1

    goto :goto_0

    .line 1151
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1135
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    .line 1136
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 1137
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1141
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 1142
    monitor-exit v1

    goto :goto_0

    .line 1145
    :cond_2
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1147
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 1148
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1149
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1150
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1151
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    if-eqz v0, :cond_3

    .line 1154
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1157
    :cond_3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->startInputInner()V

    goto :goto_0
.end method

.method clearBindingLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 588
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 589
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 590
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 591
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 592
    return-void
.end method

.method clearConnectionLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 599
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 600
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 601
    return-void
.end method

.method closeCurrentInput()V
    .locals 4

    .prologue
    .line 1162
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :goto_0
    return-void

    .line 1163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 5
    .parameter "context"
    .parameter "seq"
    .parameter "key"
    .parameter "callback"

    .prologue
    .line 1365
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1368
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1370
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p4, p2, v2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1373
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 1396
    :goto_1
    return-void

    .line 1376
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1

    .line 1378
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1380
    const/4 v2, 0x1

    :try_start_3
    invoke-interface {p4, p2, v2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1383
    :goto_2
    :try_start_4
    monitor-exit v1

    goto :goto_1

    .line 1395
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1387
    :cond_1
    :try_start_5
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/view/IInputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1395
    :goto_3
    :try_start_6
    monitor-exit v1

    goto :goto_1

    .line 1388
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1389
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropping: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1391
    const/4 v2, 0x0

    :try_start_7
    invoke-interface {p4, p2, v2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 1392
    :catch_1
    move-exception v2

    goto :goto_3

    .line 1371
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    goto :goto_0

    .line 1381
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method dispatchTrackballEvent(Landroid/content/Context;ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 5
    .parameter "context"
    .parameter "seq"
    .parameter "motion"
    .parameter "callback"

    .prologue
    .line 1403
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1406
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1408
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p4, p2, v2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1411
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1425
    :goto_1
    return-void

    .line 1416
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, p2, p3, p4}, Lcom/android/internal/view/IInputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1424
    :goto_2
    :try_start_4
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1417
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1418
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dropping trackball: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1420
    const/4 v2, 0x0

    :try_start_6
    invoke-interface {p4, p2, v2}, Lcom/android/internal/view/IInputMethodCallback;->finishedEvent(IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1421
    :catch_1
    move-exception v2

    goto :goto_2

    .line 1409
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .parameter "view"
    .parameter "completions"

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 651
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 652
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    :cond_0
    monitor-exit v0

    .line 665
    :goto_0
    return-void

    .line 657
    :cond_1
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 658
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 660
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 664
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 661
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 1438
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1439
    .local v0, p:Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMainLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIInputContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHasBeenInactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextServedNeedsStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1454
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 1455
    const-string v1, "  mCurrentTextBoxAttribute:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1456
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1460
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mServedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1467
    return-void

    .line 1458
    :cond_0
    const-string v1, "  mCurrentTextBoxAttribute: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method finishInputLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 607
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 608
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 611
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 613
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodManager;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v1, :cond_1

    .line 623
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 624
    .local v0, vh:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 627
    const/16 v1, 0x3f4

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 632
    .end local v0           #vh:Landroid/os/Handler;
    :cond_1
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    .line 633
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 634
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 635
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    .line 637
    :cond_2
    return-void

    .line 614
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public focusIn(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1068
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1069
    monitor-exit v0

    .line 1070
    return-void

    .line 1069
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method focusInLocked(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1082
    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    .line 1083
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->scheduleCheckFocusLocked(Landroid/view/View;)V

    goto :goto_0
.end method

.method public focusOut(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1095
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 1106
    :cond_0
    monitor-exit v0

    .line 1107
    return-void

    .line 1106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClient()Lcom/android/internal/view/IInputMethodClient;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    return-object v0
.end method

.method public getCurrentInputMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1494
    const/4 v0, 0x0

    .line 1497
    .local v0, result:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethod()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1502
    :goto_0
    return-object v0

    .line 1498
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 516
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInputContext()Lcom/android/internal/view/IInputContext;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    return-object v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 508
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 509
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIsSoftInputMethodShowing()Z
    .locals 1

    .prologue
    .line 1479
    sget-boolean v0, Landroid/view/inputmethod/InputMethodManager;->mIsSoftInputMethodShowing:Z

    return v0
.end method

.method public hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "token"
    .parameter "flags"

    .prologue
    .line 1333
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->hideMySoftInput(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    return-void

    .line 1334
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1335
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .locals 1
    .parameter "windowToken"
    .parameter "flags"

    .prologue
    .line 811
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .parameter "windowToken"
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v3, 0x0

    .line 832
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 833
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 834
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 835
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 842
    :goto_0
    return v0

    .line 839
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 840
    :catch_0
    move-exception v1

    .line 842
    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 843
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public hideStatusIcon(Landroid/os/IBinder;)V
    .locals 4
    .parameter "imeToken"

    .prologue
    .line 531
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    return-void

    .line 532
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 533
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAcceptingText()Z
    .locals 1

    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 581
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 570
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 571
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isActive(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 556
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 557
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 558
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 562
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    return v0
.end method

.method public isWatchingCursor(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 1245
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V
    .locals 9
    .parameter "rootView"
    .parameter "focusedView"
    .parameter "softInputMode"
    .parameter "first"
    .parameter "windowFlags"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1173
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1178
    :try_start_0
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    if-eqz v1, :cond_0

    .line 1180
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    .line 1181
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedNeedsStart:Z

    .line 1183
    :cond_0
    if-eqz p2, :cond_2

    move-object v1, p2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V

    .line 1184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1188
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1190
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {p2}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_3

    move v4, v5

    .line 1192
    .local v4, isTextEditor:Z
    :goto_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz p2, :cond_1

    move v3, v5

    :cond_1
    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ZZIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1197
    .end local v4           #isTextEditor:Z
    :goto_2
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1198
    return-void

    :cond_2
    move-object v1, p1

    .line 1183
    goto :goto_0

    .line 1184
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    move v4, v3

    .line 1190
    goto :goto_1

    .line 1197
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1195
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .parameter "ic"

    .prologue
    .line 644
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, p1, :cond_0

    .line 645
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 647
    :cond_0
    return-void
.end method

.method public restartInput(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 905
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 906
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 908
    :cond_0
    monitor-exit v0

    .line 915
    :goto_0
    return-void

    .line 911
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 912
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->startInputInner()V

    goto :goto_0

    .line 912
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method scheduleCheckFocusLocked(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/16 v2, 0x3f5

    .line 1110
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1111
    .local v0, vh:Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1115
    :cond_0
    return-void
.end method

.method public sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 1287
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1288
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1289
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_2

    .line 1292
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    :goto_0
    return-void

    .line 1296
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1300
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1297
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1298
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setFullscreenMode(Z)V
    .locals 0
    .parameter "fullScreen"

    .prologue
    .line 539
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 540
    return-void
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "id"

    .prologue
    .line 1313
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    return-void

    .line 1314
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1315
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIsSoftInputMethodShowing(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1474
    sput-boolean p1, Landroid/view/inputmethod/InputMethodManager;->mIsSoftInputMethodShowing:Z

    .line 1475
    return-void
.end method

.method public showCursorControllerSearchDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "searchText"

    .prologue
    .line 1486
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInputMethodManager;->showCursorControllerSearchDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    :goto_0
    return-void

    .line 1487
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showInputMethodPicker()V
    .locals 5

    .prologue
    .line 1428
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1430
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v3}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 1435
    return-void

    .line 1431
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1432
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1434
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public showSoftInput(Landroid/view/View;I)Z
    .locals 1
    .parameter "view"
    .parameter "flags"

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .locals 4
    .parameter "view"
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v3, 0x0

    .line 762
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 763
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 764
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 766
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 774
    :goto_0
    return v0

    .line 770
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 771
    :catch_0
    move-exception v1

    .line 774
    monitor-exit v0

    move v0, v3

    goto :goto_0

    .line 775
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "token"
    .parameter "flags"

    .prologue
    .line 1354
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showMySoftInput(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    return-void

    .line 1355
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1356
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .locals 2
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .parameter "imeToken"
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    .line 523
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    return-void

    .line 524
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 525
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startGettingWindowFocus(Landroid/view/View;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1203
    :try_start_0
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    .line 1204
    monitor-exit v0

    .line 1205
    return-void

    .line 1204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startInputInner()V
    .locals 19

    .prologue
    const/16 v18, 0x1

    const/16 v17, 0x0

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    move-object v4, v0

    monitor-enter v4

    .line 920
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    move-object v15, v0

    .line 924
    .local v15, view:Landroid/view/View;
    if-nez v15, :cond_1

    .line 926
    monitor-exit v4

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    invoke-virtual {v15}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v14

    .line 935
    .local v14, vh:Landroid/os/Handler;
    if-eqz v14, :cond_0

    .line 941
    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 945
    new-instance v4, Landroid/view/inputmethod/InputMethodManager$2;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v14, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 928
    .end local v14           #vh:Landroid/os/Handler;
    .end local v15           #view:Landroid/view/View;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 956
    .restart local v14       #vh:Landroid/os/Handler;
    .restart local v15       #view:Landroid/view/View;
    :cond_2
    new-instance v7, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v7}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 957
    .local v7, tba:Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 958
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v4

    iput v4, v7, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 959
    invoke-virtual {v15, v7}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 962
    .local v11, ic:Landroid/view/inputmethod/InputConnection;
    iget v4, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 964
    instance-of v4, v15, Landroid/widget/EditText;

    if-eqz v4, :cond_3

    .line 966
    move-object v0, v15

    check-cast v0, Landroid/widget/EditText;

    move-object v12, v0

    .line 967
    .local v12, medit:Landroid/widget/EditText;
    invoke-virtual {v12}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v4, :cond_3

    .line 969
    iget v4, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 974
    .end local v12           #medit:Landroid/widget/EditText;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 977
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    move-object v4, v0

    if-ne v4, v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    move v4, v0

    if-nez v4, :cond_6

    .line 984
    :cond_4
    const-string v4, "CLIPBOARD"

    const-string v5, "Hide Clipboard dialog at Starting input: finished by someone else... !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    move-object v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_5

    .line 988
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    move-object v4, v0

    invoke-interface {v4}, Landroid/sec/clipboard/IClipboardService;->dismissUIDataDialog()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 996
    :cond_5
    :goto_1
    :try_start_4
    monitor-exit v16

    goto/16 :goto_0

    .line 1044
    :catchall_1
    move-exception v4

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 989
    :catch_0
    move-exception v4

    move-object v10, v4

    .line 990
    .local v10, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "ClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sServiceEx().dismissUIDataDialog() : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1001
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    move-object v4, v0

    if-nez v4, :cond_9

    move/from16 v8, v18

    .line 1004
    .local v8, initial:Z
    :goto_2
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1005
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 1006
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1008
    if-eqz v11, :cond_a

    .line 1009
    iget v4, v7, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1010
    iget v4, v7, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1011
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1012
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1014
    new-instance v6, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1022
    .local v6, servedContext:Lcom/android/internal/view/IInputContext;
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object v9, v0

    if-nez v9, :cond_b

    move/from16 v9, v18

    :goto_4
    invoke-interface/range {v4 .. v9}, Lcom/android/internal/view/IInputMethodManager;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v13

    .line 1025
    .local v13, res:Lcom/android/internal/view/InputBindResult;
    if-eqz v13, :cond_7

    .line 1026
    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 1027
    iget v4, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 1028
    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 1035
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object v4, v0

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    move-object v4, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v4, :cond_8

    .line 1037
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    move-object v5, v0

    invoke-interface {v4, v5}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1044
    .end local v13           #res:Lcom/android/internal/view/InputBindResult;
    :cond_8
    :goto_5
    :try_start_8
    monitor-exit v16

    goto/16 :goto_0

    .end local v6           #servedContext:Lcom/android/internal/view/IInputContext;
    .end local v8           #initial:Z
    :cond_9
    move/from16 v8, v17

    .line 1001
    goto/16 :goto_2

    .line 1016
    .restart local v8       #initial:Z
    :cond_a
    const/4 v6, 0x0

    .restart local v6       #servedContext:Lcom/android/internal/view/IInputContext;
    goto :goto_3

    :cond_b
    move/from16 v9, v17

    .line 1022
    goto :goto_4

    .line 1032
    .restart local v13       #res:Lcom/android/internal/view/InputBindResult;
    :cond_c
    monitor-exit v16

    goto/16 :goto_0

    .line 1041
    .end local v13           #res:Lcom/android/internal/view/InputBindResult;
    :catch_1
    move-exception v4

    move-object v10, v4

    .line 1042
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v4, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IME died: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 1038
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v13       #res:Lcom/android/internal/view/InputBindResult;
    :catch_2
    move-exception v4

    goto :goto_5
.end method

.method public toggleSoftInput(II)V
    .locals 1
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 887
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_0

    .line 889
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .locals 2
    .parameter "windowToken"
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 861
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 862
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 863
    :cond_0
    monitor-exit v0

    .line 872
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 867
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 871
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 868
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateCursor(Landroid/view/View;IIII)V
    .locals 5
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1252
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1253
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    .line 1254
    :try_start_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v2, :cond_2

    .line 1257
    :cond_1
    monitor-exit v1

    .line 1273
    :goto_0
    return-void

    .line 1260
    :cond_2
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1261
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 1266
    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-interface {v2, v3}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    .line 1267
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1272
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1268
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1269
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .parameter "view"
    .parameter "token"
    .parameter "text"

    .prologue
    .line 668
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 669
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 670
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 672
    :cond_0
    monitor-exit v0

    .line 682
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 677
    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 681
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 678
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .locals 9
    .parameter "view"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1212
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1213
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 1214
    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v0, :cond_2

    .line 1217
    :cond_1
    monitor-exit v8

    .line 1238
    :goto_0
    return-void

    .line 1220
    :cond_2
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    if-ne v0, p3, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne v0, p4, :cond_3

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p5, :cond_4

    .line 1227
    :cond_3
    :try_start_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V

    .line 1229
    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    .line 1230
    iput p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    .line 1231
    iput p4, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    .line 1232
    iput p5, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1237
    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1233
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1234
    .local v7, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v0, "InputMethodManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .locals 2
    .parameter "appWindowToken"

    .prologue
    .line 1053
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 1054
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 1055
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1057
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 1059
    :cond_0
    monitor-exit v0

    .line 1060
    return-void

    .line 1059
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
