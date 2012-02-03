.class Landroid/view/inputmethod/InputMethodManager$1;
.super Lcom/android/internal/view/IInputMethodClient$Stub;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    const/4 v5, 0x1

    .line 408
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 409
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    invoke-direct {v2}, Lcom/android/internal/os/HandlerCaller$SomeArgs;-><init>()V

    .line 410
    .local v2, sargs:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p1, v2, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 411
    iput-object p2, v2, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 412
    iput-object p3, v2, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg3:Ljava/lang/Object;

    .line 413
    iput-object v1, v2, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    .line 414
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v4, v5, v2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 416
    const-wide/16 v3, 0x5

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    const-string v3, "Timeout waiting for dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 420
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Interrupted waiting for dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    .locals 3
    .parameter "res"

    .prologue
    .line 428
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 429
    return-void
.end method

.method public onUnbindMethod(I)V
    .locals 4
    .parameter "sequence"

    .prologue
    .line 432
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 433
    return-void
.end method

.method public setActive(Z)V
    .locals 5
    .parameter "active"

    .prologue
    const/4 v4, 0x0

    .line 436
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 437
    return-void

    :cond_0
    move v3, v4

    .line 436
    goto :goto_0
.end method

.method public setUsingInputMethod(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 425
    return-void
.end method
