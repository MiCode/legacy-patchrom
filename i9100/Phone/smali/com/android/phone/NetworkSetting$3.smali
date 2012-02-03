.class Lcom/android/phone/NetworkSetting$3;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v1, "connection created, binding local service."

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    check-cast p2, Lcom/android/phone/NetworkQueryService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    #setter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$902(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 224
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->checkDataConnectionSearchButton()V
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    .line 225
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v1, "connection disconnected, cleaning local binding."

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$300(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$902(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 231
    return-void
.end method
