.class public Lcom/broadcom/bt/service/test/TxRxTestParams;
.super Ljava/lang/Object;
.source "TxRxTestParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BD_ADDR_LEN:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/test/TxRxTestParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bb_packet_len:I

.field public bb_packet_type:B

.field public carrier_enable:B

.field public frequency:B

.field public hopping_mode:B

.field public logical_channel:B

.field public mode:B

.field public modulation_type:B

.field public remote_bd:[B

.field public report_period:I

.field public testmode:I

.field public tx_power_level:B

.field public tx_power_option:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/broadcom/bt/service/test/TxRxTestParams$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/test/TxRxTestParams$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/test/TxRxTestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(IB[BIBBBBBBBBI)V
    .locals 0
    .parameter "testmode"
    .parameter "carrier_enable"
    .parameter "remote_bd"
    .parameter "report_period"
    .parameter "frequency"
    .parameter "mode"
    .parameter "hopping_mode"
    .parameter "modulation_type"
    .parameter "logical_channel"
    .parameter "tx_power_level"
    .parameter "tx_power_option"
    .parameter "bb_packet_type"
    .parameter "bb_packet_len"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->testmode:I

    .line 85
    iput-byte p2, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->carrier_enable:B

    .line 86
    iput-object p3, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    .line 87
    iput p4, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->report_period:I

    .line 88
    iput-byte p5, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->frequency:B

    .line 89
    iput-byte p6, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->mode:B

    .line 90
    iput-byte p7, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->hopping_mode:B

    .line 91
    iput-byte p8, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->modulation_type:B

    .line 92
    iput-byte p9, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->logical_channel:B

    .line 93
    iput-byte p10, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_level:B

    .line 94
    iput-byte p11, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_option:B

    .line 95
    iput-byte p12, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_type:B

    .line 96
    iput p13, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_len:I

    .line 97
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/test/TxRxTestParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/test/TxRxTestParams$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/TxRxTestParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 167
    .local v2, len:I
    const/16 v3, 0xc

    if-ge v3, v2, :cond_0

    .line 168
    const/16 v2, 0xc

    .line 170
    :cond_0
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 171
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 172
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 171
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 175
    :cond_1
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->testmode:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->carrier_enable:B

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .local v0, temp:I
    if-eqz v0, :cond_0

    .line 147
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    .line 148
    iget-object v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 152
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->report_period:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->frequency:B

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->mode:B

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->hopping_mode:B

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->modulation_type:B

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->logical_channel:B

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_level:B

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_option:B

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_type:B

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_len:I

    .line 162
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 114
    iget v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->testmode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->carrier_enable:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 116
    iget-object v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->remote_bd:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 122
    :goto_0
    iget v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->report_period:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->frequency:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->mode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 125
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->hopping_mode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->modulation_type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 127
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->logical_channel:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 128
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_level:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->tx_power_option:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget-byte v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 131
    iget v0, p0, Lcom/broadcom/bt/service/test/TxRxTestParams;->bb_packet_len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
