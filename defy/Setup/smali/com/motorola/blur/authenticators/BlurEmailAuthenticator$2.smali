.class Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$2;
.super Ljava/lang/Object;
.source "BlurEmailAuthenticator.java"

# interfaces
.implements Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$2;->this$0:Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/motorola/blur/util/authentication/Authentication;)V
    .locals 2
    .parameter "auth"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$2;->this$0:Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;

    invoke-virtual {v1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->getBackgroundMessage()Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 101
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator$2;->this$0:Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;

    invoke-virtual {v1, v0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->sendBackgroundMessage(Landroid/os/Message;)Z

    .line 103
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
