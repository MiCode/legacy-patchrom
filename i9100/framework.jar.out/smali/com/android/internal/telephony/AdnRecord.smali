.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field alphaTag:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field number:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 44
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 125
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 126
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 127
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 137
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 44
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 117
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 118
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 119
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 44
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 103
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 104
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 105
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 113
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 100
    return-void
.end method

.method private parseRecord([B)V
    .locals 8
    .parameter "record"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xe

    const-string v7, ""

    .line 350
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    sub-int/2addr v4, v5

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 353
    array-length v3, p1

    sub-int v1, v3, v5

    .line 355
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 357
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 358
    const/16 v2, 0xb

    .line 368
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 372
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 374
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 377
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    const-string v3, ""

    iput-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 379
    const-string v3, ""

    iput-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 380
    iput-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 175
    if-ne p0, p1, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    .line 178
    :cond_0
    if-nez p0, :cond_1

    .line 179
    const-string p0, ""

    .line 181
    :cond_1
    if-nez p1, :cond_2

    .line 182
    const-string p1, ""

    .line 184
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 318
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 327
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 338
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 13
    .parameter "recordSize"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    const-string v12, ""

    const-string v10, "GSM"

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, adnString:[B
    const/16 v6, 0xe

    sub-int v4, p1, v6

    .line 250
    .local v4, footerOffset:I
    const/4 v3, 0x0

    .line 253
    .local v3, cmpResult:Z
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    move v3, v6

    .line 259
    :goto_0
    if-eqz v3, :cond_2

    .line 260
    const-string v6, "GSM"

    const-string v6, "[buildAdnString] Empty alpha tag or number"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-array v0, p1, [B

    .line 262
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, p1, :cond_9

    .line 263
    aput-byte v8, v0, v5

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5           #i:I
    :cond_1
    move v3, v9

    .line 253
    goto :goto_0

    .line 265
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 266
    const-string v6, "GSM"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    .line 309
    :goto_2
    return-object v6

    .line 268
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_4

    .line 270
    const-string v6, "GSM"

    const-string v6, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v11

    .line 272
    goto :goto_2

    .line 273
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_5

    .line 274
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[buildAdnString] Max length of tag is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v11

    .line 276
    goto :goto_2

    .line 278
    :cond_5
    new-array v0, p1, [B

    .line 279
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, p1, :cond_6

    .line 280
    aput-byte v8, v0, v5

    .line 279
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 283
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 285
    .local v1, bcdNumber:[B
    add-int/lit8 v6, v4, 0x1

    array-length v7, v1

    invoke-static {v1, v9, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    add-int/lit8 v6, v4, 0x0

    array-length v7, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 290
    add-int/lit8 v6, v4, 0xc

    aput-byte v8, v0, v6

    .line 292
    add-int/lit8 v6, v4, 0xd

    aput-byte v8, v0, v6

    .line 296
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move-object v6, v0

    .line 297
    goto :goto_2

    .line 300
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .line 301
    .local v2, byteTag:[B
    array-length v6, v2

    invoke-static {v2, v9, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v1           #bcdNumber:[B
    .end local v2           #byteTag:[B
    :cond_9
    move-object v6, v0

    .line 309
    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 4
    .parameter "adn"

    .prologue
    const/4 v2, 0x0

    const-string v3, ""

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isEmailEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 206
    :goto_0
    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 199
    goto :goto_0

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 206
    goto :goto_0
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 229
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 234
    return-void
.end method
