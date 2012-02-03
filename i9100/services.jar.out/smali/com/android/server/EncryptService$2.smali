.class Lcom/android/server/EncryptService$2;
.super Ljava/lang/Object;
.source "EncryptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EncryptService;->mountVolume(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;

.field final synthetic val$sPolicyORsPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/server/EncryptService$2;->this$0:Lcom/android/server/EncryptService;

    iput-object p2, p0, Lcom/android/server/EncryptService$2;->val$sPolicyORsPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v6, "EncryptService"

    .line 315
    const-string v1, "EncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " @@mountVolume Runnable Begin! path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EncryptService$2;->val$sPolicyORsPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EncryptService$2;->this$0:Lcom/android/server/EncryptService;

    iget-object v2, v2, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/android/server/EncryptService$2;->this$0:Lcom/android/server/EncryptService;

    iget-object v2, p0, Lcom/android/server/EncryptService$2;->val$sPolicyORsPath:Ljava/lang/String;

    const-string v3, "Application"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/EncryptService;->cryptoMain(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0

    .line 317
    .local v0, nRet:I
    const-string v1, "EncryptService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " @@mountVolume Runnable End! m_State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EncryptService$2;->this$0:Lcom/android/server/EncryptService;

    iget-object v2, v2, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nRet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", LatestError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EncryptService$2;->this$0:Lcom/android/server/EncryptService;

    invoke-virtual {v2}, Lcom/android/server/EncryptService;->getLatestError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CryptoPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EncryptService$2;->this$0:Lcom/android/server/EncryptService;

    iget-object v2, v2, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EncryptService$2;->this$0:Lcom/android/server/EncryptService;

    iget-object v2, v2, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method
