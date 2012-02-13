.class Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;
.super Ljava/io/FileInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoCloseMemoryFileInputStream"
.end annotation


# instance fields
.field private mFile:Landroid/os/MemoryFile;

.field private mParcelFd:Landroid/os/ParcelFileDescriptor;

.field private mStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;I)V
    .locals 3
    .parameter "fd"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Landroid/os/MemoryFile;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, p2, v2}, Landroid/os/MemoryFile;-><init>(Ljava/io/FileDescriptor;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mFile:Landroid/os/MemoryFile;

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mFile:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

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
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mFile:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
