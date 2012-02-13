.class Lcom/motorola/blur/authenticators/BlurAuthenticator$2;
.super Landroid/os/Handler;
.source "BlurAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/authenticators/BlurAuthenticator;->initBackgroundThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/authenticators/BlurAuthenticator;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$2;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$2;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->processBackgroundMessage(Landroid/os/Message;)V

    .line 187
    return-void
.end method
