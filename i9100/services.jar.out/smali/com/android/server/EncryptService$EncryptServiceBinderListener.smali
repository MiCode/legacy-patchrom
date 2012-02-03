.class final Lcom/android/server/EncryptService$EncryptServiceBinderListener;
.super Ljava/lang/Object;
.source "EncryptService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EncryptServiceBinderListener"
.end annotation


# instance fields
.field final mListener:Landroid/os/storage/IEncryptServiceListener;

.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;Landroid/os/storage/IEncryptServiceListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/server/EncryptService$EncryptServiceBinderListener;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p2, p0, Lcom/android/server/EncryptService$EncryptServiceBinderListener;->mListener:Landroid/os/storage/IEncryptServiceListener;

    .line 526
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/EncryptService$EncryptServiceBinderListener;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/EncryptService;->access$200(Lcom/android/server/EncryptService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EncryptService$EncryptServiceBinderListener;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/EncryptService;->access$200(Lcom/android/server/EncryptService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 532
    iget-object v1, p0, Lcom/android/server/EncryptService$EncryptServiceBinderListener;->mListener:Landroid/os/storage/IEncryptServiceListener;

    invoke-interface {v1}, Landroid/os/storage/IEncryptServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 533
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
