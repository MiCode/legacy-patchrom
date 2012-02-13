.class Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;
.super Ljava/lang/Object;
.source "GsmOemServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OemCommands"
.end annotation


# instance fields
.field final OEM_CMD_QUERY_LEN:I

.field final OEM_NEIGHBORING_CELL_FUNCTAG:I

.field final SIZE_OF_INT:I

.field private b:[B

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x4

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->this$0:Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->SIZE_OF_INT:I

    const v0, 0x6000501

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->OEM_NEIGHBORING_CELL_FUNCTAG:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->OEM_CMD_QUERY_LEN:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;Ljava/io/DataInputStream;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->readIntLittleEndian(Ljava/io/DataInputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method private readIntLittleEndian(Ljava/io/DataInputStream;)J
    .locals 4
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->b:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "in OemCommands.readIntLittleEndian(DataInputStream)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeIntLittleEndian(Ljava/io/DataOutputStream;I)V
    .locals 1
    .parameter "dos"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    shr-int/lit8 v0, p2, 0x10

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    shr-int/lit8 v0, p2, 0x18

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method private writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0
    .parameter "dos"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getNeighboringCellData()[B
    .locals 4

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, dos:Ljava/io/DataOutputStream;
    const v3, 0x6000501

    :try_start_0
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmOemServiceStateTracker$OemCommands;->writeIntLittleEndian(Ljava/io/DataOutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method
