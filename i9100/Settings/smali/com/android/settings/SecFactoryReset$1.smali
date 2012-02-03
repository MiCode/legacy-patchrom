.class Lcom/android/settings/SecFactoryReset$1;
.super Landroid/os/Handler;
.source "SecFactoryReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecFactoryReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecFactoryReset;


# direct methods
.method constructor <init>(Lcom/android/settings/SecFactoryReset;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/SecFactoryReset$1;->this$0:Lcom/android/settings/SecFactoryReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const-string v0, "SecFactoryReset"

    const-string v1, "modem reset done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/settings/SecFactoryReset$1;->this$0:Lcom/android/settings/SecFactoryReset;

    #calls: Lcom/android/settings/SecFactoryReset;->runAndroidFactoryReset()V
    invoke-static {v0}, Lcom/android/settings/SecFactoryReset;->access$000(Lcom/android/settings/SecFactoryReset;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_0
    .end packed-switch
.end method
