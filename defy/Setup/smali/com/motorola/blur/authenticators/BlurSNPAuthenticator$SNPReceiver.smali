.class Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BlurSNPAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SNPReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;


# direct methods
.method private constructor <init>(Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;->this$0:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;-><init>(Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 66
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;->this$0:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;

    invoke-virtual {v2}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->getBackgroundMessage()Landroid/os/Message;

    move-result-object v1

    .line 67
    .local v1, msg:Landroid/os/Message;
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 74
    :goto_0
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator$SNPReceiver;->this$0:Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;

    invoke-virtual {v2, v1}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;->sendBackgroundMessage(Landroid/os/Message;)Z

    .line 79
    .end local v0           #action:Ljava/lang/String;
    :goto_1
    return-void

    .line 72
    .restart local v0       #action:Ljava/lang/String;
    :cond_0
    iput v3, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 77
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    const-string v2, "BSNPA"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Received a broadcast with Message: NULL !!!"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
