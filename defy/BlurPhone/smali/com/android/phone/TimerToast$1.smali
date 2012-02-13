.class Lcom/android/phone/TimerToast$1;
.super Landroid/os/Handler;
.source "TimerToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TimerToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TimerToast;


# direct methods
.method constructor <init>(Lcom/android/phone/TimerToast;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/phone/TimerToast$1;->this$0:Lcom/android/phone/TimerToast;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/TimerToast$1;->this$0:Lcom/android/phone/TimerToast;

    invoke-virtual {v0}, Lcom/android/phone/TimerToast;->dismiss()V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
