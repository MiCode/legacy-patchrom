.class Lcom/motorola/blur/settings/ChangeBlurEmailActivity$3;
.super Ljava/lang/Object;
.source "ChangeBlurEmailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->requestChangeEmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #calls: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->registerReceiver()V
    invoke-static {v1}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$700(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)V

    .line 171
    iget-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    invoke-static {v1}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v0

    .line 173
    .local v0, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    iget-object v1, p0, Lcom/motorola/blur/settings/ChangeBlurEmailActivity$3;->this$0:Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    #getter for: Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->mNewEmail:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;->access$200(Lcom/motorola/blur/settings/ChangeBlurEmailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->changeEmail(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 175
    return-void
.end method
