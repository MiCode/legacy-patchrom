.class Lcom/motorola/blur/setup/SetupProgressDialog$1;
.super Landroid/os/Handler;
.source "SetupProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/SetupProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/SetupProgressDialog;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/SetupProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/motorola/blur/setup/SetupProgressDialog$1;->this$0:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog$1;->this$0:Lcom/motorola/blur/setup/SetupProgressDialog;

    #calls: Lcom/motorola/blur/setup/SetupProgressDialog;->setIntervalProgress()V
    invoke-static {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->access$000(Lcom/motorola/blur/setup/SetupProgressDialog;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
