.class Lcom/motorola/blur/setup/LegalReaderActivity$2$1;
.super Ljava/lang/Object;
.source "LegalReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/LegalReaderActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/setup/LegalReaderActivity$2;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/LegalReaderActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/motorola/blur/setup/LegalReaderActivity$2$1;->this$1:Lcom/motorola/blur/setup/LegalReaderActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 150
    iget-object v2, p0, Lcom/motorola/blur/setup/LegalReaderActivity$2$1;->this$1:Lcom/motorola/blur/setup/LegalReaderActivity$2;

    iget-object v0, v2, Lcom/motorola/blur/setup/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    .line 151
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v1

    .line 152
    .local v1, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    iget-object v2, p0, Lcom/motorola/blur/setup/LegalReaderActivity$2$1;->this$1:Lcom/motorola/blur/setup/LegalReaderActivity$2;

    iget-object v2, v2, Lcom/motorola/blur/setup/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mType:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    invoke-static {v2}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$300(Lcom/motorola/blur/setup/LegalReaderActivity;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/setup/LegalReaderActivity$2$1;->this$1:Lcom/motorola/blur/setup/LegalReaderActivity$2;

    iget-object v3, v3, Lcom/motorola/blur/setup/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mPhoneNum:Ljava/lang/String;
    invoke-static {v3}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$000(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/blur/setup/LegalReaderActivity$2$1;->this$1:Lcom/motorola/blur/setup/LegalReaderActivity$2;

    iget-object v4, v4, Lcom/motorola/blur/setup/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$100(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/setup/LegalReaderActivity$2$1;->this$1:Lcom/motorola/blur/setup/LegalReaderActivity$2;

    iget-object v5, v5, Lcom/motorola/blur/setup/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    #getter for: Lcom/motorola/blur/setup/LegalReaderActivity;->mSn:Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/blur/setup/LegalReaderActivity;->access$200(Lcom/motorola/blur/setup/LegalReaderActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->getLegalText(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 153
    return-void
.end method
