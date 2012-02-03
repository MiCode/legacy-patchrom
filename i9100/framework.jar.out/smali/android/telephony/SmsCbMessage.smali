.class public Landroid/telephony/SmsCbMessage;
.super Ljava/lang/Object;
.source "SmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE:I = 0x3

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE_IMMEDIATE:I = 0x0

.field public static final GEOGRAPHICAL_SCOPE_LA_WIDE:I = 0x2

.field public static final GEOGRAPHICAL_SCOPE_PLMN_WIDE:I = 0x1

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String; = null

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SMSCB"

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52


# instance fields
.field private mBody:Ljava/lang/String;

.field private mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private mLanguage:Ljava/lang/String;

.field private mPrimaryNotificationDigitalSignature:[B

.field private mPrimaryNotificationTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de"

    aput-object v1, v0, v4

    const-string v1, "en"

    aput-object v1, v0, v5

    const-string v1, "it"

    aput-object v1, v0, v6

    const-string v1, "fr"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cs"

    aput-object v1, v0, v4

    const-string v1, "he"

    aput-object v1, v0, v5

    const-string v1, "ar"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ru"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "is"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 4
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2b

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .line 106
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 107
    const-string v0, "ETWS"

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 109
    array-length v0, p1

    const/16 v1, 0x38

    if-lt v0, v1, :cond_0

    .line 110
    invoke-direct {p0, p1}, Landroid/telephony/SmsCbMessage;->getTimestampMillis([B)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SmsCbMessage;->mPrimaryNotificationTimestamp:J

    .line 111
    new-array v0, v3, [B

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mPrimaryNotificationDigitalSignature:[B

    .line 113
    const/16 v0, 0xd

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mPrimaryNotificationDigitalSignature:[B

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-direct {p0, p1}, Landroid/telephony/SmsCbMessage;->parseBody([B)V

    goto :goto_0
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsCbMessage;
    .locals 3
    .parameter "pdu"

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-direct {v1, p0}, Landroid/telephony/SmsCbMessage;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "SMSCB"

    const-string v2, "Failed parsing SMS-CB pdu"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTimestampMillis([B)J
    .locals 13
    .parameter "pdu"

    .prologue
    const/4 v10, 0x1

    .line 413
    const/4 v9, 0x6

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 414
    .local v8, year:I
    const/4 v9, 0x7

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 415
    .local v3, month:I
    const/16 v9, 0x8

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 416
    .local v0, day:I
    const/16 v9, 0x9

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 417
    .local v1, hour:I
    const/16 v9, 0xa

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 418
    .local v2, minute:I
    const/16 v9, 0xb

    aget-byte v9, p1, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 425
    .local v4, second:I
    const/16 v9, 0xc

    aget-byte v7, p1, v9

    .line 428
    .local v7, tzByte:B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 430
    .local v6, timezoneOffset:I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_0

    .line 432
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 435
    .local v5, time:Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v8, v9, :cond_1

    add-int/lit16 v9, v8, 0x76c

    :goto_1
    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 436
    sub-int v9, v3, v10

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 437
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 438
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 439
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 440
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 443
    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9

    .line 430
    .end local v5           #time:Landroid/text/format/Time;
    :cond_0
    neg-int v9, v6

    move v6, v9

    goto :goto_0

    .line 435
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_1
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_1
.end method

.method private parseBody([B)V
    .locals 11
    .parameter "pdu"

    .prologue
    const/16 v10, 0x52

    const/4 v1, 0x1

    .line 236
    const/4 v5, 0x0

    .line 240
    .local v5, hasLanguageIndicator:Z
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_0

    .line 302
    :pswitch_0
    const/4 v2, 0x1

    .line 306
    .local v2, encoding:I
    :goto_0
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 308
    const/4 v0, 0x6

    aget-byte v7, p1, v0

    .line 310
    .local v7, nrPages:I
    array-length v0, p1

    mul-int/lit8 v1, v7, 0x53

    add-int/lit8 v1, v1, 0x7

    if-ge v0, v1, :cond_2

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pdu length "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " does not match "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " pages"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    .end local v2           #encoding:I
    .end local v7           #nrPages:I
    :pswitch_1
    const/4 v2, 0x1

    .line 243
    .restart local v2       #encoding:I
    sget-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v1, v1, 0xf

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    goto :goto_0

    .line 247
    .end local v2           #encoding:I
    :pswitch_2
    const/4 v5, 0x1

    .line 248
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v1, :cond_0

    .line 249
    const/4 v2, 0x3

    .restart local v2       #encoding:I
    goto :goto_0

    .line 251
    .end local v2           #encoding:I
    :cond_0
    const/4 v2, 0x1

    .line 253
    .restart local v2       #encoding:I
    goto :goto_0

    .line 256
    .end local v2           #encoding:I
    :pswitch_3
    const/4 v2, 0x1

    .line 257
    .restart local v2       #encoding:I
    sget-object v0, Landroid/telephony/SmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v1, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v1, v1, 0xf

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    goto :goto_0

    .line 261
    .end local v2           #encoding:I
    :pswitch_4
    const/4 v2, 0x1

    .line 262
    .restart local v2       #encoding:I
    goto :goto_0

    .line 266
    .end local v2           #encoding:I
    :pswitch_5
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    .line 277
    const/4 v2, 0x1

    .line 278
    .restart local v2       #encoding:I
    goto :goto_0

    .line 268
    .end local v2           #encoding:I
    :pswitch_6
    const/4 v2, 0x2

    .line 269
    .restart local v2       #encoding:I
    goto :goto_0

    .line 272
    .end local v2           #encoding:I
    :pswitch_7
    const/4 v2, 0x3

    .line 273
    .restart local v2       #encoding:I
    goto :goto_0

    .line 289
    .end local v2           #encoding:I
    :pswitch_8
    const/4 v2, 0x0

    .line 290
    .restart local v2       #encoding:I
    goto :goto_0

    .line 293
    .end local v2           #encoding:I
    :pswitch_9
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    and-int/lit8 v0, v0, 0x4

    shr-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_1

    .line 294
    const/4 v2, 0x2

    .restart local v2       #encoding:I
    goto/16 :goto_0

    .line 296
    .end local v2           #encoding:I
    :cond_1
    const/4 v2, 0x1

    .line 298
    .restart local v2       #encoding:I
    goto/16 :goto_0

    .line 316
    .restart local v7       #nrPages:I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_4

    .line 321
    mul-int/lit8 v0, v6, 0x53

    add-int/lit8 v3, v0, 0x7

    .line 322
    .local v3, offset:I
    add-int/lit8 v0, v3, 0x52

    aget-byte v4, p1, v0

    .line 324
    .local v4, length:I
    if-le v4, v10, :cond_3

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Page length "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " exceeds maximum value "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 329
    invoke-direct/range {v0 .. v5}, Landroid/telephony/SmsCbMessage;->unpackBody([BIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 331
    .end local v3           #offset:I
    .end local v4           #length:I
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 339
    .end local v6           #i:I
    .end local v7           #nrPages:I
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 334
    :cond_5
    const/4 v3, 0x6

    .line 335
    .restart local v3       #offset:I
    array-length v0, p1

    sub-int v4, v0, v3

    .restart local v4       #length:I
    move-object v0, p0

    move-object v1, p1

    .line 337
    invoke-direct/range {v0 .. v5}, Landroid/telephony/SmsCbMessage;->unpackBody([BIIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    goto :goto_2

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private unpackBody([BIIIZ)Ljava/lang/String;
    .locals 7
    .parameter "pdu"
    .parameter "encoding"
    .parameter "offset"
    .parameter "length"
    .parameter "hasLanguageIndicator"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, body:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 390
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    .line 394
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 402
    .end local v2           #i:I
    :cond_1
    :goto_2
    return-object v0

    .line 360
    :pswitch_1
    mul-int/lit8 v3, p4, 0x8

    div-int/lit8 v3, v3, 0x7

    invoke-static {p1, p3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 362
    if-eqz p5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 365
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 366
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 371
    :pswitch_2
    if-eqz p5, :cond_2

    array-length v3, p1

    add-int/lit8 v4, p3, 0x2

    if-lt v3, v4, :cond_2

    .line 374
    invoke-static {p1, p3, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 375
    add-int/lit8 p3, p3, 0x2

    .line 376
    add-int/lit8 p4, p4, -0x2

    .line 380
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const v3, 0xfffe

    and-int/2addr v3, p4

    const-string/jumbo v4, "utf-16"

    invoke-direct {v1, p1, p3, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #body:Ljava/lang/String;
    .local v1, body:Ljava/lang/String;
    move-object v0, v1

    .line 383
    .end local v1           #body:Ljava/lang/String;
    .restart local v0       #body:Ljava/lang/String;
    goto :goto_0

    .line 392
    .restart local v2       #i:I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 399
    .end local v2           #i:I
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 381
    :catch_0
    move-exception v3

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public appendToBody(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 452
    return-void
.end method

.method public getEtwsEmergencyUserAlert()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsEmergencyUserAlert:Z

    return v0
.end method

.method public getEtwsPopup()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsPopup:Z

    return v0
.end method

.method public getEtwsSecuritySignature()[B
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mPrimaryNotificationDigitalSignature:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public getEtwsSecurityTimestamp()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Landroid/telephony/SmsCbMessage;->mPrimaryNotificationTimestamp:J

    return-wide v0
.end method

.method public getEtwsWarningType()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->etwsWarningType:I

    return v0
.end method

.method public getGeographicalScope()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCode()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    return v0
.end method

.method public getMessageFormat()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->format:I

    return v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    return v0
.end method

.method public getUpdateNumber()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbMessage{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
