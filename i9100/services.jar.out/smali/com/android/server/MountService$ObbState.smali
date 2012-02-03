.class Lcom/android/server/MountService$ObbState;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObbState"
.end annotation


# instance fields
.field public final callerUid:I

.field filename:Ljava/lang/String;

.field final nonce:I

.field final synthetic this$0:Lcom/android/server/MountService;

.field final token:Landroid/os/storage/IObbActionListener;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V
    .locals 0
    .parameter
    .parameter "filename"
    .parameter "callerUid"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p2, p0, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    .line 379
    iput p3, p0, Lcom/android/server/MountService$ObbState;->callerUid:I

    .line 380
    iput-object p4, p0, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 381
    iput p5, p0, Lcom/android/server/MountService$ObbState;->nonce:I

    .line 382
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 402
    new-instance v0, Lcom/android/server/MountService$UnmountObbAction;

    iget-object v1, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    invoke-direct {v0, v1, p0, v3}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 403
    .local v0, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v2}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-interface {v0}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public link()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 408
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObbState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-object v1, p0, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v1, p0, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v1, ",callerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget v1, p0, Lcom/android/server/MountService$ObbState;->callerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unlink()V
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 412
    return-void
.end method
