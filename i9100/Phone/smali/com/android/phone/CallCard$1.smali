.class Lcom/android/phone/CallCard$1;
.super Landroid/os/Handler;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x6e

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 173
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->CallEndTimeBlink()V
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$000(Lcom/android/phone/CallCard;)V

    goto :goto_0

    .line 177
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard$1;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/phone/CallCard$1;->removeMessages(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mActiveRecInfo:Z
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mShowRecInfo:Z
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->showRecInfo()V
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)V

    .line 181
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #setter for: Lcom/android/phone/CallCard;->mShowRecInfo:Z
    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->access$202(Lcom/android/phone/CallCard;Z)Z

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$500(Lcom/android/phone/CallCard;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->hideRecInfo()V
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$400(Lcom/android/phone/CallCard;)V

    .line 184
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/CallCard;->mShowRecInfo:Z
    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->access$202(Lcom/android/phone/CallCard;Z)Z

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #calls: Lcom/android/phone/CallCard;->hideRecInfo()V
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$400(Lcom/android/phone/CallCard;)V

    .line 189
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #setter for: Lcom/android/phone/CallCard;->mShowRecInfo:Z
    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->access$202(Lcom/android/phone/CallCard;Z)Z

    goto :goto_0

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method
