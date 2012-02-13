.class public Lcom/motorola/android/bmessage/BMessageParser_V10;
.super Lcom/motorola/android/bmessage/BMessageParser;
.source "BMessageParser_V10.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "bmessage.BMessageParser_V10"

.field private static final sAvailableCDMALanguageValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableEmailHeaderProperty:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableEncodingValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableGSMLanguageValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableInputCharsetValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableStatusValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailableTypeValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBmsgBodyCommonProperty:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBmsgCommonProperty:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBmsgVcardCommonProperty:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBMsgByteArray:[B

.field private mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

.field private mCurPos:I

.field private mCurrEnvLayer:I

.field private final mField1:I

.field private final mField2:I

.field private final mFieldNumber:I

.field private mHasSetEmail:Z

.field private mHasSetTel:Z

.field private mInputCharset:Ljava/lang/String;

.field private mLineCount:I

.field private mMaxEnvLayer:I

.field private mMsgBodyLen:I

.field private mTotalBytes:I

.field private mVcardVersion:Ljava/lang/String;

.field private final sBmsgVersion10:Ljava/lang/String;

.field private final sDefaultCharset:Ljava/lang/String;

.field private final sDefaultEncoding:Ljava/lang/String;

.field private final sDefaultLanguage:Ljava/lang/String;

.field private final sDefaultReadStatus:Ljava/lang/String;

.field private final sDefaultVcardVersion:Ljava/lang/String;

.field private final sMsgDataMinLen:I

.field private final sPartIdMaxLimit:I

.field private final sPartIdMinLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "VERSION"

    aput-object v2, v1, v4

    const-string v2, "TYPE"

    aput-object v2, v1, v5

    const-string v2, "STATUS"

    aput-object v2, v1, v6

    const-string v2, "FOLDER"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgCommonProperty:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "N"

    aput-object v2, v1, v4

    const-string v2, "FN"

    aput-object v2, v1, v5

    const-string v2, "TEL"

    aput-object v2, v1, v6

    const-string v2, "EMAIL"

    aput-object v2, v1, v7

    const-string v2, "VERSION"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgVcardCommonProperty:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PARTID"

    aput-object v2, v1, v4

    const-string v2, "LENGTH"

    aput-object v2, v1, v5

    const-string v2, "CHARSET"

    aput-object v2, v1, v6

    const-string v2, "ENCODING"

    aput-object v2, v1, v7

    const-string v2, "LANGUAGE"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgBodyCommonProperty:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "SMS_GSM"

    aput-object v2, v1, v4

    const-string v2, "SMS_CDMA"

    aput-object v2, v1, v5

    const-string v2, "MMS"

    aput-object v2, v1, v6

    const-string v2, "EMAIL"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableTypeValue:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "READ"

    aput-object v2, v1, v4

    const-string v2, "UNREAD"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableStatusValue:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "UTF-8"

    aput-object v2, v1, v4

    const-string v2, "NATIVE"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableInputCharsetValue:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "8BIT"

    aput-object v2, v1, v4

    const-string v2, "G-7BIT"

    aput-object v2, v1, v5

    const-string v2, "G-7BITEXT"

    aput-object v2, v1, v6

    const-string v2, "G-UCS2"

    aput-object v2, v1, v7

    const-string v2, "G-8BIT"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "C-8BIT"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "C-EPM"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "C-7ASCII"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "C-IA5"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "C-UNICODE"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "C-SJIS"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "C-KOREAN"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "C-LATINHEB"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "C-LATIN"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableEncodingValue:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "TURKISH"

    aput-object v2, v1, v4

    const-string v2, "SPANISH"

    aput-object v2, v1, v5

    const-string v2, "PORTUGUESE"

    aput-object v2, v1, v6

    const-string v2, "UNKNOWN"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableGSMLanguageValue:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ENGLISH"

    aput-object v2, v1, v4

    const-string v2, "FRENCH"

    aput-object v2, v1, v5

    const-string v2, "SPANISH"

    aput-object v2, v1, v6

    const-string v2, "JAPANESE"

    aput-object v2, v1, v7

    const-string v2, "KOREAN"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "CHINESE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "HEBREW"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "UNKNOWN"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableCDMALanguageValue:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Date"

    aput-object v2, v1, v4

    const-string v2, "From"

    aput-object v2, v1, v5

    const-string v2, "Sender"

    aput-object v2, v1, v6

    const-string v2, "To"

    aput-object v2, v1, v7

    const-string v2, "Cc"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "Bcc"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Reply-To"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Subject"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableEmailHeaderProperty:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v5, "UTF-8"

    const-string v4, "2.1"

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser;-><init>()V

    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sDefaultEncoding:Ljava/lang/String;

    const-string v0, "UTF-8"

    iput-object v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sDefaultCharset:Ljava/lang/String;

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sDefaultLanguage:Ljava/lang/String;

    const-string v0, "READ"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sDefaultReadStatus:Ljava/lang/String;

    const-string v0, "2.1"

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sDefaultVcardVersion:Ljava/lang/String;

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgVersion10:Ljava/lang/String;

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sPartIdMinLimit:I

    const v0, 0xffff

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sPartIdMaxLimit:I

    const-string v0, "BEGIN:MSG\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "END:MSG\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sMsgDataMinLen:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mFieldNumber:I

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mField1:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mField2:I

    const-string v0, "UTF-8"

    iput-object v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    const-string v0, "2.1"

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMsgBodyLen:I

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMaxEnvLayer:I

    iput-boolean v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    iput-boolean v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    iput v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    return-void
.end method

.method private getLine()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x1

    const-string v9, "bmessage.BMessageParser_V10"

    const-string v4, "UTF-8"

    const/4 v2, 0x0

    .local v2, str:Ljava/lang/String;
    :try_start_0
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    if-ge v1, v4, :cond_0

    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    sub-int/2addr v4, v8

    if-ne v1, v4, :cond_2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int v6, v1, v6

    add-int/lit8 v6, v6, 0x1

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #str:Ljava/lang/String;
    .local v3, str:Ljava/lang/String;
    :try_start_1
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    iput v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "This is the %dth line: \'%s\' ."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, v2

    .end local v1           #i:I
    :goto_2
    return-object v4

    .restart local v1       #i:I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v4, v4, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    if-eq v1, v4, :cond_3

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int v6, v1, v6

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v2           #str:Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v1           #i:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    :goto_4
    const-string v4, "bmessage.BMessageParser_V10"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read line failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v2           #str:Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2           #str:Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_4
.end method

.method private getPduBytes()[B
    .locals 14

    .prologue
    const/4 v11, 0x1

    const-string v13, "bmessage.BMessageParser_V10"

    const/4 v8, 0x0

    .local v8, pdu:[B
    const/4 v9, 0x7

    :try_start_0
    new-array v5, v9, [B

    fill-array-data v5, :array_0

    .local v5, matchedBytesLowerCase:[B
    const/4 v9, 0x7

    new-array v6, v9, [B

    fill-array-data v6, :array_1

    .local v6, matchedBytesUpperCase:[B
    array-length v7, v6

    .local v7, matchedLen:I
    iget v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    .local v3, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    if-ge v3, v9, :cond_2

    if-ge v4, v7, :cond_2

    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v9, v9, v3

    aget-byte v10, v6, v4

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v9, v9, v3

    aget-byte v10, v5, v4

    if-ne v9, v10, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sub-int v9, v3, v4

    add-int/lit8 v3, v9, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    if-lt v4, v7, :cond_6

    sub-int v0, v3, v7

    .local v0, checkPoint:I
    const/4 v2, 0x0

    .local v2, found:Z
    sub-int v3, v0, v11

    :goto_1
    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    add-int/lit8 v9, v9, 0x1

    if-le v3, v9, :cond_3

    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v9, v9, v3

    const/16 v10, 0x20

    if-ne v9, v10, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    add-int/lit8 v9, v9, 0x1

    if-lt v3, v9, :cond_4

    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v9, v9, v3

    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    sub-int v10, v3, v11

    aget-byte v9, v9, v10

    const/16 v10, 0xd

    if-ne v9, v10, :cond_4

    const/4 v2, 0x1

    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    add-int/lit8 v9, v9, 0x1

    if-le v3, v9, :cond_4

    sub-int v9, v3, v11

    iget v10, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int/2addr v9, v10

    new-array v8, v9, [B

    if-eqz v8, :cond_4

    const/4 v4, 0x0

    :goto_2
    array-length v9, v8

    if-ge v4, v9, :cond_4

    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v10, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    add-int/2addr v10, v4

    aget-byte v9, v9, v10

    aput-byte v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    if-le v0, v9, :cond_5

    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int v9, v0, v9

    new-array v8, v9, [B

    if-eqz v8, :cond_5

    const/4 v4, 0x0

    :goto_3
    array-length v9, v8

    if-ge v4, v9, :cond_5

    iget-object v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v10, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    add-int/2addr v10, v4

    aget-byte v9, v9, v10

    aput-byte v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iput v0, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #checkPoint:I
    .end local v2           #found:Z
    :cond_6
    if-eqz v8, :cond_7

    iget v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    const-string v9, "bmessage.BMessageParser_V10"

    const-string v9, "This is the %dth line with pdu bytes"

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mLineCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v9, v8

    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #matchedBytesLowerCase:[B
    .end local v6           #matchedBytesUpperCase:[B
    .end local v7           #matchedLen:I
    :goto_5
    return-object v9

    :catch_0
    move-exception v9

    move-object v1, v9

    .local v1, e:Ljava/lang/Exception;
    const-string v9, "bmessage.BMessageParser_V10"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read pdu bytes failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_5

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    .restart local v4       #j:I
    .restart local v5       #matchedBytesLowerCase:[B
    .restart local v6       #matchedBytesUpperCase:[B
    .restart local v7       #matchedLen:I
    :cond_7
    const-string v9, "bmessage.BMessageParser_V10"

    const-string v9, "Can\'t find pdu bytes"

    invoke-static {v13, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    nop

    :array_0
    .array-data 0x1
        0x45t
        0x4et
        0x44t
        0x3at
        0x4dt
        0x53t
        0x47t
    .end array-data

    :array_1
    .array-data 0x1
        0x65t
        0x6et
        0x64t
        0x3at
        0x6dt
        0x73t
        0x67t
    .end array-data
.end method

.method private getPropertyNameAndValue()[Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, line:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, propertyNameAndValue:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->separateLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, ""

    if-ne v2, v3, :cond_1

    const-string v2, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid line \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_1
    return-object v2

    :cond_2
    const-string v2, "bmessage.BMessageParser_V10"

    const-string v2, "Reach the end of file."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleAddressListString(ILjava/lang/String;)I
    .locals 11
    .parameter "propertyIndex"
    .parameter "addresses"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "bmessage.BMessageParser_V10"

    const/4 v1, 0x0

    .local v1, rslt:I
    const/4 v0, -0x1

    .local v0, indexMatch:I
    const/4 v2, 0x0

    .local v2, tmpAddr:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eq v0, v9, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {p2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    const-string v3, "bmessage.BMessageParser_V10"

    const-string v3, "handleAddressListString() put address <%s> return <%d>."

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    if-eq v0, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string p2, ""

    goto :goto_1

    :cond_2
    if-ne v0, v9, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    const-string v3, "bmessage.BMessageParser_V10"

    const-string v3, "handleAddressListString() put address <%s> return <%d>."

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_4

    const/16 v1, 0xe

    :cond_4
    const-string v3, "bmessage.BMessageParser_V10"

    const-string v3, "handleAddressListString() return the value of : %d ."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private handleBmsgBodyCommonProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "propertyName"
    .parameter "propertyValue"

    .prologue
    const-string v5, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgBodyCommonProperty:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "PARTID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyPartId(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "handleBmsgBodyCommonProperty() return the value of : %d ."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v1, "LENGTH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyLength(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "LANGUAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyLanguage(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v1, "ENCODING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyEncoding(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v1, "CHARSET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyCharset(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown property name <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> in handleBmsgBodyCommonProperty()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBmsgCommonProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "propertyName"
    .parameter "propertyValue"

    .prologue
    const-string v5, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgCommonProperty:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "VERSION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleBmsgVersion(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "handleBmsgCommonProperty() return the value of : %d ."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v1, "TYPE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "STATUS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgStatus(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v1, "FOLDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgFolder(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown property name <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> in handleBmsgCommonProperty()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBmsgVcardCommonProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "propertyName"
    .parameter "propertyValue"

    .prologue
    const-string v5, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sBmsgVcardCommonProperty:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "N"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleVcardName(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "handleBmsgVcardCommonProperty() return the value of : %d ."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v1, "FN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleVcardFullName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    if-nez v1, :cond_3

    const-string v1, "TEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleVcardTelNumber(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    if-nez v1, :cond_4

    const-string v1, "EMAIL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleVcardEmailAddress(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v1, "VERSION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleVcardVersion(Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown property name <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> in handleBmsgVcardCommonProperty()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleBmsgVersion(Ljava/lang/String;)I
    .locals 4
    .parameter "version"

    .prologue
    const/4 v0, 0x0

    .local v0, rslt:I
    invoke-virtual {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported bMessage version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private handleInputCharset(Ljava/lang/String;)I
    .locals 4
    .parameter "charset"

    .prologue
    const-string v3, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input Charset is empty, and mInputCharset is set to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableInputCharsetValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input Charset is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , and mInputCharset is set to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Input Charset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , return error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleMsgBodyCharset(Ljava/lang/String;)I
    .locals 5
    .parameter "charset"

    .prologue
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v3, "UTF-8"

    const/4 v0, 0x0

    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The MsgBody charset <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> is valid against the InputCharset, is set to Builder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The MsgBody Charset <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> is not compatible with the InputCharset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleMsgBodyEncoding(Ljava/lang/String;)I
    .locals 4
    .parameter "encoding"

    .prologue
    const-string v3, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableEncodingValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0xe

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The MsgBody encoding <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> is set to Builder."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The encoding is invalid or unsupported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleMsgBodyHeaderProperty(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "headerName"
    .parameter "headerValue"

    .prologue
    const-string v5, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    const-string v1, "Date"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "handleMsgBodyHeaderProperty() return the value of : %d ."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "From"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x14

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleAddressListString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "Sender"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x15

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "To"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x16

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleAddressListString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v1, "Cc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x17

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleAddressListString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v1, "Bcc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x18

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleAddressListString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    const-string v1, "Reply-To"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x19

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleAddressListString(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_6
    const-string v1, "Subject"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x1a

    invoke-direct {p0, v1, p2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_7
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "Should not come here, treat as unsupported email headers, ignored."

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleMsgBodyLanguage(Ljava/lang/String;)I
    .locals 4
    .parameter "language"

    .prologue
    const-string v3, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableGSMLanguageValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableCDMALanguageValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported MsgBody language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "UNKNOWN"

    :cond_0
    const/16 v1, 0xf

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The MsgBody language is set to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleMsgBodyLength(Ljava/lang/String;)I
    .locals 5
    .parameter "len"

    .prologue
    const-string v4, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    const/4 v1, -0x1

    .local v1, tmpLen:I
    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageUtils;->isValidDigits(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    iget v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->sMsgDataMinLen:I

    if-lt v1, v2, :cond_1

    iput v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMsgBodyLen:I

    const-string v2, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The valid length of message body data is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x6

    const-string v2, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message body length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleMsgBodyPartId(Ljava/lang/String;)I
    .locals 4
    .parameter "id"

    .prologue
    const-string v3, "0"

    const/4 v0, 0x0

    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0xc

    const-string v2, "0"

    invoke-direct {p0, v1, v3}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The MsgBody partId is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , only \"0\" will be set to Builder."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private handleMsgFolder(Ljava/lang/String;)I
    .locals 4
    .parameter "folder"

    .prologue
    const/4 v0, 0x0

    .local v0, rslt:I
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has passed to the Builder the Folder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleMsgStatus(Ljava/lang/String;)I
    .locals 4
    .parameter "status"

    .prologue
    const-string v3, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableStatusValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message Status got from bMsg is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , set it to default \'READ\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "READ"

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has passed to the Builder the Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleMsgType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const-string v3, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    sget-object v1, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableTypeValue:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got message type is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , has passed it to the Builder."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto :goto_0
.end method

.method private handlePropertyValue(ILjava/lang/String;)I
    .locals 8
    .parameter "propertyNameIndex"
    .parameter "propertyValue"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->startProperty()V

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1, p1}, Lcom/motorola/android/bmessage/BMessageBuilder;->propertyName(I)V

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1, p2}, Lcom/motorola/android/bmessage/BMessageBuilder;->propertyValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->endProperty()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "Builder.endProperty(%d, %s) return error code : %d . "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "Builder.endProperty(%d, %s) succeeded. "

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "Invalid mBuilder in handlePropertyValue()."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    goto :goto_0
.end method

.method private handlePropertyValue(I[[B)I
    .locals 9
    .parameter "propertyNameIndex"
    .parameter "propertyValue"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "bytes value"

    const-string v4, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->startProperty()V

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1, p1}, Lcom/motorola/android/bmessage/BMessageBuilder;->propertyName(I)V

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1, p2}, Lcom/motorola/android/bmessage/BMessageBuilder;->propertyValue([[B)V

    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->endProperty()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "Builder.endProperty(%d, %s) return error code : %d . "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "bytes value"

    aput-object v8, v2, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "Builder.endProperty(%d, %s) succeeded. "

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "bytes value"

    aput-object v8, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "Invalid mBuilder in handlePropertyValue()."

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    goto :goto_0
.end method

.method private handleVcardEmailAddress(Ljava/lang/String;)I
    .locals 4
    .parameter "email"

    .prologue
    const/4 v2, 0x1

    const-string v3, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-nez v1, :cond_1

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Msg Sender\'s email : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-ne v1, v2, :cond_2

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Msg Receiver\'s email : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Higher layers of MsgEnv has invalid vCard email : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-nez v1, :cond_4

    const/16 v1, 0xa

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Sender\'s email is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-ne v1, v2, :cond_5

    const/16 v1, 0xb

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Receiver\'s email is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "The email is for vCard in EnvLayer > 1, it\'s not valid case."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleVcardFullName(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .local v0, rslt:I
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got the vCard Full Name is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleVcardName(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .local v0, rslt:I
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got the vCard Name is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleVcardTelNumber(Ljava/lang/String;)I
    .locals 4
    .parameter "tel"

    .prologue
    const/4 v2, 0x1

    const-string v3, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/motorola/android/bmessage/BMessageUtils;->isValidTelNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-nez v1, :cond_1

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Msg Sender\'s Tel Number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-ne v1, v2, :cond_2

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Msg Receiver\'s Tel Number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Higher layers of MsgEnv has invalid vCard Tel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-nez v1, :cond_4

    const/16 v1, 0x8

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Sender\'s tel is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-ne v1, v2, :cond_5

    const/16 v1, 0x9

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v0

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Receiver\'s tel is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "The Tel is for vCard in EnvLayer > 1, it\'s not valid case."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleVcardVersion(Ljava/lang/String;)I
    .locals 5
    .parameter "version"

    .prologue
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v3, "3.0"

    const-string v2, "2.1"

    const/4 v0, 0x0

    .local v0, rslt:I
    const-string v1, "3.0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3.0"

    iput-object v3, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVcardVersion is set to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "2.1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "2.1"

    iput-object v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "2.1"

    iput-object v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "2.1"

    iput-object v2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mVcardVersion:Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "bmessage.BMessageParser_V10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported vCard version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseBmsgBody()I
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v8, "bmessage.BMessageParser_V10"

    const/4 v1, 0x0

    .local v1, propertyName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, propertyValue:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, propertyNameAndValue:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, rslt:I
    const/4 v0, 0x0

    .local v0, isMsgDataGot:Z
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getPropertyNameAndValue()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v5, "bmessage.BMessageParser_V10"

    const-string v5, "Incompleted bMessage file, unexpected reaching the end of file!"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    :cond_1
    :goto_1
    const-string v5, "bmessage.BMessageParser_V10"

    const-string v5, "parseBmsgBody() return the value of : %d ."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    aget-object v1, v2, v9

    aget-object v3, v2, v7

    const-string v5, "bmessage.BMessageParser_V10"

    const-string v5, "Get propertyName = <%s>, propertyValue = <%s>."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v9

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v3, :cond_4

    :cond_3
    const-string v5, "bmessage.BMessageParser_V10"

    const-string v5, "Get property NameAndValue failed."

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    goto :goto_1

    :cond_4
    const-string v5, "END"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "BBODY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_5
    iget v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMaxEnvLayer:I

    if-ne v5, v6, :cond_0

    if-nez v0, :cond_6

    const-string v5, "BEGIN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "MSG"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseMsgBodyData()I

    move-result v4

    :goto_2
    if-eqz v4, :cond_0

    const-string v5, "bmessage.BMessageParser_V10"

    const-string v5, "Process BBODY property return error."

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v1, v3}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleBmsgBodyCommonProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method

.method private parseBmsgEnvelope()I
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v11, "BENV"

    const-string v9, "bmessage.BMessageParser_V10"

    const/4 v2, 0x0

    .local v2, propertyName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, propertyValue:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, propertyNameAndValue:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, rslt:I
    const/4 v0, 0x0

    .local v0, isBbodyProcessed:Z
    const/4 v1, 0x0

    .local v1, isBenvNest:Z
    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMaxEnvLayer:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mMaxEnvLayer:I

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getPropertyNameAndValue()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v6, "bmessage.BMessageParser_V10"

    const-string v6, "Incompleted bMessage file, unexpected reaching the end of file!"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x8

    :cond_1
    :goto_1
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v6, "parseBmsgEnvelope() return the value of : %d ."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    aget-object v2, v3, v10

    aget-object v4, v3, v8

    const-string v6, "bmessage.BMessageParser_V10"

    const-string v6, "Get propertyName = <%s>, propertyValue = <%s>."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v10

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v4, :cond_4

    :cond_3
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v6, "Get property NameAndValue failed."

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x8

    goto :goto_1

    :cond_4
    const-string v6, "END"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BENV"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    sub-int/2addr v6, v8

    iput v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    goto :goto_1

    :cond_5
    const-string v6, "BEGIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "VCARD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgVcard()I

    move-result v5

    :cond_6
    :goto_2
    if-eqz v5, :cond_0

    const-string v6, "bmessage.BMessageParser_V10"

    const-string v6, "Process BENV property return error."

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-nez v0, :cond_8

    const-string v6, "BBODY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgBody()I

    move-result v5

    goto :goto_2

    :cond_8
    if-nez v1, :cond_6

    const-string v6, "BENV"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgEnvelope()I

    move-result v5

    goto :goto_2
.end method

.method private parseBmsgProperty()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v9, "bmessage.BMessageParser_V10"

    const/4 v2, 0x0

    .local v2, propertyName:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, propertyValue:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, propertyNameAndValue:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, rslt:I
    const/4 v1, 0x0

    .local v1, isVcardGot:Z
    const/4 v0, 0x0

    .local v0, isEnvGot:Z
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getPropertyNameAndValue()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v6, "bmessage.BMessageParser_V10"

    const-string v6, "Incompleted bMessage file, unexpected reaching the end of file!"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x8

    :cond_1
    :goto_1
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v6, "parseBmsgProperty() return the value of : %d ."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    aget-object v2, v3, v10

    aget-object v4, v3, v8

    const-string v6, "bmessage.BMessageParser_V10"

    const-string v6, "Get propertyName = <%s>, propertyValue = <%s>."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v10

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v4, :cond_4

    :cond_3
    const-string v6, "bmessage.BMessageParser_V10"

    const-string v6, "Get property NameAndValue failed."

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x8

    goto :goto_1

    :cond_4
    const-string v6, "END"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BMSG"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_5
    const-string v6, "BEGIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v1, :cond_7

    const-string v6, "VCARD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgVcard()I

    move-result v5

    :cond_6
    :goto_2
    if-eqz v5, :cond_0

    const-string v6, "bmessage.BMessageParser_V10"

    const-string v6, "Process BMSG property return error."

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    if-nez v0, :cond_6

    const-string v6, "BENV"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgEnvelope()I

    move-result v5

    goto :goto_2

    :cond_8
    invoke-direct {p0, v2, v4}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleBmsgCommonProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_2
.end method

.method private parseBmsgVcard()I
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v7, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, propertyName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, propertyValue:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, propertyNameAndValue:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, rslt:I
    iput-boolean v8, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    iput-boolean v8, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getPropertyNameAndValue()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "Incompleted bMessage file, unexpected reaching the end of file!"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    :cond_1
    :goto_1
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "parseBmsgVcard() return the value of : %d ."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    aget-object v0, v1, v8

    aget-object v2, v1, v6

    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "Get propertyName = <%s>, propertyValue = <%s>."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v2, :cond_4

    :cond_3
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "Get property NameAndValue failed."

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    goto :goto_1

    :cond_4
    const-string v4, "END"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "VCARD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-gt v4, v6, :cond_1

    iget-boolean v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetTel:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mHasSetEmail:Z

    if-nez v4, :cond_1

    const-string v4, "TEL"

    const-string v5, ""

    invoke-direct {p0, v4, v5}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleBmsgVcardCommonProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "handleBmsgVcardCommonProperty()1 in parseBmsgVcard() return error."

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurrEnvLayer:I

    if-gt v4, v6, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleBmsgVcardCommonProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "handleBmsgVcardCommonProperty()2 in parseBmsgVcard() return error."

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private parseMsgBodyData()I
    .locals 23

    .prologue
    const/4 v15, 0x0

    .local v15, rslt:I
    const/16 v17, 0x0

    .local v17, tmpStr:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, tmpBytes:[B
    const/4 v11, 0x0

    check-cast v11, [[B

    .local v11, pdus:[[B
    const/4 v5, 0x0

    .local v5, bodyStr:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, bodyBytesArray:Ljava/util/List;,"Ljava/util/List<[B>;"
    const-string v3, "BEGIN:MSG\r\n"

    .local v3, beginStr:Ljava/lang/String;
    const-string v7, "\r\n"

    .local v7, crlfStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .local v6, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    if-nez v4, :cond_2

    :cond_0
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Invalid mBuilder in parseMsgBodyData()."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0xe

    .end local v3           #beginStr:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "parseMsgBodyData() return the value of : %d ."

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    .restart local v3       #beginStr:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/android/bmessage/BMessageBuilder;->getMessageStruct()Lcom/motorola/android/bmessage/MessageStruct;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageType()I

    move-result v10

    .local v10, msgType:I
    const/16 v18, -0x1

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Got invalid message Type value from the Builder."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x3

    goto :goto_0

    :cond_3
    if-eqz v10, :cond_4

    const/16 v18, 0x1

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    :cond_4
    :goto_1
    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mInputCharset:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, "END:MSG"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v15

    goto :goto_0

    :cond_5
    new-instance v5, Ljava/lang/String;

    .end local v5           #bodyStr:Ljava/lang/String;
    const-string v18, "\r\n"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v5       #bodyStr:Ljava/lang/String;
    goto :goto_2

    :cond_6
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "\r\n"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Unexpected end of file!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0x8

    goto :goto_1

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getPduBytes()[B

    move-result-object v16

    if-eqz v16, :cond_9

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, "END:MSG"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->peekLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, "BEGIN:MSG"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    :cond_a
    if-nez v17, :cond_b

    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Unexpected end of file!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0x8

    goto/16 :goto_1

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object v11, v0

    :cond_c
    if-eqz v11, :cond_d

    const/4 v8, 0x0

    .end local v3           #beginStr:Ljava/lang/String;
    .local v8, i:I
    :goto_3
    move-object v0, v11

    array-length v0, v0

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v8           #i:I
    :cond_d
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(I[[B)I

    move-result v15

    goto/16 :goto_0

    .restart local v3       #beginStr:Ljava/lang/String;
    :cond_e
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Unexpected end of file!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0x8

    goto/16 :goto_1

    :cond_f
    const/16 v18, 0x2

    move v0, v10

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    const/16 v18, 0x3

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :cond_10
    const/4 v12, 0x0

    .local v12, propertyName:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, propertyValue:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, propertyNameAndValue:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, isBodyBegin:Z
    :goto_4
    if-nez v15, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_18

    if-nez v9, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/motorola/android/bmessage/BMessageParser_V10;->separateLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/16 v18, 0x0

    aget-object v12, v13, v18

    const/16 v18, 0x1

    aget-object v14, v13, v18

    const/16 v18, 0x0

    aget-object v18, v13, v18

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_13

    const/4 v9, 0x1

    const-string v18, "\r\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    :cond_11
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Message body data begins with the separating line."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_12
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "\r\n"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Message body data directly begins the content."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_13
    sget-object v18, Lcom/motorola/android/bmessage/BMessageParser_V10;->sAvailableEmailHeaderProperty:Ljava/util/HashSet;

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleMsgBodyHeaderProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    goto :goto_4

    :cond_14
    const-string v18, "END:MSG"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    const/16 v18, 0x10

    const-string v19, ""

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v15

    goto/16 :goto_0

    :cond_15
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Unsupported email header property is ignored."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_16
    const-string v18, "END:MSG"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handlePropertyValue(ILjava/lang/String;)I

    move-result v15

    goto/16 :goto_0

    :cond_17
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "\r\n"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_18
    const-string v18, "bmessage.BMessageParser_V10"

    const-string v19, "Unexpected end of file!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0x8

    goto/16 :goto_4
.end method

.method private parseOneBMessage()I
    .locals 6

    .prologue
    const-string v5, "bmessage.BMessageParser_V10"

    const/4 v0, 0x0

    .local v0, rslt:I
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->readBMessageBegin()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "Invalid bMessage file without BEGIN:BMSG."

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    :goto_0
    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "parseOneBMessage() return the value of : %d ."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    if-nez v1, :cond_1

    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "Invalid mBuilder."

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->startRecord()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "mBuilder.startRecord return error."

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseBmsgProperty()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "bmessage.BMessageParser_V10"

    const-string v1, "parseBmsgProperty() return error."

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/bmessage/BMessageBuilder;->endRecord()V

    goto :goto_0
.end method

.method private peekLine()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v4, "UTF-8"

    const/4 v2, 0x0

    .local v2, str:Ljava/lang/String;
    :try_start_0
    iget v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    if-ge v1, v4, :cond_0

    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_1

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int v6, v1, v6

    add-int/lit8 v6, v6, 0x1

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v2           #str:Ljava/lang/String;
    .local v3, str:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    :cond_0
    :goto_1
    move-object v4, v2

    .end local v1           #i:I
    :goto_2
    return-object v4

    .restart local v1       #i:I
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    aget-byte v4, v4, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    if-eq v1, v4, :cond_2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget v5, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    iget v6, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    sub-int v6, v1, v6

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v2           #str:Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #str:Ljava/lang/String;
    .restart local v3       #str:Ljava/lang/String;
    move-object v2, v3

    .end local v3           #str:Ljava/lang/String;
    .restart local v2       #str:Ljava/lang/String;
    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "bmessage.BMessageParser_V10"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read line failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_2
.end method

.method private readBMessageBegin()Z
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, findBMSGBegin:Z
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->getLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ":"

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .local v4, strArray:[Ljava/lang/String;
    array-length v2, v4

    .local v2, length:I
    if-ne v2, v8, :cond_3

    aget-object v5, v4, v9

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BEGIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BMSG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-lez v0, :cond_1

    const-string v5, "bmessage.BMessageParser_V10"

    const-string v6, "There is %d invalid lines before BEGIN:BMSG. "

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    .end local v2           #length:I
    .end local v4           #strArray:[Ljava/lang/String;
    :cond_2
    return v1

    .restart local v2       #length:I
    .restart local v4       #strArray:[Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private separateLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "line"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, ""

    const/4 v0, 0x0

    .local v0, indexMatch:I
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, ""

    aput-object v5, v1, v3

    const-string v2, ""

    aput-object v5, v1, v4

    .local v1, propertyNameAndValue:[Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "1.0"

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Lcom/motorola/android/bmessage/BMessageBuilder;)Z
    .locals 1
    .parameter "is"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/motorola/android/bmessage/exception/BMessageException;
        }
    .end annotation

    .prologue
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parse(Ljava/io/InputStream;Lcom/motorola/android/bmessage/BMessageBuilder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;Lcom/motorola/android/bmessage/BMessageBuilder;Ljava/lang/String;)Z
    .locals 11
    .parameter "is"
    .parameter "builder"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/motorola/android/bmessage/exception/BMessageException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v10, "Create input stream byte array failed."

    const-string v6, "bmessage.BMessageParser_V10"

    const/4 v2, 0x0

    .local v2, rslt:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lt v4, v7, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "Input stream or Builder is null or empty."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/motorola/android/bmessage/exception/BMessageException;

    const/16 v5, 0xe

    const-string v6, "Input stream or Builder is null or emtpy."

    invoke-direct {v4, v5, v6}, Lcom/motorola/android/bmessage/exception/BMessageException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_1
    invoke-direct {p0, p3}, Lcom/motorola/android/bmessage/BMessageParser_V10;->handleInputCharset(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "handleInputCharset return error."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/motorola/android/bmessage/exception/BMessageException;

    const-string v5, "BMessageException.BMSG_EXCEPTION_CODE_INPUT_CHARSET_UNSUPPORT"

    invoke-direct {v4, v2, v5}, Lcom/motorola/android/bmessage/exception/BMessageException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    if-nez v4, :cond_3

    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "Create input stream byte array failed."

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/motorola/android/bmessage/exception/BMessageException;

    const-string v5, "Create input stream byte array failed."

    invoke-direct {v4, v9, v10}, Lcom/motorola/android/bmessage/exception/BMessageException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_3
    iput v8, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mCurPos:I

    const/4 v1, 0x0

    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    array-length v4, v4

    if-ge v1, v4, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, tempByte:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .end local v3           #tempByte:I
    :cond_4
    iput v1, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mTotalBytes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p2, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBuilder:Lcom/motorola/android/bmessage/BMessageBuilder;

    invoke-direct {p0}, Lcom/motorola/android/bmessage/BMessageParser_V10;->parseOneBMessage()I

    move-result v2

    if-eqz v2, :cond_6

    new-instance v4, Lcom/motorola/android/bmessage/exception/BMessageException;

    const-string v5, "Parse bMessage failed with error code : %d ."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/motorola/android/bmessage/exception/BMessageException;-><init>(ILjava/lang/String;)V

    throw v4

    .restart local v3       #tempByte:I
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    int-to-byte v5, v3

    aput-byte v5, v4, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #tempByte:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/IOException;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/android/bmessage/BMessageParser_V10;->mBMsgByteArray:[B

    const-string v4, "bmessage.BMessageParser_V10"

    const-string v4, "Initialize input stream byte array failed."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/motorola/android/bmessage/exception/BMessageException;

    const-string v5, "Initialize input stream byte array failed."

    invoke-direct {v4, v9, v5}, Lcom/motorola/android/bmessage/exception/BMessageException;-><init>(ILjava/lang/String;)V

    throw v4

    .end local v0           #e:Ljava/io/IOException;
    :cond_6
    return v7
.end method
