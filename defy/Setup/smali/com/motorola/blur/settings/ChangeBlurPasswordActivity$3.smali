.class Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;
.super Ljava/lang/Object;
.source "ChangeBlurPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->requestChangePassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #calls: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->registerReceiver()V
    invoke-static {v1}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$600(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)V

    .line 197
    iget-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    invoke-static {v1}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v0

    .line 199
    .local v0, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    iget-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mBlurAcntError:Z
    invoke-static {v1}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$700(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mPwd:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$800(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mPwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$800(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->changePassword(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mOriginal:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$900(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->mPwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;->access$800(Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->changePassword(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method
