.class Landroid/drm/mobile1/DrmRawContent$DrmInputStream;
.super Ljava/io/InputStream;
.source "DrmRawContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile1/DrmRawContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmInputStream"
.end annotation


# instance fields
.field private b:[B

.field private isClosed:Z

.field private offset:I

.field final synthetic this$0:Landroid/drm/mobile1/DrmRawContent;


# direct methods
.method public constructor <init>(Landroid/drm/mobile1/DrmRawContent;Landroid/drm/mobile1/DrmRights;)V
    .locals 1
    .parameter
    .parameter "rights"

    .prologue
    const/4 v0, 0x0

    .line 266
    iput-object p1, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 274
    iput-boolean v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->isClosed:Z

    .line 275
    iput v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->offset:I

    .line 276
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->b:[B

    .line 277
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v2, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeGetContentLength()I
    invoke-static {v2}, Landroid/drm/mobile1/DrmRawContent;->access$000(Landroid/drm/mobile1/DrmRawContent;)I

    move-result v1

    .line 286
    .local v1, len:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 287
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 290
    :cond_0
    const/4 v2, -0x3

    if-ne v2, v1, :cond_1

    .line 291
    const/4 v2, 0x0

    .line 297
    :goto_0
    return v2

    .line 293
    :cond_1
    iget v2, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->offset:I

    sub-int v0, v1, v2

    .line 294
    .local v0, availableLen:I
    if-gez v0, :cond_2

    .line 295
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_2
    move v2, v0

    .line 297
    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->isClosed:Z

    .line 379
    return-void
.end method

.method public mark(I)V
    .locals 0
    .parameter "readlimit"

    .prologue
    .line 358
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 306
    iget-object v1, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->b:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v4, v2}, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->read([BII)I

    move-result v0

    .line 308
    .local v0, res:I
    if-ne v3, v0, :cond_0

    move v1, v3

    .line 311
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->b:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
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
    .line 318
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 325
    if-nez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 327
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 328
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 329
    :cond_2
    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->isClosed:Z

    if-ne v0, v1, :cond_3

    .line 330
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 332
    :cond_3
    if-nez p3, :cond_4

    .line 333
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    .line 335
    :cond_4
    iget-object v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->this$0:Landroid/drm/mobile1/DrmRawContent;

    iget v1, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->offset:I

    #calls: Landroid/drm/mobile1/DrmRawContent;->nativeReadContent([BIII)I
    invoke-static {v0, p1, p2, p3, v1}, Landroid/drm/mobile1/DrmRawContent;->access$100(Landroid/drm/mobile1/DrmRawContent;[BIII)I

    move-result p3

    .line 337
    if-ne v2, p3, :cond_5

    .line 338
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 339
    :cond_5
    const/4 v0, -0x2

    if-ne v0, p3, :cond_6

    move v0, v2

    .line 340
    goto :goto_0

    .line 342
    :cond_6
    iget v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->offset:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;->offset:I

    move v0, p3

    .line 344
    goto :goto_0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    const-wide/16 v0, 0x0

    return-wide v0
.end method
