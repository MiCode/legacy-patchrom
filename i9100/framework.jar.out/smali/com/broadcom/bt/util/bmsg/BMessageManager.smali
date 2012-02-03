.class final Lcom/broadcom/bt/util/bmsg/BMessageManager;
.super Ljava/lang/Object;
.source "BMessageManager.java"


# static fields
.field static final ERR_CHECK:Z = true


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native addBBodyCont(I)I
.end method

.method static native addBContMsg(ILjava/lang/String;)V
.end method

.method static native addBEnvBody(I)I
.end method

.method static native addBEnvChld(I)I
.end method

.method static native addBEnvRecip(I)I
.end method

.method static native addBMsgEnv(I)I
.end method

.method static native addBMsgOrig(I)I
.end method

.method static native addBvCardProp(IBLjava/lang/String;Ljava/lang/String;)I
.end method

.method static native createBMsg()I
.end method

.method static native decodeSMSSubmitPDU(Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native deleteBMsg(I)V
.end method

.method static native encodeSMSDeliverPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method static native getBBodyCharset(I)B
.end method

.method static native getBBodyCont(I)I
.end method

.method static native getBBodyEnc(I)B
.end method

.method static native getBBodyLang(I)B
.end method

.method static native getBBodyPartId(I)I
.end method

.method static native getBCont1stMsg(I)Ljava/lang/String;
.end method

.method static native getBContNext(I)I
.end method

.method static native getBContNextMsg(I)Ljava/lang/String;
.end method

.method static native getBEnvBody(I)I
.end method

.method static native getBEnvChld(I)I
.end method

.method static native getBEnvRecip(I)I
.end method

.method static native getBMsgEnv(I)I
.end method

.method static native getBMsgFldr(I)Ljava/lang/String;
.end method

.method static native getBMsgMType(I)B
.end method

.method static native getBMsgOrig(I)I
.end method

.method static native getBvCardNext(I)I
.end method

.method static native getBvCardProp(IB)I
.end method

.method static native getBvCardPropNext(I)I
.end method

.method static native getBvCardPropParam(I)Ljava/lang/String;
.end method

.method static native getBvCardPropVal(I)Ljava/lang/String;
.end method

.method static native getBvCardVer(I)B
.end method

.method static hasBitError(II)Z
    .locals 4
    .parameter "val"
    .parameter "numOfBits"

    .prologue
    const/4 v3, 0x1

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, bitsSet:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sub-int v2, p1, v3

    if-gt v1, v2, :cond_2

    .line 40
    shl-int v2, v3, v1

    and-int/2addr v2, p0

    if-lez v2, :cond_1

    .line 41
    if-ne v0, v3, :cond_0

    move v2, v3

    .line 47
    :goto_1
    return v2

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_2
    if-eq v0, v3, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static native isBBodyMultiP(I)Z
.end method

.method static native isBMsgRd(I)Z
.end method

.method static native parseBMsgFile(Ljava/lang/String;)I
.end method

.method static native setBBodyCharset(IB)V
.end method

.method static native setBBodyEnc(IB)V
.end method

.method static native setBBodyLang(IB)V
.end method

.method static native setBBodyPartId(II)V
.end method

.method static native setBMsgFldr(ILjava/lang/String;)V
.end method

.method static native setBMsgMType(IB)V
.end method

.method static native setBMsgRd(IZ)V
.end method

.method static native setBvCardVer(IB)V
.end method

.method static native writeBMsgFile(ILjava/lang/String;)Z
.end method
