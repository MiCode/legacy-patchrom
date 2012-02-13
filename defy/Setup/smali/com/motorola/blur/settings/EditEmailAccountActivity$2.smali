.class Lcom/motorola/blur/settings/EditEmailAccountActivity$2;
.super Landroid/os/Handler;
.source "EditEmailAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/EditEmailAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditEmailAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->access$200(Lcom/motorola/blur/settings/EditEmailAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->access$200(Lcom/motorola/blur/settings/EditEmailAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->goToProgressPoint(I)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/motorola/blur/settings/EditEmailAccountActivity;->handleAuthResponse(I)V
    invoke-static {v0, v1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->access$300(Lcom/motorola/blur/settings/EditEmailAccountActivity;I)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
