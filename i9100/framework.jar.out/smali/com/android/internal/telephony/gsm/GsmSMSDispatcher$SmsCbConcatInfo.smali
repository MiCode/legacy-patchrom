.class final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
.super Ljava/lang/Object;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsCbConcatInfo"
.end annotation


# instance fields
.field private final mCid:I

.field private final mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private final mLac:I

.field private final mPlmn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V
    .locals 0
    .parameter "header"
    .parameter "plmn"
    .parameter "lac"
    .parameter "cid"

    .prologue
    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .line 708
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    .line 709
    iput p3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLac:I

    .line 710
    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mCid:I

    .line 711
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 720
    instance-of v2, p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    if-eqz v2, :cond_0

    .line 721
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    move-object v1, v0

    .line 726
    .local v1, other:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v2, v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v3, v3, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    if-ne v2, v3, :cond_0

    .line 732
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    iget v3, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLac:I

    iget v4, v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mCid:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v2

    .line 736
    .end local v1           #other:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public matchesLocation(Ljava/lang/String;II)Z
    .locals 2
    .parameter "plmn"
    .parameter "lac"
    .parameter "cid"

    .prologue
    const/4 v1, 0x0

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 765
    :goto_0
    return v0

    .line 752
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mCid:I

    if-eq v0, p3, :cond_0

    move v0, v1

    .line 753
    goto :goto_0

    .line 757
    :cond_0
    :pswitch_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLac:I

    if-eq v0, p2, :cond_1

    move v0, v1

    .line 758
    goto :goto_0

    .line 762
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
