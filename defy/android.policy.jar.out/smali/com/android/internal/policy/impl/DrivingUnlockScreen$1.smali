.class Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;
.super Ljava/lang/Object;
.source "DrivingUnlockScreen.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DrivingUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mService:Landroid/os/Messenger;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->access$402(Lcom/android/internal/policy/impl/DrivingUnlockScreen;Landroid/os/Messenger;)Landroid/os/Messenger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->access$500(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mService:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->access$400(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mService:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->access$400(Lcom/android/internal/policy/impl/DrivingUnlockScreen;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/DrivingUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/DrivingUnlockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/DrivingUnlockScreen;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/DrivingUnlockScreen;->access$402(Lcom/android/internal/policy/impl/DrivingUnlockScreen;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
