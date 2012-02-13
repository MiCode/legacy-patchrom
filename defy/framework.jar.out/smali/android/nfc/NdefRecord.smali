.class public final Landroid/nfc/NdefRecord;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_CF:B = 0x20t

.field private static final FLAG_IL:B = 0x8t

.field private static final FLAG_MB:B = -0x80t

.field private static final FLAG_ME:B = 0x40t

.field private static final FLAG_SR:B = 0x10t

.field public static final RTD_ALTERNATIVE_CARRIER:[B = null

.field public static final RTD_HANDOVER_CARRIER:[B = null

.field public static final RTD_HANDOVER_REQUEST:[B = null

.field public static final RTD_HANDOVER_SELECT:[B = null

.field public static final RTD_SMART_POSTER:[B = null

.field public static final RTD_TEXT:[B = null

.field public static final RTD_URI:[B = null

.field public static final TNF_ABSOLUTE_URI:S = 0x3s

.field public static final TNF_EMPTY:S = 0x0s

.field public static final TNF_EXTERNAL_TYPE:S = 0x4s

.field public static final TNF_MIME_MEDIA:S = 0x2s

.field public static final TNF_RESERVED:S = 0x7s

.field public static final TNF_UNCHANGED:S = 0x6s

.field public static final TNF_UNKNOWN:S = 0x5s

.field public static final TNF_WELL_KNOWN:S = 0x1s


# instance fields
.field private final mFlags:B

.field private final mId:[B

.field private final mPayload:[B

.field private final mTnf:S

.field private final mType:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v4, [B

    const/16 v1, 0x54

    aput-byte v1, v0, v3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v0, v4, [B

    const/16 v1, 0x55

    aput-byte v1, v0, v3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    new-instance v0, Landroid/nfc/NdefRecord$1;

    invoke-direct {v0}, Landroid/nfc/NdefRecord$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 0x1
        0x53t
        0x70t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x61t
        0x63t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x48t
        0x63t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x48t
        0x72t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x48t
        0x73t
    .end array-data
.end method

.method public constructor <init>(S[B[B[B)V
    .locals 4
    .parameter "tnf"
    .parameter "type"
    .parameter "id"
    .parameter "payload"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal null argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p1, :cond_2

    const/4 v1, 0x7

    if-le p1, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TNF out of range "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/16 v0, -0x40

    .local v0, flags:B
    array-length v1, p4

    const/16 v2, 0xff

    if-ge v1, v2, :cond_4

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    :cond_4
    array-length v1, p3

    if-eqz v1, :cond_5

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_5
    iput-byte v0, p0, Landroid/nfc/NdefRecord;->mFlags:B

    iput-short p1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Landroid/nfc/NdefRecord;->mFlags:B

    iput-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-direct {p0, p1}, Landroid/nfc/NdefRecord;->parseNdefRecord([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/nfc/FormatException;

    const-string v1, "Error while parsing NDEF record"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private native generate(SS[B[B[B)[B
.end method

.method private native parseNdefRecord([B)I
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getId()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public getTnf()S
    .locals 1

    .prologue
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    return v0
.end method

.method public getType()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public toByteArray()[B
    .locals 6

    .prologue
    iget-byte v0, p0, Landroid/nfc/NdefRecord;->mFlags:B

    int-to-short v1, v0

    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    iget-object v5, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/nfc/NdefRecord;->generate(SS[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
