.class Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;
.super Landroid/os/Handler;
.source "ServiceCredentialsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceCredentialsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 214
    const-string v0, "SCA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oops, forgot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mProviderId:Ljava/lang/Long;
    invoke-static {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$200(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->mYahooMailProviderId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$100(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    new-instance v1, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity$1$1;-><init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
