.class Landroid/graphics/TemporaryBuffer;
.super Ljava/lang/Object;
.source "TemporaryBuffer.java"


# static fields
.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(I)[C
    .locals 3
    .parameter "len"

    .prologue
    const-class v1, Landroid/graphics/TemporaryBuffer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    .local v0, buf:[C
    const/4 v2, 0x0

    sput-object v2, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v1

    new-array v0, v1, [C

    :cond_1
    return-object v0

    .end local v0           #buf:[C
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle([C)V
    .locals 2
    .parameter "temp"

    .prologue
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-class v0, Landroid/graphics/TemporaryBuffer;

    monitor-enter v0

    :try_start_0
    sput-object p0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
