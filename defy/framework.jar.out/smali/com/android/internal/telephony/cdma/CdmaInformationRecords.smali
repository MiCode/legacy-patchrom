.class public final Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;,
        Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    }
.end annotation


# static fields
.field public static final RIL_CDMA_CALLED_PARTY_NUMBER_INFO_REC:I = 0x1

.field public static final RIL_CDMA_CALLING_PARTY_NUMBER_INFO_REC:I = 0x2

.field public static final RIL_CDMA_CONNECTED_NUMBER_INFO_REC:I = 0x3

.field public static final RIL_CDMA_DISPLAY_INFO_REC:I = 0x0

.field public static final RIL_CDMA_EXTENDED_DISPLAY_INFO_REC:I = 0x7

.field public static final RIL_CDMA_LINE_CONTROL_INFO_REC:I = 0x6

.field public static final RIL_CDMA_REDIRECTING_NUMBER_INFO_REC:I = 0x5

.field public static final RIL_CDMA_SIGNAL_INFO_REC:I = 0x4

.field public static final RIL_CDMA_T53_AUDIO_CONTROL_INFO_REC:I = 0xa

.field public static final RIL_CDMA_T53_CLIR_INFO_REC:I = 0x8

.field public static final RIL_CDMA_T53_RELEASE_INFO_REC:I = 0x9


# instance fields
.field public record:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .parameter "p"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL_UNSOL_CDMA_INFO_REC: unsupported record. Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;-><init>(ILjava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;-><init>(Ljava/lang/String;IIIII)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaLineControlInfoRec;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53ClirInfoRec;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaT53AudioControlInfoRec;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->record:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "<unknown record>"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "RIL_CDMA_DISPLAY_INFO_REC"

    goto :goto_0

    :pswitch_1
    const-string v0, "RIL_CDMA_CALLED_PARTY_NUMBER_INFO_REC"

    goto :goto_0

    :pswitch_2
    const-string v0, "RIL_CDMA_CALLING_PARTY_NUMBER_INFO_REC"

    goto :goto_0

    :pswitch_3
    const-string v0, "RIL_CDMA_CONNECTED_NUMBER_INFO_REC"

    goto :goto_0

    :pswitch_4
    const-string v0, "RIL_CDMA_SIGNAL_INFO_REC"

    goto :goto_0

    :pswitch_5
    const-string v0, "RIL_CDMA_REDIRECTING_NUMBER_INFO_REC"

    goto :goto_0

    :pswitch_6
    const-string v0, "RIL_CDMA_LINE_CONTROL_INFO_REC"

    goto :goto_0

    :pswitch_7
    const-string v0, "RIL_CDMA_EXTENDED_DISPLAY_INFO_REC"

    goto :goto_0

    :pswitch_8
    const-string v0, "RIL_CDMA_T53_CLIR_INFO_REC"

    goto :goto_0

    :pswitch_9
    const-string v0, "RIL_CDMA_T53_RELEASE_INFO_REC"

    goto :goto_0

    :pswitch_a
    const-string v0, "RIL_CDMA_T53_AUDIO_CONTROL_INFO_REC"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
