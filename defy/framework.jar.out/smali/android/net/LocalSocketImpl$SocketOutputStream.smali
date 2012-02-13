.class Landroid/net/LocalSocketImpl$SocketOutputStream;
.super Ljava/io/OutputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #getter for: Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$500(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .local v0, myFd:Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #myFd:Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #myFd:Ljava/io/FileDescriptor;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #calls: Landroid/net/LocalSocketImpl;->write_native(ILjava/io/FileDescriptor;)V
    invoke-static {v2, p1, v0}, Landroid/net/LocalSocketImpl;->access$700(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/LocalSocketImpl$SocketOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #getter for: Landroid/net/LocalSocketImpl;->writeMonitor:Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$500(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .local v0, myFd:Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #myFd:Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #myFd:Ljava/io/FileDescriptor;
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v2, p2, p3

    :try_start_1
    array-length v3, p1

    if-le v2, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    #calls: Landroid/net/LocalSocketImpl;->writeba_native([BIILjava/io/FileDescriptor;)V
    invoke-static {v2, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->access$600(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
