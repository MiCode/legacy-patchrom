.class Lcom/android/server/EncryptService$9;
.super Ljava/lang/Object;
.source "EncryptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EncryptService;->setEncryptionStorageState(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;

.field final synthetic val$sCID:Ljava/lang/String;

.field final synthetic val$sState:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iput-object p2, p0, Lcom/android/server/EncryptService$9;->val$sCID:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/EncryptService$9;->val$sState:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2583
    const/4 v2, -0x3

    .line 2589
    .local v2, nRet:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    invoke-virtual {v3}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2591
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_0

    .line 2608
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-void

    .line 2594
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_0
    iget-object v3, p0, Lcom/android/server/EncryptService$9;->val$sCID:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/EncryptService$9;->val$sState:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2605
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :goto_1
    iget-object v3, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    iget-object v3, v3, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 2598
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2600
    .local v0, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/EncryptService$9;->this$0:Lcom/android/server/EncryptService;

    const/16 v4, 0xfa

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2601
    const/4 v2, -0x2

    .line 2602
    const-string v3, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setEncryptionStorageState : Exception exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
