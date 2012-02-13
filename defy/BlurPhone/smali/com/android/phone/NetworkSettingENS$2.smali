.class Lcom/android/phone/NetworkSettingENS$2;
.super Ljava/lang/Object;
.source "NetworkSettingENS.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSettingENS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSettingENS;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSettingENS;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/phone/NetworkSettingENS$2;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$2;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v1, "connection created, binding local service."

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$2;->this$0:Lcom/android/phone/NetworkSettingENS;

    check-cast p2, Lcom/android/phone/NetworkQueryService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    #setter for: Lcom/android/phone/NetworkSettingENS;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSettingENS;->access$902(Lcom/android/phone/NetworkSettingENS;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 263
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$2;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mIsTriggerManualScan:Z
    invoke-static {v0}, Lcom/android/phone/NetworkSettingENS;->access$1000(Lcom/android/phone/NetworkSettingENS;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$2;->this$0:Lcom/android/phone/NetworkSettingENS;

    #calls: Lcom/android/phone/NetworkSettingENS;->loadNetworksList()V
    invoke-static {v0}, Lcom/android/phone/NetworkSettingENS;->access$1100(Lcom/android/phone/NetworkSettingENS;)V

    .line 267
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$2;->this$0:Lcom/android/phone/NetworkSettingENS;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkSettingENS;->mIsTriggerManualScan:Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSettingENS;->access$1002(Lcom/android/phone/NetworkSettingENS;Z)Z

    .line 270
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$2;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v1, "connection disconnected, cleaning local binding."

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$2;->this$0:Lcom/android/phone/NetworkSettingENS;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkSettingENS;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSettingENS;->access$902(Lcom/android/phone/NetworkSettingENS;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 276
    return-void
.end method
