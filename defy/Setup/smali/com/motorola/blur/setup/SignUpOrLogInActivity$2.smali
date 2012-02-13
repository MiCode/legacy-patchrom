.class Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;
.super Landroid/os/Handler;
.source "SignUpOrLogInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/SignUpOrLogInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$200(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 111
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$200(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 112
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$202(Lcom/motorola/blur/setup/SignUpOrLogInActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 113
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #calls: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->sendBOTABroadcast()V
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$300(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mWaiting:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$400(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #calls: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->dismissDialog()V
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$500(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    const-class v3, Lcom/motorola/blur/setup/BOTAInfoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->setResult(I)V

    .line 125
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->finish()V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #getter for: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->mWaiting:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$400(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #calls: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->dismissDialog()V
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$500(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V

    .line 133
    iget-object v0, p0, Lcom/motorola/blur/setup/SignUpOrLogInActivity$2;->this$0:Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    #calls: Lcom/motorola/blur/setup/SignUpOrLogInActivity;->continueToNext()V
    invoke-static {v0}, Lcom/motorola/blur/setup/SignUpOrLogInActivity;->access$600(Lcom/motorola/blur/setup/SignUpOrLogInActivity;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
