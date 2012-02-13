.class Landroid/os/storage/StorageManager$MountServiceBinderListener;
.super Landroid/os/storage/IMountServiceListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MountServiceBinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor <init>(Landroid/os/storage/StorageManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IMountServiceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$MountServiceBinderListener;-><init>(Landroid/os/storage/StorageManager;)V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    iget-object v2, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    #getter for: Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    #getter for: Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-virtual {v2, p1, p2, p3}, Landroid/os/storage/StorageManager$ListenerDelegate;->sendStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 3
    .parameter "available"

    .prologue
    iget-object v2, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    #getter for: Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/os/storage/StorageManager$MountServiceBinderListener;->this$0:Landroid/os/storage/StorageManager;

    #getter for: Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-virtual {v2, p1}, Landroid/os/storage/StorageManager$ListenerDelegate;->sendShareAvailabilityChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
