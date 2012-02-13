.class public Landroid/media/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Metadata$TimedText;
    }
.end annotation


# static fields
.field public static final ALBUM:I = 0x4

.field public static final ALBUM_ART:I = 0xe

.field public static final ANY:I = 0x0

.field public static final ARTIST:I = 0x5

.field public static final AUDIO_BIT_RATE:I = 0x12

.field public static final AUDIO_CODEC:I = 0x17

.field public static final AUDIO_SAMPLE_RATE:I = 0x14

.field public static final AUTHOR:I = 0x6

.field public static final BIT_RATE:I = 0x11

.field public static final BOOLEAN_VAL:I = 0x3

.field public static final BYTE_ARRAY_VAL:I = 0x8

.field public static final CAPTION:I = 0x10

.field public static final CD_TRACK_MAX:I = 0xc

.field public static final CD_TRACK_NUM:I = 0xb

.field public static final COMMENT:I = 0x2

.field public static final COMPOSER:I = 0x7

.field public static final COPYRIGHT:I = 0x3

.field public static final DATE:I = 0x9

.field public static final DATE_VAL:I = 0x7

.field public static final DOUBLE_VAL:I = 0x5

.field public static final DRM_CRIPPLED:I = 0x1c

.field public static final DURATION:I = 0xa

.field private static final FIRST_CUSTOM:I = 0x2000

.field public static final GENRE:I = 0x8

.field public static final INTEGER_VAL:I = 0x2

.field private static final LAST_SYSTEM:I = 0x20

.field private static final LAST_TYPE:I = 0x8

.field public static final LONG_VAL:I = 0x4

.field public static final MATCH_ALL:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_NONE:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIME_TYPE:I = 0x16

.field public static final NUM_TRACKS:I = 0x1b

.field public static final PAUSE_AVAILABLE:I = 0x1d

.field public static final RATING:I = 0xd

.field public static final SEEK_AVAILABLE:I = 0x20

.field public static final SEEK_BACKWARD_AVAILABLE:I = 0x1e

.field public static final SEEK_FORWARD_AVAILABLE:I = 0x1f

.field public static final STRING_VAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "media.Metadata"

.field public static final TIMED_TEXT_VAL:I = 0x6

.field public static final TITLE:I = 0x1

.field public static final VIDEO_BIT_RATE:I = 0x13

.field public static final VIDEO_CODEC:I = 0x18

.field public static final VIDEO_FRAME:I = 0xf

.field public static final VIDEO_FRAME_RATE:I = 0x15

.field public static final VIDEO_HEIGHT:I = 0x19

.field public static final VIDEO_WIDTH:I = 0x1a

.field private static final kInt32Size:I = 0x4

.field private static final kMetaHeaderSize:I = 0x8

.field private static final kMetaMarker:I = 0x4d455441

.field private static final kRecordHeaderSize:I = 0xc


# instance fields
.field private final mKeyToPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sput-object v0, Landroid/media/Metadata;->MATCH_NONE:Ljava/util/Set;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/media/Metadata;->MATCH_ALL:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    return-void
.end method

.method private checkMetadataId(I)Z
    .locals 3
    .parameter "val"

    .prologue
    if-lez p1, :cond_0

    const/16 v0, 0x20

    if-ge v0, p1, :cond_1

    const/16 v0, 0x2000

    if-ge p1, v0, :cond_1

    :cond_0
    const-string v0, "media.Metadata"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid metadata ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkType(II)V
    .locals 5
    .parameter "key"
    .parameter "expectedType"

    .prologue
    iget-object v2, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, pos:I
    iget-object v2, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v2, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, type:I
    if-eq v1, p2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method public static firstCustomId()I
    .locals 1

    .prologue
    const/16 v0, 0x2000

    return v0
.end method

.method public static lastSytemId()I
    .locals 1

    .prologue
    const/16 v0, 0x20

    return v0
.end method

.method public static lastType()I
    .locals 1

    .prologue
    const/16 v0, 0x8

    return v0
.end method

.method private scanAllRecords(Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "parcel"
    .parameter "bytesLeft"

    .prologue
    const/16 v10, 0xc

    const-string v9, "media.Metadata"

    const/4 v3, 0x0

    .local v3, recCount:I
    const/4 v0, 0x0

    .local v0, error:Z
    iget-object v6, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    :goto_0
    if-le p2, v10, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .local v5, start:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, size:I
    if-gt v4, v10, :cond_2

    const-string v6, "media.Metadata"

    const-string v6, "Record is too short"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .end local v4           #size:I
    .end local v5           #start:I
    :cond_0
    :goto_1
    if-nez p2, :cond_1

    if-eqz v0, :cond_7

    :cond_1
    const-string v6, "media.Metadata"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ran out of data or error on record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    const/4 v6, 0x0

    :goto_2
    return v6

    .restart local v4       #size:I
    .restart local v5       #start:I
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, metadataId:I
    invoke-direct {p0, v1}, Landroid/media/Metadata;->checkMetadataId(I)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "media.Metadata"

    const-string v6, "Duplicate metadata ID found"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, metadataType:I
    if-lez v2, :cond_5

    const/16 v6, 0x8

    if-le v2, v6, :cond_6

    :cond_5
    const-string v6, "media.Metadata"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid metadata type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    add-int v6, v5, v4

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int/2addr p2, v4

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v1           #metadataId:I
    .end local v2           #metadataType:I
    .end local v4           #size:I
    .end local v5           #start:I
    :cond_7
    const/4 v6, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getBoolean(I)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByteArray(I)[B
    .locals 1
    .parameter "key"

    .prologue
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 6
    .parameter "key"

    .prologue
    const/4 v5, 0x7

    invoke-direct {p0, p1, v5}, Landroid/media/Metadata;->checkType(II)V

    iget-object v5, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .local v1, timeSinceEpoch:J
    iget-object v5, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, timeZone:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v5

    :cond_0
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .local v4, tz:Ljava/util/TimeZone;
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "key"

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/Metadata;->checkType(II)V

    iget-object v0, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimedText(I)Landroid/media/Metadata$TimedText;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x6

    invoke-direct {p0, p1, v2}, Landroid/media/Metadata;->checkType(II)V

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .local v1, startTime:Ljava/util/Date;
    iget-object v2, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, duration:I
    new-instance v2, Landroid/media/Metadata$TimedText;

    iget-object v3, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v1, v0, v3}, Landroid/media/Metadata$TimedText;-><init>(Landroid/media/Metadata;Ljava/util/Date;ILjava/lang/String;)V

    return-object v2
.end method

.method public has(I)Z
    .locals 3
    .parameter "metadataId"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/Metadata;->checkMetadataId(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/Metadata;->mKeyToPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 7
    .parameter "parcel"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v6, "media.Metadata"

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-ge v3, v4, :cond_0

    const-string v3, "media.Metadata"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .local v1, pin:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, size:I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-lt v3, v2, :cond_1

    if-ge v2, v4, :cond_2

    :cond_1
    const-string v3, "media.Metadata"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " avail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, kShouldBeMetaMarker:I
    const v3, 0x4d455441

    if-eq v0, v3, :cond_3

    const-string v3, "media.Metadata"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Marker missing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    move v3, v5

    goto :goto_0

    :cond_3
    sub-int v3, v2, v4

    invoke-direct {p0, p1, v3}, Landroid/media/Metadata;->scanAllRecords(Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    move v3, v5

    goto :goto_0

    :cond_4
    iput-object p1, p0, Landroid/media/Metadata;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x1

    goto/16 :goto_0
.end method
