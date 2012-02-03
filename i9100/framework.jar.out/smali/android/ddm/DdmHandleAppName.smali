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
    .line 32
    const-string v0, "APNM"

    invoke-static {v0}, Landroid/ddm/DdmHandleAppName;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleAppName;->CHUNK_APNM:I

    .line 34
    const-string v0, ""

    sput-object v0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/ddm/DdmHandleAppName;

    invoke-direct {v0}, Landroid/ddm/DdmHandleAppName;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleAppName;->mInstance:Landroid/ddm/DdmHandleAppName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public static register()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method private static sendAPNM(Ljava/lang/String;)V
    .locals 3
    .parameter "appName"

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 95
    .local v1, out:Ljava/nio/ByteBuffer;
    sget-object v2, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 97
    invoke-static {v1, p0}, Landroid/ddm/DdmHandleAppName;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/ddm/DdmHandleAppName;->CHUNK_APNM:I

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    .line 100
    .local v0, chunk:Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 101
    return-void
.end method

.method public static setAppName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    sput-object p0, Landroid/ddm/DdmHandleAppName;->mAppName:Ljava/lang/String;

    .line 80
    invoke-static {p0}, Landroid/ddm/DdmHandleAppName;->sendAPNM(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public connected()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public disconnected()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 1
    .parameter "request"

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method
