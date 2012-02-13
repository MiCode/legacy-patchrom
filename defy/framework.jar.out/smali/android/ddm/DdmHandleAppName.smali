.class public Landroid/ddm/DdmHandleAppName;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleAppName.java"


# static fields
.field public static final CHUNK_APNM:I

.field private static volatile mAppName:Ljava/lang/String;

.field private static mInstance:Landroid/ddm/DdmHandleAppName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "APNM"

    invoke-static {v0}, Landroid/ddm/DdmHandleAppName;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleAppName;->CHUNK_APNM:I

    const-string v0, ""

    sput-object v0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    new-instance v0, Landroid/ddm/DdmHandleAppName;

    invoke-direct {v0}, Landroid/ddm/DdmHandleAppName;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleAppName;->mInstance:Landroid/ddm/DdmHandleAppName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public static register()V
    .locals 0

    .prologue
    return-void
.end method

.method private static sendAPNM(Ljava/lang/String;)V
    .locals 3
    .parameter "appName"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, out:Ljava/nio/ByteBuffer;
    sget-object v2, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v1, p0}, Landroid/ddm/DdmHandleAppName;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/ddm/DdmHandleAppName;->CHUNK_APNM:I

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    .local v0, chunk:Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    return-void
.end method

.method public static setAppName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    invoke-static {p0}, Landroid/ddm/DdmHandleAppName;->sendAPNM(Ljava/lang/String;)V

    goto :goto_0
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
    .locals 1
    .parameter "request"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method
