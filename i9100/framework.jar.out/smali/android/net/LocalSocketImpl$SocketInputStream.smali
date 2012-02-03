.class Landroid/net/LocalSocketImpl$SocketInputStream;
.super Ljava/io/InputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v1

    #calls: Landroid/net/LocalSocketImpl;->available_native(Ljava/io/FileDescriptor;)I
    invoke-static {v0, v1}, Landroid/net/LocalSocketImpl;->access$100(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 60
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #getter for: Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$200(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v3}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 68
    .local v0, myFd:Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "socket closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    .end local v0           #myFd:Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 70
    .restart local v0       #myFd:Ljava/io/FileDescriptor;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #calls: Landroid/net/LocalSocketImpl;->read_native(Ljava/io/FileDescriptor;)I
    invoke-static {v3, v0}, Landroid/net/LocalSocketImpl;->access$300(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    move-result v1

    .line 71
    .local v1, ret:I
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/LocalSocketImpl$SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #getter for: Landroid/net/LocalSocketImpl;->readMonitor:Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$200(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 85
    :try_start_0
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #getter for: Landroid/net/LocalSocketImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v3}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 86
    .local v0, myFd:Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "socket closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v0           #myFd:Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 88
    .restart local v0       #myFd:Ljava/io/FileDescriptor;
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v3, p2, p3

    :try_start_1
    array-length v4, p1

    if-le v3, v4, :cond_2

    .line 89
    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 92
    :cond_2
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    #calls: Landroid/net/LocalSocketImpl;->readba_native([BIILjava/io/FileDescriptor;)I
    invoke-static {v3, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->access$400(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I

    move-result v1

    .line 94
    .local v1, ret:I
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method
