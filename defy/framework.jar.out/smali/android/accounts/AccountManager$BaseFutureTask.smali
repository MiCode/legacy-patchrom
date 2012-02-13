.class abstract Landroid/accounts/AccountManager$BaseFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseFutureTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManager$BaseFutureTask$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field public final mResponse:Landroid/accounts/IAccountManagerResponse;

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .local p0, this:Landroid/accounts/AccountManager$BaseFutureTask;,"Landroid/accounts/AccountManager$BaseFutureTask<TT;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    new-instance v0, Landroid/accounts/AccountManager$BaseFutureTask$1;

    invoke-direct {v0, p1}, Landroid/accounts/AccountManager$BaseFutureTask$1;-><init>(Landroid/accounts/AccountManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p2, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/accounts/AccountManager$BaseFutureTask$Response;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$BaseFutureTask$Response;-><init>(Landroid/accounts/AccountManager$BaseFutureTask;)V

    iput-object v0, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    return-void
.end method

.method static synthetic access$700(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Landroid/accounts/AccountManager$BaseFutureTask;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public abstract bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation
.end method

.method public abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected postRunnableToHandler(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .local p0, this:Landroid/accounts/AccountManager$BaseFutureTask;,"Landroid/accounts/AccountManager$BaseFutureTask<TT;>;"
    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->this$0:Landroid/accounts/AccountManager;

    #getter for: Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/accounts/AccountManager;->access$600(Landroid/accounts/AccountManager;)Landroid/os/Handler;

    move-result-object v1

    move-object v0, v1

    .local v0, handler:Landroid/os/Handler;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    move-object v0, v1

    goto :goto_0
.end method

.method protected startTask()V
    .locals 1

    .prologue
    .local p0, this:Landroid/accounts/AccountManager$BaseFutureTask;,"Landroid/accounts/AccountManager$BaseFutureTask<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$BaseFutureTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$BaseFutureTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
