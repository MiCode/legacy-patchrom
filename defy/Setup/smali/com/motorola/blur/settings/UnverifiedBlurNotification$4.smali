.class Lcom/motorola/blur/settings/UnverifiedBlurNotification$4;
.super Ljava/lang/Object;
.source "UnverifiedBlurNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/UnverifiedBlurNotification;->resendEmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$4;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$4;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    #calls: Lcom/motorola/blur/settings/UnverifiedBlurNotification;->registerReceiver()V
    invoke-static {v1}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->access$700(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V

    .line 163
    iget-object v1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$4;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    invoke-static {v1}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v0

    .line 165
    .local v0, wsClient:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    invoke-interface {v0}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->sendConfirmationEmail()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 166
    return-void
.end method
