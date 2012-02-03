.class public Landroid/webkit/ByteArrayBuilder$Chunk;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ByteArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chunk"
.end annotation


# instance fields
.field public mArray:[B

.field public mLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 157
    return-void
.end method


# virtual methods
.method public release()V
    .locals 4

    .prologue
    .line 163
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 164
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 167
    :try_start_0
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$100()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Landroid/webkit/ByteArrayBuilder;->access$000()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
