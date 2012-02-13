.class Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BlurOAuthAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OAuthReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;


# direct methods
.method private constructor <init>(Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;->this$0:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;-><init>(Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;->this$0:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;

    invoke-virtual {v2}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->getBackgroundMessage()Landroid/os/Message;

    move-result-object v1

    .line 53
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 56
    const-string v2, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;->this$0:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;

    invoke-virtual {v2, v1}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->sendBackgroundMessage(Landroid/os/Message;)Z

    .line 66
    return-void

    .line 58
    :cond_0
    const-string v2, "com.motorola.blur.service.blur.oauth.getoauthurl.resp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 60
    invoke-static {p2}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;->getOAuthUrlResp(Landroid/content/Intent;)Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_1
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 63
    invoke-static {p2}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;->getInvokeCallbackUrlResp(Landroid/content/Intent;)Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
