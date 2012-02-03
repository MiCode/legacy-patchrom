.class Lcom/android/phone/ChangeIccPinScreen$1;
.super Landroid/os/Handler;
.source "ChangeIccPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ChangeIccPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ChangeIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/ChangeIccPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/ChangeIccPinScreen$1;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 81
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 84
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/ChangeIccPinScreen$1;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #calls: Lcom/android/phone/ChangeIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/ChangeIccPinScreen;->access$000(Lcom/android/phone/ChangeIccPinScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
