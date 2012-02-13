.class Lcom/android/phone/OtaStartupReceiver$1;
.super Landroid/os/Handler;
.source "OtaStartupReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaStartupReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaStartupReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaStartupReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 46
    :pswitch_0
    const-string v0, "OtaStartupReceiver"

    const-string v1, "Attempting OtaActivation from handler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    #getter for: Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/OtaStartupReceiver;->access$000(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/OtaStartupReceiver$1;->this$0:Lcom/android/phone/OtaStartupReceiver;

    #getter for: Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/OtaStartupReceiver;->access$100(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
