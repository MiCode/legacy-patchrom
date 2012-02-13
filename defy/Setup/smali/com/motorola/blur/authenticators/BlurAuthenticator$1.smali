.class Lcom/motorola/blur/authenticators/BlurAuthenticator$1;
.super Landroid/os/Handler;
.source "BlurAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/authenticators/BlurAuthenticator;->setUpListenerHandler(Lcom/motorola/blur/authenticators/BlurAuthenticationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/authenticators/BlurAuthenticator;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    invoke-interface {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticationListener;->setupProgressDialog()V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    invoke-interface {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticationListener;->onProgress()V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->handleNeedingUserInteraction(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->handleValidationFailure(Landroid/os/Message;)V

    goto :goto_0

    .line 109
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->handleAuthenticationFailure(Landroid/os/Message;)V

    goto :goto_0

    .line 113
    :pswitch_5
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->verifyBlurAccount()V

    .line 114
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/motorola/blur/authenticators/BlurAuthenticationListener;->onFinished(Landroid/app/AlertDialog;)V

    .line 115
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;->this$0:Lcom/motorola/blur/authenticators/BlurAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->cleanUp()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
