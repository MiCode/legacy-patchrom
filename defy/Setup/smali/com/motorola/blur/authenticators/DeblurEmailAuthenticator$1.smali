.class Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$1;
.super Ljava/lang/Object;
.source "DeblurEmailAuthenticator.java"

# interfaces
.implements Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/motorola/blur/util/authentication/Authentication;)V
    .locals 2
    .parameter "auth"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    invoke-virtual {v1}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->getBackgroundMessage()Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 107
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;

    invoke-virtual {v1, v0}, Lcom/motorola/blur/authenticators/DeblurEmailAuthenticator;->sendBackgroundMessage(Landroid/os/Message;)Z

    .line 109
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
