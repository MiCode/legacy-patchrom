.class public Landroid/ddm/DdmHandleExit;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleExit.java"


# static fields
.field public static final CHUNK_EXIT:I

.field private static mInstance:Landroid/ddm/DdmHandleExit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "EXIT"

    invoke-static {v0}, Landroid/ddm/DdmHandleExit;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleExit;->CHUNK_EXIT:I

    new-instance v0, Landroid/ddm/DdmHandleExit;

    invoke-direct {v0}, Landroid/ddm/DdmHandleExit;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleExit;->mInstance:Landroid/ddm/DdmHandleExit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 2

    .prologue
    sget v0, Landroid/ddm/DdmHandleExit;->CHUNK_EXIT:I

    sget-object v1, Landroid/ddm/DdmHandleExit;->mInstance:Landroid/ddm/DdmHandleExit;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    .prologue
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3
    .parameter "request"

    .prologue
    invoke-static {p1}, Landroid/ddm/DdmHandleExit;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, in:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .local v1, statusCode:I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->halt(I)V

    const/4 v2, 0x0

    return-object v2
.end method
