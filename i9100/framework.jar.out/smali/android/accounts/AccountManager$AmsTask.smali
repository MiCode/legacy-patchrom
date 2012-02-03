.class abstract Landroid/accounts/AccountManager$AmsTask;
.super Ljava/util/concurrent/FutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AmsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManager$AmsTask$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/accounts/AccountManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mResponse:Landroid/accounts/IAccountManagerResponse;

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .locals 2
    .parameter
    .parameter "activity"
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1186
    .local p4, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    .line 1187
    new-instance v0, Landroid/accounts/AccountManager$AmsTask$1;

    invoke-direct {v0, p1}, Landroid/accounts/AccountManager$AmsTask$1;-><init>(Landroid/accounts/AccountManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1193
    iput-object p3, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    .line 1194
    iput-object p4, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 1195
    iput-object p2, p0, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    .line 1196
    new-instance v0, Landroid/accounts/AccountManager$AmsTask$Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/accounts/AccountManager$AmsTask$Response;-><init>(Landroid/accounts/AccountManager$AmsTask;Landroid/accounts/AccountManager$1;)V

    iput-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 1197
    return-void
.end method

.method static synthetic access$500(Landroid/accounts/AccountManager$AmsTask;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1181
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1222
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1223
    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    #calls: Landroid/accounts/AccountManager;->ensureNotOnMainThread()V
    invoke-static {v2}, Landroid/accounts/AccountManager;->access$200(Landroid/accounts/AccountManager;)V

    .line 1226
    :cond_0
    if-nez p1, :cond_1

    .line 1227
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1253
    :goto_0
    invoke-virtual {p0, v4}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    .line 1229
    return-object v2

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v2

    :try_start_3
    invoke-virtual {p0, v2, v3, p2}, Landroid/accounts/AccountManager$AmsTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    :try_start_4
    check-cast v2, Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1231
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1232
    .local v1, e:Ljava/util/concurrent/CancellationException;
    :try_start_5
    new-instance v2, Landroid/accounts/OperationCanceledException;

    invoke-direct {v2}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1253
    .end local v1           #e:Ljava/util/concurrent/CancellationException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v4}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    throw v2

    .line 1237
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 1238
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    :try_start_6
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1239
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 1240
    check-cast v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 1241
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_2
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_3

    .line 1242
    new-instance v2, Landroid/accounts/AuthenticatorException;

    invoke-direct {v2, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1243
    :cond_3
    instance-of v2, v0, Landroid/accounts/AuthenticatorException;

    if-eqz v2, :cond_4

    .line 1244
    check-cast v0, Landroid/accounts/AuthenticatorException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 1245
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_5

    .line 1246
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 1247
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_5
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_6

    .line 1248
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 1250
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1235
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 1253
    :goto_1
    invoke-virtual {p0, v4}, Landroid/accounts/AccountManager$AmsTask;->cancel(Z)Z

    .line 1255
    new-instance v2, Landroid/accounts/OperationCanceledException;

    invoke-direct {v2}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v2

    .line 1235
    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1

    .line 1233
    :catch_7
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected done()V
    .locals 3

    .prologue
    .line 1269
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Landroid/accounts/AccountManager$AmsTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/accounts/AccountManager$AmsTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    #calls: Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    invoke-static {v0, v1, v2, p0}, Landroid/accounts/AccountManager;->access$300(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    .line 1272
    :cond_0
    return-void
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1260
    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$AmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 1265
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/accounts/AccountManager$AmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 1181
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 1181
    invoke-virtual {p0, p1, p2, p3}, Landroid/accounts/AccountManager$AmsTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected set(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 1212
    if-nez p1, :cond_0

    .line 1213
    const-string v0, "AccountManager"

    const-string/jumbo v1, "the bundle must not be null"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1215
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 1216
    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1181
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$AmsTask;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method public final start()Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1201
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$AmsTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :goto_0
    return-object p0

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$AmsTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
