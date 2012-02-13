.class public Lcom/android/internal/telephony/gsm/SmspRecord;
.super Ljava/lang/Object;
.source "SmspRecord.java"


# static fields
.field static final DCS_MASK:B = -0x9t

.field static final DEST_ADDR_MASK:B = -0x2t

.field static final EMAIL_GW_TAG:Ljava/lang/String; = "EMAIL SETTINGS"

.field static final FOOTER_SIZE_BYTES:I = 0x1c

.field static final MAX_ADDR_SIZE_BYTES:I = 0xa

.field static final PID_MASK:B = -0x5t

.field static final SC_ADDR_MASK:B = -0x3t

.field static final SMSP_DCS:I = 0x1a

.field static final SMSP_DEST_ADDR_LENGTH:I = 0x1

.field static final SMSP_PID:I = 0x19

.field static final SMSP_SC_ADDR_LENGTH:I = 0xd

.field static final SMSP_VALID_PERIOD:I = 0x1b

.field static final TAG:Ljava/lang/String; = "GSM"

.field static final VALID_PERIOD_MASK:B = -0x11t


# instance fields
.field private mAlphaTag:Ljava/lang/String;

.field private mDCS:B

.field private mDestAddr:Ljava/lang/String;

.field private mOnMessageComplete:Landroid/os/Message;

.field private mPID:B

.field private mParamInd:B

.field private mRecSizeBytes:I

.field private mScAddr:Ljava/lang/String;

.field private mValidPer:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SmspRecord;)V
    .locals 2
    .parameter "smsp"

    .prologue
    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDestAddr:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mScAddr:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mOnMessageComplete:Landroid/os/Message;

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SmspRecord;->mDestAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDestAddr:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/SmspRecord;->mScAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mScAddr:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/telephony/gsm/SmspRecord;->mRecSizeBytes:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mRecSizeBytes:I

    iget v0, p1, Lcom/android/internal/telephony/gsm/SmspRecord;->mValidPer:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mValidPer:I

    iget-byte v0, p1, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    iget-byte v0, p1, Lcom/android/internal/telephony/gsm/SmspRecord;->mPID:B

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mPID:B

    iget-byte v0, p1, Lcom/android/internal/telephony/gsm/SmspRecord;->mDCS:B

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDCS:B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "record"

    .prologue
    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDestAddr:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mScAddr:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mOnMessageComplete:Landroid/os/Message;

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SmspRecord;->parseRecord([B)V

    return-void
.end method

.method private parseRecord([B)V
    .locals 11
    .parameter "record"

    .prologue
    const/16 v10, 0xb

    const-string v6, ""

    const-string v9, "GSM"

    :try_start_0
    array-length v6, p1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mRecSizeBytes:I

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[parseRecord] Record Length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mRecSizeBytes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mRecSizeBytes:I

    const/16 v7, 0x1c

    sub-int v3, v6, v7

    .local v3, footerOffset:I
    const/4 v6, 0x0

    invoke-static {p1, v6, v3}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[parseRecord] Alpha Tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v6, p1, v3

    iput-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v6, v6, -0x2

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v6, v7, :cond_2

    add-int/lit8 v0, v3, 0x1

    .local v0, destAddrIndex:I
    aget-byte v6, p1, v0

    and-int/lit16 v1, v6, 0xff

    .local v1, destAddrLength:I
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[parseRecord] Destination Address Length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v1, v10, :cond_1

    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDestAddr:Ljava/lang/String;

    .end local v0           #destAddrIndex:I
    .end local v1           #destAddrLength:I
    .end local v3           #footerOffset:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #destAddrIndex:I
    .restart local v1       #destAddrLength:I
    .restart local v3       #footerOffset:I
    :cond_1
    add-int/lit8 v6, v0, 0x1

    invoke-static {p1, v6, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDestAddr:Ljava/lang/String;

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[parseRecord] Destination Address is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #destAddrIndex:I
    .end local v1           #destAddrLength:I
    :cond_2
    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v6, v6, -0x3

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v6, v7, :cond_4

    add-int/lit8 v4, v3, 0xd

    .local v4, scAddrIndex:I
    aget-byte v6, p1, v4

    and-int/lit16 v5, v6, 0xff

    .local v5, scAddrLength:I
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[parseRecord] Service Address Length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v5, v10, :cond_3

    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mScAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3           #footerOffset:I
    .end local v4           #scAddrIndex:I
    .end local v5           #scAddrLength:I
    :catch_0
    move-exception v6

    move-object v2, v6

    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v6, "GSM"

    const-string v6, "Error parsing SmspRecord"

    invoke-static {v9, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, -0x1

    iput-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    goto :goto_0

    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #footerOffset:I
    .restart local v4       #scAddrIndex:I
    .restart local v5       #scAddrLength:I
    :cond_3
    add-int/lit8 v6, v4, 0x1

    :try_start_1
    invoke-static {p1, v6, v5}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mScAddr:Ljava/lang/String;

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[parseRecord] Service Centre is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mScAddr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4           #scAddrIndex:I
    .end local v5           #scAddrLength:I
    :cond_4
    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v6, v6, -0x5

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v6, v7, :cond_5

    add-int/lit8 v6, v3, 0x19

    aget-byte v6, p1, v6

    iput-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mPID:B

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[parseRecord] Protocol Identifier is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mPID:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v6, v6, -0x9

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v6, v7, :cond_6

    add-int/lit8 v6, v3, 0x1a

    aget-byte v6, p1, v6

    iput-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDCS:B

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[parseRecord] Data Coding Scheme is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDCS:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v6, v6, -0x11

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v3, 0x1b

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mValidPer:I

    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[parseRecord] Validity Period is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mValidPer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public buildData()[B
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v8, "GSM"

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mRecSizeBytes:I

    const/16 v7, 0x1c

    sub-int v3, v6, v7

    .local v3, footerOffset:I
    const/4 v5, 0x0

    .local v5, smspData:[B
    if-gez v3, :cond_1

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildData] Record size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mRecSizeBytes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_2

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildData] Max length of tag is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mRecSizeBytes:I

    new-array v5, v6, [B

    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mRecSizeBytes:I

    if-ge v4, v6, :cond_3

    const/4 v6, -0x1

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "GSM"

    const-string v6, "[buildData] Empty alpha tag"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildData] Parameter Indicator is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    aput-byte v6, v5, v3

    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v6, v6, -0x2

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDestAddr:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, bcdDestAddr:[B
    if-eqz v0, :cond_4

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildData] Dest Addr number of bytes is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v3, 0x1

    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    array-length v7, v0

    invoke-static {v0, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v0           #bcdDestAddr:[B
    :cond_4
    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v6, v6, -0x3

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mScAddr:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, bcdScAddr:[B
    if-eqz v1, :cond_5

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildData] Service Centre number of bytes is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v3, 0xd

    array-length v7, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v6, v3, 0xd

    add-int/lit8 v6, v6, 0x1

    array-length v7, v1

    invoke-static {v1, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v1           #bcdScAddr:[B
    :cond_5
    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v6, v6, -0x5

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v6, v7, :cond_6

    add-int/lit8 v6, v3, 0x19

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mPID:B

    aput-byte v7, v5, v6

    :cond_6
    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v6, v6, -0x9

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v6, v7, :cond_7

    add-int/lit8 v6, v3, 0x1a

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDCS:B

    aput-byte v7, v5, v6

    :cond_7
    iget-byte v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v6, v6, -0x11

    iget-byte v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v3, 0x1b

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mValidPer:I

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, byteTag:[B
    array-length v6, v2

    invoke-static {v2, v9, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildData] Alpha Tag number of bytes is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationAddr()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, ""

    .local v0, destAddr:Ljava/lang/String;
    iget-byte v1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v1, v1, -0x2

    iget-byte v2, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDestAddr:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getOnMessageComplete()Landroid/os/Message;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mOnMessageComplete:Landroid/os/Message;

    .local v0, onMessageComplete:Landroid/os/Message;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mOnMessageComplete:Landroid/os/Message;

    return-object v0
.end method

.method public getServiceCentreAddr()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, ""

    .local v0, scAddr:Ljava/lang/String;
    iget-byte v1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v1, v1, -0x3

    iget-byte v2, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mScAddr:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public isEmailGwTag()Z
    .locals 3

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlphaTag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mAlphaTag:Ljava/lang/String;

    const-string v1, "EMAIL SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDestinationAddr(Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Destination Address being set is greater than limit!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mDestAddr:Ljava/lang/String;

    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    return-void
.end method

.method public setOnMessageComplete(Landroid/os/Message;)V
    .locals 0
    .parameter "onMessageComplete"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mOnMessageComplete:Landroid/os/Message;

    return-void
.end method

.method public setServiceCentreAddr(Ljava/lang/String;)V
    .locals 2
    .parameter "number"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Service Centre Address being set is greater than limit!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mScAddr:Ljava/lang/String;

    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/SmspRecord;->mParamInd:B

    return-void
.end method
