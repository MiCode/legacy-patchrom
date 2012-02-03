.class Lcom/android/server/enterprise/MiscPolicy$1;
.super Landroid/os/Handler;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/MiscPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/MiscPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/server/enterprise/MiscPolicy$1;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 736
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 743
    :goto_0
    return-void

    .line 739
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.voicerecorder.HIDENOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy$1;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    #getter for: Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/MiscPolicy;->access$000(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
