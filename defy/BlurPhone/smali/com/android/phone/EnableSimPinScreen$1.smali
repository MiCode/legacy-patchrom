.class Lcom/android/phone/EnableSimPinScreen$1;
.super Landroid/os/Handler;
.source "EnableSimPinScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EnableSimPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnableSimPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EnableSimPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/EnableSimPinScreen$1;->this$0:Lcom/android/phone/EnableSimPinScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 64
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/EnableSimPinScreen$1;->this$0:Lcom/android/phone/EnableSimPinScreen;

    #calls: Lcom/android/phone/EnableSimPinScreen;->handleResult(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/EnableSimPinScreen;->access$000(Lcom/android/phone/EnableSimPinScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
