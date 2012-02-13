.class Lcom/android/internal/policy/impl/DrivingUnlockScreen$IncomingHandler;
.super Landroid/os/Handler;
.source "DrivingUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DrivingUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$IncomingHandler;->this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/DrivingUnlockScreen;Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/DrivingUnlockScreen$IncomingHandler;-><init>(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .local v0, b:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$IncomingHandler;->this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;

    const-string v1, "com.tmobile.driving.lockScreen.portrait"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    #setter for: Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mView:Landroid/widget/RemoteViews;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->access$002(Lcom/android/internal/policy/impl/DrivingUnlockScreen;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$IncomingHandler;->this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/DrivingUnlockScreen;->setRemoteView()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->access$100(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$IncomingHandler;->this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/DrivingUnlockScreen;->doUnbindService()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->access$200(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
