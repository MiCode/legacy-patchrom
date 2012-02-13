.class Lcom/android/phone/NetworkSettingENS$3;
.super Lcom/android/phone/INetworkQueryServiceCallback$Stub;
.source "NetworkSettingENS.java"


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
    .line 283
    iput-object p1, p0, Lcom/android/phone/NetworkSettingENS$3;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, networkInfoArray:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS$3;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v2, "notifying message loop of query completion."

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS$3;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/NetworkSettingENS;->access$600(Lcom/android/phone/NetworkSettingENS;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 290
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 291
    return-void
.end method
