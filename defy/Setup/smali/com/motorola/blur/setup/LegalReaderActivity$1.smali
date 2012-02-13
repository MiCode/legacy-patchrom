.class Lcom/motorola/blur/setup/LegalReaderActivity$1;
.super Ljava/lang/Object;
.source "LegalReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/LegalReaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/LegalReaderActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/LegalReaderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    .line 101
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v2

    .line 104
    .local v2, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 105
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_3

    .line 106
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$002(Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mImsi:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$102(Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mSn:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$202(Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    :goto_0
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$000(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    const-string v4, "NO_PHONE_NUMBER"

    #setter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$002(Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$100(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    const-string v4, "NO_IMSI"

    #setter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mImsi:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$102(Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mSn:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$200(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    const-string v4, "NO_SERIAL_NUMBER"

    #setter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mSn:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$202(Lcom/motorola/blur/setup/LegalReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    :cond_2
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    iget v3, v3, Lcom/motorola/blur/setup/LegalReaderActivity;->mBackupResId:I

    packed-switch v3, :pswitch_data_0

    .line 132
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    sget-object v4, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->ToS:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    #setter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$302(Lcom/motorola/blur/setup/LegalReaderActivity;Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 137
    :goto_1
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    invoke-static {v3}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$300(Lcom/motorola/blur/setup/LegalReaderActivity;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$000(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mImsi:Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$100(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mSn:Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$200(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->getLegalText(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 138
    return-void

    .line 110
    :cond_3
    const-string v3, "BlurLRA"

    const-string v4, "YOU\'RE PROBABLY IN BIG TROUBLE BECAUSE YOU DON\'T HAVE A TELEPHONY MANAGER!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    sget-object v4, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->EULA:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    #setter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$302(Lcom/motorola/blur/setup/LegalReaderActivity;Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    goto :goto_1

    .line 128
    :pswitch_1
    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$1;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    sget-object v4, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->Privacy:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    #setter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    invoke-static {v3, v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$302(Lcom/motorola/blur/setup/LegalReaderActivity;Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    goto :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x7f0c00ff
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
