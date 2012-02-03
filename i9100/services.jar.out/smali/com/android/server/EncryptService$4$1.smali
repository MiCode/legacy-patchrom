.class Lcom/android/server/EncryptService$4$1;
.super Ljava/lang/Thread;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EncryptService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/EncryptService$4;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService$4;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/server/EncryptService$4$1;->this$1:Lcom/android/server/EncryptService$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EncryptService$4$1;->this$1:Lcom/android/server/EncryptService$4;

    iget-object v1, v1, Lcom/android/server/EncryptService$4;->this$0:Lcom/android/server/EncryptService;

    #calls: Lcom/android/server/EncryptService;->waitForReady()V
    invoke-static {v1}, Lcom/android/server/EncryptService;->access$100(Lcom/android/server/EncryptService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 511
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "EncryptService"

    const-string v2, " Boot-time encryption exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
