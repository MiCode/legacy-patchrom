.class final Lcom/android/server/DropBoxManagerService$EntryFile;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/DropBoxManagerService$EntryFile;",
        ">;"
    }
.end annotation


# instance fields
.field public final blocks:I

.field public final file:Ljava/io/File;

.field public final flags:I

.field public final tag:Ljava/lang/String;

.field public final timestampMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "millis"

    .prologue
    const/4 v1, 0x0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 527
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 528
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 529
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 531
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 10
    .parameter "file"
    .parameter "blockSize"

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    .line 484
    iget-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v8, p2

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    int-to-long v8, p2

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 486
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, name:Ljava/lang/String;
    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 488
    .local v0, at:I
    if-gez v0, :cond_0

    .line 489
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 490
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 491
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 519
    :goto_0
    return-void

    .line 495
    :cond_0
    const/4 v2, 0x0

    .line 496
    .local v2, flags:I
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 497
    const-string v6, ".gz"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 498
    or-int/lit8 v2, v2, 0x4

    .line 499
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 501
    :cond_1
    const-string v6, ".lost"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 502
    or-int/lit8 v2, v2, 0x1

    .line 503
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 514
    :goto_1
    iput v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 517
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 518
    .local v3, millis:J
    :goto_2
    iput-wide v3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    goto :goto_0

    .line 504
    .end local v3           #millis:J
    :cond_2
    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 505
    or-int/lit8 v2, v2, 0x2

    .line 506
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 507
    :cond_3
    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 508
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 510
    :cond_4
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 511
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    goto :goto_0

    .line 517
    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Ljava/lang/NumberFormatException;
    const-wide/16 v3, 0x0

    .restart local v3       #millis:J
    goto :goto_2
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V
    .locals 4
    .parameter "temp"
    .parameter "dir"
    .parameter "tag"
    .parameter "timestampMillis"
    .parameter "flags"
    .parameter "blockSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 448
    :cond_0
    iput-object p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 449
    iput-wide p4, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 450
    iput p6, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 451
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_1

    const-string v2, ".txt"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p6, 0x4

    if-eqz v2, :cond_2

    const-string v2, ".gz"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    .line 455
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 456
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_1
    const-string v2, ".dat"

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, p7

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 459
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .locals 3
    .parameter "dir"
    .parameter "tag"
    .parameter "timestampMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 470
    iput-wide p3, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .line 471
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 472
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".lost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    .line 474
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 475
    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I
    .locals 7
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 423
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-wide v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    move v0, v4

    .line 431
    :goto_0
    return v0

    .line 424
    :cond_0
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-wide v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move v0, v5

    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_0

    .line 428
    :cond_4
    if-ne p0, p1, :cond_5

    move v0, v6

    goto :goto_0

    .line 429
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ge v0, v1, :cond_6

    move v0, v4

    goto :goto_0

    .line 430
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-le v0, v1, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v6

    .line 431
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 414
    check-cast p1, Lcom/android/server/DropBoxManagerService$EntryFile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->compareTo(Lcom/android/server/DropBoxManagerService$EntryFile;)I

    move-result v0

    return v0
.end method
