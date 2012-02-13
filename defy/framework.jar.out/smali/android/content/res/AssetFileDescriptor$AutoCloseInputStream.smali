.class public Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
.super Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.source "AssetFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseInputStream"
.end annotation


# instance fields
.field private mRemaining:J


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public mark(I)V
    .locals 4
    .parameter "readlimit"

    .prologue
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mark(I)V

    goto :goto_0
.end method

.method public markSupported()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->markSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read()I

    move-result v0

    .local v0, res:I
    if-ltz v0, :cond_1

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    :cond_1
    move v1, v0

    goto :goto_0

    .end local v0           #res:I
    :cond_2
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read()I

    move-result v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 6
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    array-length v0, p1

    .local v0, count:I
    int-to-long v2, v0

    iget-wide v4, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    long-to-int v0, v2

    :cond_1
    const/4 v2, 0x0

    invoke-super {p0, p1, v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v1

    .local v1, res:I
    if-ltz v1, :cond_2

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    :cond_2
    move v2, v1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #res:I
    :cond_3
    invoke-super {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([B)I

    move-result v2

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    int-to-long v1, p3

    iget-wide v3, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    long-to-int p3, v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v0

    .local v0, res:I
    if-ltz v0, :cond_2

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    :cond_2
    move v1, v0

    goto :goto_0

    .end local v0           #res:I
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 6
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    iget-wide p1, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    move-result-wide v0

    .local v0, res:J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_2

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;->mRemaining:J

    :cond_2
    move-wide v2, v0

    goto :goto_0

    .end local v0           #res:J
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->skip(J)J

    move-result-wide v2

    goto :goto_0
.end method
