.class Lcom/vzw/location/VzwGpsLocationProvider$1;
.super Lcom/vzw/location/IVzwGpsStatusProvider$Stub;
.source "VzwGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwGpsLocationProvider$1;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    invoke-direct {p0}, Lcom/vzw/location/IVzwGpsStatusProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 7
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "listener==null in addGpsStatusListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider$1;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-interface {p1}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    iget-object v6, p0, Lcom/vzw/location/VzwGpsLocationProvider$1;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/vzw/location/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v6, p0, Lcom/vzw/location/VzwGpsLocationProvider$1;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/vzw/location/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vzw/location/VzwGpsLocationProvider$Listener;

    .local v4, test:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    iget-object v6, v4, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v6}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    monitor-exit v5

    .end local v4           #test:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :goto_1
    return-void

    .restart local v4       #test:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #test:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :cond_2
    new-instance v2, Lcom/vzw/location/VzwGpsLocationProvider$Listener;

    iget-object v6, p0, Lcom/vzw/location/VzwGpsLocationProvider$1;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    invoke-direct {v2, v6, p1}, Lcom/vzw/location/VzwGpsLocationProvider$Listener;-><init>(Lcom/vzw/location/VzwGpsLocationProvider;Lcom/vzw/location/IVzwGpsStatusListener;)V

    .local v2, l:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v6, p0, Lcom/vzw/location/VzwGpsLocationProvider$1;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/vzw/location/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    goto :goto_1

    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    .end local v3           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public removeGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "listener==null in addGpsStatusListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, p0, Lcom/vzw/location/VzwGpsLocationProvider$1;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/vzw/location/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-interface {p1}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    const/4 v2, 0x0

    .local v2, l:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    iget-object v6, p0, Lcom/vzw/location/VzwGpsLocationProvider$1;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/vzw/location/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    if-nez v2, :cond_2

    iget-object v6, p0, Lcom/vzw/location/VzwGpsLocationProvider$1;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/vzw/location/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vzw/location/VzwGpsLocationProvider$Listener;

    .local v4, test:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    iget-object v6, v4, Lcom/vzw/location/VzwGpsLocationProvider$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    invoke-interface {v6}, Lcom/vzw/location/IVzwGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #test:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    :cond_2
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/vzw/location/VzwGpsLocationProvider$1;->this$0:Lcom/vzw/location/VzwGpsLocationProvider;

    #getter for: Lcom/vzw/location/VzwGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/vzw/location/VzwGpsLocationProvider;->access$000(Lcom/vzw/location/VzwGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_3
    monitor-exit v5

    return-void

    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/vzw/location/VzwGpsLocationProvider$Listener;
    .end local v3           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
