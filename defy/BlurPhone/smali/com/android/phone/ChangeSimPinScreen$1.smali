.class Lcom/android/phone/ChangeSimPinScreen$1;
.super Landroid/os/Handler;
.source "ChangeSimPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ChangeSimPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ChangeSimPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/ChangeSimPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/ChangeSimPinScreen$1;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 92
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 95
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/ChangeSimPinScreen$1;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #calls: Lcom/android/phone/ChangeSimPinScreen;->handleResult(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/ChangeSimPinScreen;->access$000(Lcom/android/phone/ChangeSimPinScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
