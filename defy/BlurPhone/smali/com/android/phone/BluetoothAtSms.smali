.class public Lcom/android/phone/BluetoothAtSms;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothAtSms$ErrorCode;,
        Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;,
        Lcom/android/phone/BluetoothAtSms$CNMI;,
        Lcom/android/phone/BluetoothAtSms$CPMS;,
        Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;,
        Lcom/android/phone/BluetoothAtSms$SmsStatus;
    }
.end annotation


# static fields
.field private static final CHAR_ASCII_CNTL_Z:I = 0x1a

.field private static final CHAR_ASCII_CR:I = 0xd

.field private static final CHAR_ASCII_ESC:I = 0x1b

.field private static final CHAR_ASCII_LF:I = 0xa

.field private static final CHAR_ASCII_SPACE:I = 0x20

.field private static final CHAR_ASCII_TAB:I = 0x9

.field private static final DBG:Z = true

.field private static final INPUT_MODE_MESSAGE_SEND:I = 0x1

.field private static final INPUT_MODE_NORMAL:I = 0x0

.field private static final MAX_BUFFER_SIZE:I = 0x400

.field private static final MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.mot.bt.Sms.MESSAGE_SENT"

.field private static final MESSAGE_STATUS_RECEIVED_ACTION:Ljava/lang/String; = "com.mot.bt.Sms.MESSAGE_STATUS_RECEIVED"

.field private static final MODEM_BUFFER_INC:I = 0x14

.field private static final SMS_BODY_RECV_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final SMS_ME_COLUMNS:[Ljava/lang/String; = null

.field private static final SMS_PDU_MODE:I = 0x0

.field private static final SMS_TEXT_MODE:I = 0x1

.field private static final SMS_URI_RECV_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED_STORED"

.field private static final TAG:Ljava/lang/String; = "BtAtSms"

.field private static final UNKNOWN_SMS_ERROR:I = -0x80ea

.field private static mInputMsgBody:Ljava/lang/String;


# instance fields
.field private mCanDeleteNumber:I

.field private mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;

.field private final mContext:Landroid/content/Context;

.field private mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

.field private mDestinationAddress:Ljava/lang/String;

.field private final mHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mInputMode:I

.field private mPduLength:I

.field private mSmsFormatType:I

.field private mSmsReciever:Landroid/content/BroadcastReceiver;

.field private final mSmsSndIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "person"

    .line 208
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "person"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "person"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/BluetoothAtSms;->SMS_ME_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V
    .locals 6
    .parameter "context"
    .parameter "handsfree"

    .prologue
    const/4 v1, 0x0

    const-string v3, "\"ME\""

    .line 216
    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    .line 249
    new-instance v0, Lcom/android/phone/BluetoothAtSms$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothAtSms$1;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mSmsSndIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 327
    new-instance v0, Lcom/android/phone/BluetoothAtSms$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothAtSms$2;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mSmsReciever:Landroid/content/BroadcastReceiver;

    .line 217
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    .line 218
    iput-object p2, p0, Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 219
    iput v1, p0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    .line 221
    iput v1, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    .line 222
    new-instance v0, Lcom/android/phone/BluetoothAtSms$CPMS;

    const-string v2, "\"ME\""

    const-string v2, "\"ME\""

    const-string v2, "\"ME\""

    invoke-direct {v0, v3, v3, v3}, Lcom/android/phone/BluetoothAtSms$CPMS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

    .line 223
    new-instance v0, Lcom/android/phone/BluetoothAtSms$CNMI;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothAtSms$CNMI;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;

    .line 224
    return-void
.end method

.method private SmsPduHexStr2Byte(Ljava/lang/String;)[B
    .locals 8
    .parameter "pduStr"

    .prologue
    const-string v7, "0x"

    .line 1268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 1269
    .local v3, pduByte:[B
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_0

    .line 1270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1271
    .local v0, b0:B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 1272
    .local v1, b1:B
    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 1269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1274
    .end local v0           #b0:B
    .end local v1           #b1:B
    :cond_0
    return-object v3
.end method

.method private SmsPdubyte2HexStr([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    const-string v4, "0123456789abcdef"

    .line 1284
    if-nez p1, :cond_0

    .line 1285
    const-string v3, ""

    .line 1294
    :goto_0
    return-object v3

    .line 1286
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1287
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 1289
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 1290
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1291
    aget-byte v3, p1, v1

    and-int/lit8 v0, v3, 0xf

    .line 1292
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1294
    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CPMS;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CPMS;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->parseAtCpms([Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CPMS;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothAtSms;->readMessageFromME(Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms;->parseAtCmgs([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-object p0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/phone/BluetoothAtSms;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;)Lcom/android/phone/BluetoothAtSms$SmsStatus;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms;->parseAtCmgl([Ljava/lang/Object;)Lcom/android/phone/BluetoothAtSms$SmsStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothAtSms;Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->handleAtCmglSetCmdPduMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothAtSms;Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->handleAtCmglSetCmdTextMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CNMI;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->parseAtCnmi([Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CNMI;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothAtSms;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothAtSms;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothAtSms;[B)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothAtSms;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->timeStampFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothAtSms;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/BluetoothAtSms;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothAtSms;->process(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteMessageFromME(Landroid/content/Context;I)I
    .locals 8
    .parameter "context"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    .line 874
    const/4 v3, -0x1

    .line 875
    .local v3, result:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 876
    .local v1, mContentResolver:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, p2

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 877
    .local v2, queryUri:Landroid/net/Uri;
    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 878
    .local v0, count:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 879
    const/16 v4, 0x1f4

    .line 880
    :goto_0
    return v4

    :cond_0
    move v4, v3

    goto :goto_0
.end method

.method private getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .parameter "SmsType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1136
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v6, SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1138
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtSms;->SMS_ME_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1140
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 1142
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v11, v1, :cond_0

    .line 1144
    new-instance v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>(Lcom/android/phone/BluetoothAtSms$1;)V

    .line 1145
    .local v12, msg:Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    .line 1146
    const-string v1, "type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    .line 1147
    const-string v1, "thread_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->thread_id:I

    .line 1148
    const-string v1, "address"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    .line 1149
    const-string v1, "person"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->person_id:I

    .line 1150
    const-string v1, "date"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    .line 1151
    const-string v1, "read"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    .line 1152
    const-string v1, "status"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->status:I

    .line 1153
    const-string v1, "subject"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->subject:Ljava/lang/String;

    .line 1154
    const-string v1, "body"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    .line 1155
    const-string v1, "person"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->person:Ljava/lang/String;

    .line 1156
    const-string v1, "protocol"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->protocol:I

    .line 1157
    const-string v1, "reply_path_present"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->reply_path_present:Ljava/lang/String;

    .line 1159
    const-string v1, "service_center"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    .line 1161
    const-string v1, "getAllMessagesFromME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\naddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nbody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nreply_path_present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->reply_path_present:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nservice_center: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1171
    .end local v11           #i:I
    .end local v12           #msg:Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1174
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 1230
    .end local p0
    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 1171
    .restart local p0
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1176
    :pswitch_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1177
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v7, SmsUnreadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    const/4 v11, 0x0

    .end local p0
    .restart local v11       #i:I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 1179
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-nez v1, :cond_3

    .line 1180
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1182
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v7

    .line 1183
    goto :goto_1

    .line 1187
    .end local v7           #SmsUnreadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v11           #i:I
    .restart local p0
    :pswitch_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1188
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    .local v8, SmsreadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    const/4 v11, 0x0

    .end local p0
    .restart local v11       #i:I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 1190
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-eqz v1, :cond_5

    .line 1191
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1193
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v8

    .line 1194
    goto :goto_1

    .line 1198
    .end local v8           #SmsreadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v11           #i:I
    .restart local p0
    :pswitch_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1199
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .restart local v8       #SmsreadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    const/4 v11, 0x0

    .end local p0
    .restart local v11       #i:I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_8

    .line 1201
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    .line 1202
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1205
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v8

    .line 1206
    goto/16 :goto_1

    .line 1210
    .end local v8           #SmsreadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v11           #i:I
    .restart local p0
    :pswitch_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1211
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    .local v9, SmssentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    const/4 v11, 0x0

    .end local p0
    .restart local v11       #i:I
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_a

    .line 1213
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 1214
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1217
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v9

    .line 1218
    goto/16 :goto_1

    .line 1222
    .end local v9           #SmssentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v11           #i:I
    .restart local p0
    :pswitch_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v6

    .line 1223
    goto/16 :goto_1

    .line 1226
    :pswitch_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v6

    .line 1227
    goto/16 :goto_1

    .line 1174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getAllSmsIndexsFromME(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, smsIndexs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    const-string v9, "_id"

    .line 893
    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 894
    .local v1, queryUri:Landroid/net/Uri;
    const-string v5, "_id ASC"

    .line 895
    .local v5, orderby:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 896
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v9, v2, v4

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 899
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 901
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 902
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 903
    .local v7, index:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 905
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 906
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 910
    .end local v7           #index:I
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 913
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    .locals 8
    .parameter "context"
    .parameter "capacity"

    .prologue
    const/16 v7, 0x1f4

    const/4 v3, 0x0

    .line 674
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 675
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    iget-object v1, p2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->memName:Ljava/lang/String;

    const-string v2, "\"ME\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    const/16 v1, 0x1000

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    .line 678
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 681
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 682
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    .line 683
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 691
    const/4 v1, -0x1

    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return v1

    .restart local v6       #c:Landroid/database/Cursor;
    :cond_0
    move v1, v7

    .line 685
    goto :goto_0

    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    move v1, v7

    .line 688
    goto :goto_0
.end method

.method private getSmsMessageStorageName(I)Ljava/lang/String;
    .locals 1
    .parameter "memory_index"

    .prologue
    .line 705
    packed-switch p1, :pswitch_data_0

    .line 713
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 707
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    goto :goto_0

    .line 709
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem2:Ljava/lang/String;

    goto :goto_0

    .line 711
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem3:Ljava/lang/String;

    goto :goto_0

    .line 705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleAtCmglSetCmdPduMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 10
    .parameter "stat"
    .parameter "mem1"

    .prologue
    .line 1420
    const-string v1, "+CMGL"

    .line 1421
    .local v1, cmdName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->getIntValue()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1531
    :cond_0
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .end local p1
    :goto_0
    return-object v8

    .line 1423
    .restart local p1
    :pswitch_0
    const-string v8, "\"ME\""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1424
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1426
    .local v0, SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1427
    .local v5, result:Landroid/bluetooth/AtCommandResult;
    if-eqz v0, :cond_1

    .line 1428
    const/4 v2, 0x0

    .end local p1
    .local v2, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 1429
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1430
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "read"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v9, p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-direct {p0, v8, v9, v7}, Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 1433
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v3

    .line 1434
    .local v3, pdu:[B
    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v4

    .line 1435
    .local v4, pduHexStr:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v9, p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1428
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v2           #i:I
    .end local v3           #pdu:[B
    .end local v4           #pduHexStr:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_1
    move-object v8, v5

    .line 1441
    goto/16 :goto_0

    .line 1444
    .end local v0           #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v5           #result:Landroid/bluetooth/AtCommandResult;
    .restart local p1
    :cond_2
    :pswitch_1
    const-string v8, "\"ME\""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1445
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1447
    .restart local v0       #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1448
    .restart local v5       #result:Landroid/bluetooth/AtCommandResult;
    if-eqz v0, :cond_3

    .line 1449
    const/4 v2, 0x0

    .end local p1
    .restart local v2       #i:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 1450
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v3

    .line 1451
    .restart local v3       #pdu:[B
    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v4

    .line 1452
    .restart local v4       #pduHexStr:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v9, p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1449
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #i:I
    .end local v3           #pdu:[B
    .end local v4           #pduHexStr:Ljava/lang/String;
    :cond_3
    move-object v8, v5

    .line 1458
    goto/16 :goto_0

    .line 1461
    .end local v0           #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v5           #result:Landroid/bluetooth/AtCommandResult;
    .restart local p1
    :cond_4
    :pswitch_2
    const-string v8, "\"ME\""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1462
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-direct {p0, v8, v9}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1464
    .restart local v0       #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1465
    .restart local v5       #result:Landroid/bluetooth/AtCommandResult;
    if-eqz v0, :cond_5

    .line 1466
    const/4 v2, 0x0

    .end local p1
    .restart local v2       #i:I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 1467
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v3

    .line 1468
    .restart local v3       #pdu:[B
    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v4

    .line 1469
    .restart local v4       #pduHexStr:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v9, p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1466
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2           #i:I
    .end local v3           #pdu:[B
    .end local v4           #pduHexStr:Ljava/lang/String;
    :cond_5
    move-object v8, v5

    .line 1475
    goto/16 :goto_0

    .line 1478
    .end local v0           #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v5           #result:Landroid/bluetooth/AtCommandResult;
    .restart local p1
    :cond_6
    :pswitch_3
    const-string v8, "\"ME\""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1479
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v9, 0x3

    invoke-direct {p0, v8, v9}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1481
    .restart local v0       #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1482
    .restart local v5       #result:Landroid/bluetooth/AtCommandResult;
    if-eqz v0, :cond_7

    .line 1483
    const/4 v2, 0x0

    .end local p1
    .restart local v2       #i:I
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 1484
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v3

    .line 1485
    .restart local v3       #pdu:[B
    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v4

    .line 1486
    .restart local v4       #pduHexStr:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v9, p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1483
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2           #i:I
    .end local v3           #pdu:[B
    .end local v4           #pduHexStr:Ljava/lang/String;
    :cond_7
    move-object v8, v5

    .line 1492
    goto/16 :goto_0

    .line 1495
    .end local v0           #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v5           #result:Landroid/bluetooth/AtCommandResult;
    .restart local p1
    :cond_8
    :pswitch_4
    const-string v8, "\"ME\""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1496
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v9, 0x4

    invoke-direct {p0, v8, v9}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1498
    .restart local v0       #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    new-instance v5, Landroid/bluetooth/AtCommandResult;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1499
    .restart local v5       #result:Landroid/bluetooth/AtCommandResult;
    if-eqz v0, :cond_c

    .line 1500
    const/4 v2, 0x0

    .end local p1
    .restart local v2       #i:I
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_c

    .line 1503
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v8, p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 1505
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v8, p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-nez v8, :cond_9

    .line 1506
    const/4 v6, 0x0

    .line 1507
    .local v6, status:I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1508
    .restart local v7       #values:Landroid/content/ContentValues;
    const-string v8, "read"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1509
    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v9, p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-direct {p0, v8, v9, v7}, Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 1520
    .end local v7           #values:Landroid/content/ContentValues;
    :goto_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v8, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v3

    .line 1521
    .restart local v3       #pdu:[B
    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v4

    .line 1522
    .restart local v4       #pduHexStr:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v9, p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1500
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 1512
    .end local v3           #pdu:[B
    .end local v4           #pduHexStr:Ljava/lang/String;
    .end local v6           #status:I
    :cond_9
    const/4 v6, 0x1

    .restart local v6       #status:I
    goto :goto_6

    .line 1515
    .end local v6           #status:I
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v8, p1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 1516
    const/4 v6, 0x3

    .restart local v6       #status:I
    goto :goto_6

    .line 1518
    .end local v6           #status:I
    :cond_b
    const/4 v6, 0x2

    .restart local v6       #status:I
    goto :goto_6

    .end local v2           #i:I
    .end local v6           #status:I
    :cond_c
    move-object v8, v5

    .line 1528
    goto/16 :goto_0

    .line 1421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleAtCmglSetCmdTextMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 12
    .parameter "stat"
    .parameter "mem1"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "\"ME\""

    const-string v11, "\",\r\n"

    const-string v10, "\r\n"

    .line 1536
    const-string v1, "+CMGL"

    .line 1537
    .local v1, cmdName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->getIntValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1632
    :cond_0
    new-instance v6, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v6, v9}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .end local p0
    :goto_0
    return-object v6

    .line 1539
    .restart local p0
    :pswitch_0
    const-string v6, "\"ME\""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1540
    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v8}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1542
    .local v0, SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1543
    .local v3, result:Landroid/bluetooth/AtCommandResult;
    if-eqz v0, :cond_1

    .line 1544
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1545
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1546
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1547
    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-direct {p0, v7, v6, v5}, Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 1549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"REC UNREAD\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",\r\n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1544
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    move-object v6, v3

    .line 1554
    goto/16 :goto_0

    .line 1557
    .end local v0           #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    :cond_2
    :pswitch_1
    const-string v6, "\"ME\""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1558
    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v9}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1560
    .restart local v0       #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1561
    .restart local v3       #result:Landroid/bluetooth/AtCommandResult;
    if-eqz v0, :cond_3

    .line 1562
    const/4 v2, 0x0

    .end local p0
    .restart local v2       #i:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1563
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"REC READ\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",\r\n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1562
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2           #i:I
    :cond_3
    move-object v6, v3

    .line 1568
    goto/16 :goto_0

    .line 1571
    .end local v0           #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    .restart local p0
    :cond_4
    :pswitch_2
    const-string v6, "\"ME\""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1572
    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1574
    .restart local v0       #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1575
    .restart local v3       #result:Landroid/bluetooth/AtCommandResult;
    if-eqz v0, :cond_5

    .line 1576
    const/4 v2, 0x0

    .end local p0
    .restart local v2       #i:I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 1577
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"STO UNSENT\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",\r\n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1576
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2           #i:I
    :cond_5
    move-object v6, v3

    .line 1582
    goto/16 :goto_0

    .line 1585
    .end local v0           #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    .restart local p0
    :cond_6
    :pswitch_3
    const-string v6, "\"ME\""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1586
    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-direct {p0, v6, v7}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1588
    .restart local v0       #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1589
    .restart local v3       #result:Landroid/bluetooth/AtCommandResult;
    if-eqz v0, :cond_7

    .line 1590
    const/4 v2, 0x0

    .end local p0
    .restart local v2       #i:I
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 1591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"STO SENT\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",\r\n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1590
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v2           #i:I
    :cond_7
    move-object v6, v3

    .line 1596
    goto/16 :goto_0

    .line 1599
    .end local v0           #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    .restart local p0
    :cond_8
    :pswitch_4
    const-string v6, "\"ME\""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1600
    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1602
    .restart local v0       #SmsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1603
    .restart local v3       #result:Landroid/bluetooth/AtCommandResult;
    if-eqz v0, :cond_c

    .line 1604
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 1607
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    if-ne v6, v9, :cond_a

    .line 1609
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-nez v6, :cond_9

    .line 1610
    const-string v4, "\"REC UNREAD\""

    .line 1611
    .local v4, status:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1612
    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v6, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1613
    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-direct {p0, v7, v6, v5}, Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 1624
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",\r\n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1604
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 1616
    .end local v4           #status:Ljava/lang/String;
    :cond_9
    const-string v4, "\"REC READ\""

    .restart local v4       #status:Ljava/lang/String;
    goto :goto_6

    .line 1619
    .end local v4           #status:Ljava/lang/String;
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v6, v6, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    .line 1620
    const-string v4, "\"STO SENT\""

    .restart local v4       #status:Ljava/lang/String;
    goto :goto_6

    .line 1622
    .end local v4           #status:Ljava/lang/String;
    :cond_b
    const-string v4, "\"STO UNSENT\""

    .restart local v4       #status:Ljava/lang/String;
    goto :goto_6

    .end local v2           #i:I
    .end local v4           #status:Ljava/lang/String;
    :cond_c
    move-object v6, v3

    .line 1629
    goto/16 :goto_0

    .line 1537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseAtCmgl([Ljava/lang/Object;)Lcom/android/phone/BluetoothAtSms$SmsStatus;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 1313
    new-instance v0, Lcom/android/phone/BluetoothAtSms$SmsStatus;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothAtSms$SmsStatus;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    .line 1314
    .local v0, Status:Lcom/android/phone/BluetoothAtSms$SmsStatus;
    iget v1, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    packed-switch v1, :pswitch_data_0

    .line 1327
    :cond_0
    :goto_0
    return-object v0

    .line 1316
    :pswitch_0
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0|1|2|3|4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1317
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->set(I)V

    goto :goto_0

    .line 1320
    :pswitch_1
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"REC UNREAD\"|\"REC READ\"|\"STO UNSENT\"|\"STO SENT\"|\"ALL\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1322
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 1314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseAtCmgs([Ljava/lang/Object;)Z
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1353
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    if-nez v0, :cond_1

    .line 1354
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1362
    :goto_0
    return v0

    .line 1356
    :cond_0
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothAtSms;->mPduLength:I

    :goto_1
    move v0, v3

    .line 1362
    goto :goto_0

    .line 1358
    :cond_1
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"(\\+)?(\\d+)\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 1359
    goto :goto_0

    .line 1360
    :cond_2
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mDestinationAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseAtCnmi([Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CNMI;)I
    .locals 7
    .parameter "args"
    .parameter "cnmi"

    .prologue
    const/16 v6, 0x1f4

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1366
    if-eqz p1, :cond_5

    .line 1367
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    move v0, v6

    .line 1415
    :goto_0
    return v0

    :pswitch_0
    move v0, v4

    .line 1369
    goto :goto_0

    .line 1371
    :pswitch_1
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0|3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move v0, v4

    .line 1373
    goto :goto_0

    :cond_0
    move v0, v6

    .line 1375
    goto :goto_0

    .line 1377
    :pswitch_2
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0|3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0|1|2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1378
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    .line 1379
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    move v0, v4

    .line 1380
    goto :goto_0

    :cond_1
    move v0, v6

    .line 1382
    goto :goto_0

    .line 1384
    :pswitch_3
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0|3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0|1|2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1386
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    .line 1387
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    .line 1388
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->bm:I

    move v0, v4

    .line 1389
    goto/16 :goto_0

    :cond_2
    move v0, v6

    .line 1391
    goto/16 :goto_0

    .line 1393
    :pswitch_4
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0|3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0|1|2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1395
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    .line 1396
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    .line 1397
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->bm:I

    move v0, v4

    .line 1398
    goto/16 :goto_0

    :cond_3
    move v0, v6

    .line 1400
    goto/16 :goto_0

    .line 1402
    :pswitch_5
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0|3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0|1|2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1405
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    .line 1406
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    .line 1407
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->bm:I

    move v0, v4

    .line 1408
    goto/16 :goto_0

    :cond_4
    move v0, v6

    .line 1410
    goto/16 :goto_0

    :cond_5
    move v0, v4

    .line 1415
    goto/16 :goto_0

    .line 1367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseAtCpms([Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CPMS;)Z
    .locals 3
    .parameter "args"
    .parameter "cpms"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1331
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 1348
    :goto_0
    return v0

    .line 1333
    :pswitch_0
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    move v0, v1

    .line 1334
    goto :goto_0

    .line 1337
    :pswitch_1
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    .line 1338
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem2:Ljava/lang/String;

    move v0, v1

    .line 1339
    goto :goto_0

    .line 1342
    :pswitch_2
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    .line 1343
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem2:Ljava/lang/String;

    .line 1344
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem3:Ljava/lang/String;

    move v0, v1

    .line 1345
    goto :goto_0

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private process(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "handsfree"
    .parameter "input"

    .prologue
    .line 980
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 981
    const/4 v1, -0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/phone/BluetoothAtSms;->useChar(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;C)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 984
    :cond_0
    return-void

    .line 980
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readMessageFromME(Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I
    .locals 8
    .parameter "context"
    .parameter "index"
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    const-string v2, "person"

    .line 727
    const/4 v7, -0x1

    .line 728
    .local v7, result:I
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p2

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 729
    .local v1, queryUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 730
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/phone/BluetoothAtSms;->SMS_ME_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 731
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 733
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 734
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    .line 735
    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    .line 736
    const-string v2, "thread_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->thread_id:I

    .line 737
    const-string v2, "address"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    .line 738
    const-string v2, "person"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->person_id:I

    .line 739
    const-string v2, "date"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    .line 740
    const-string v2, "read"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    .line 741
    const-string v2, "status"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->status:I

    .line 742
    const-string v2, "subject"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->subject:Ljava/lang/String;

    .line 743
    const-string v2, "body"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    .line 744
    const-string v2, "person"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->person:Ljava/lang/String;

    .line 745
    const-string v2, "protocol"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->protocol:I

    .line 746
    const-string v2, "reply_path_present"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->reply_path_present:Ljava/lang/String;

    .line 748
    const-string v2, "service_center"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    .line 751
    const-string v2, "readMessageFromME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\naddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nbody:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nreply_path_present: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->reply_path_present:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nservice_center: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_0
    return v7

    .line 756
    :cond_1
    const/16 v7, 0x141

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private saveTextSmsMessageOnME(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 8
    .parameter "context"
    .parameter "destAddress"
    .parameter "messageBody"
    .parameter "mTimestamp"

    .prologue
    const/4 v7, -0x1

    .line 1245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1246
    .local v2, mContentResolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 1247
    .local v4, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, p2, p3, v5, v6}, Landroid/provider/Telephony$Sms$Draft;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v4

    .line 1248
    if-nez v4, :cond_0

    move v5, v7

    .line 1257
    :goto_0
    return v5

    .line 1250
    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    .line 1251
    .local v3, path:Ljava/lang/String;
    if-nez v3, :cond_1

    move v5, v7

    .line 1252
    goto :goto_0

    .line 1254
    :cond_1
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, index:I
    move v5, v1

    .line 1255
    goto :goto_0

    .line 1256
    .end local v1           #index:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/NumberFormatException;
    move v5, v7

    .line 1257
    goto :goto_0
.end method

.method private sendMessageFromMem(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 32
    .parameter "context"
    .parameter "mem"
    .parameter "index"
    .parameter "da"
    .parameter "SendCmdName"

    .prologue
    .line 780
    const/16 v20, -0x1

    .line 781
    .local v20, error:I
    const/4 v7, 0x0

    .line 782
    .local v7, messageBody:Ljava/lang/String;
    const/4 v6, 0x0

    .line 783
    .local v6, dsAddress:Ljava/lang/String;
    const/16 v30, 0x0

    .line 784
    .local v30, uri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 785
    .local v28, prefs:Landroid/content/SharedPreferences;
    const-string v8, "pref_key_sms_delivery_reports"

    const/4 v9, 0x0

    move-object/from16 v0, v28

    move-object v1, v8

    move v2, v9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 786
    .local v10, requestDeliveryReport:Z
    const-string v8, "\"SM\""

    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 789
    const/16 v8, 0x1f4

    .line 862
    .end local v10           #requestDeliveryReport:Z
    :goto_0
    return v8

    .line 791
    .restart local v10       #requestDeliveryReport:Z
    :cond_0
    new-instance v24, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    const/4 v8, 0x0

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>(Lcom/android/phone/BluetoothAtSms$1;)V

    .line 792
    .local v24, message:Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/BluetoothAtSms;->readMessageFromME(Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I

    move-result v20

    .line 793
    const/4 v8, -0x1

    move/from16 v0, v20

    move v1, v8

    if-eq v0, v1, :cond_1

    move/from16 v8, v20

    .line 794
    goto :goto_0

    .line 795
    :cond_1
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    move-object v7, v0

    .line 796
    if-eqz p4, :cond_3

    .line 797
    move-object/from16 v6, p4

    .line 800
    :goto_1
    if-eqz v6, :cond_2

    if-nez v7, :cond_4

    .line 801
    :cond_2
    const/16 v8, 0x1f4

    goto :goto_0

    .line 799
    :cond_3
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    move-object v6, v0

    goto :goto_1

    .line 802
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 803
    .local v5, mContentResolver:Landroid/content/ContentResolver;
    new-instance v8, Ljava/util/HashSet;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v9, v11

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v11

    .line 805
    .local v11, mThreadId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 806
    .local v22, mTimestamp:J
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    move v8, v0

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    move v8, v0

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    .line 809
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://sms/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 810
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 811
    .local v31, values:Landroid/content/ContentValues;
    const-string v8, "address"

    move-object/from16 v0, v31

    move-object v1, v8

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v8, "date"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v31

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 813
    const-string v8, "thread_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v31

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 814
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    .line 815
    .local v29, ret:I
    const/4 v8, -0x1

    move/from16 v0, v29

    move v1, v8

    if-ne v0, v1, :cond_5

    .line 816
    const/16 v8, 0x1f4

    goto/16 :goto_0

    .line 819
    :cond_5
    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move v2, v8

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 831
    .end local v29           #ret:I
    .end local v31           #values:Landroid/content/ContentValues;
    :goto_2
    if-nez v30, :cond_7

    .line 832
    const/16 v8, 0x1f4

    goto/16 :goto_0

    .line 823
    :cond_6
    const/4 v8, 0x0

    :try_start_0
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {v5 .. v12}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v30

    goto :goto_2

    .line 825
    :catch_0
    move-exception v8

    move-object/from16 v19, v8

    .line 826
    .local v19, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 827
    const/16 v8, 0x1f4

    goto/16 :goto_0

    .line 833
    .end local v19           #e:Landroid/database/sqlite/SQLiteException;
    :cond_7
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v13

    .line 834
    .local v13, mSmsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v13, v7}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 835
    .local v16, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 836
    .local v25, messageCount:I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 837
    .local v18, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 839
    .local v17, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v21, 0x0

    .local v21, j:I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 840
    if-eqz v10, :cond_8

    .line 841
    new-instance v26, Landroid/content/Intent;

    const-string v8, "com.mot.bt.Sms.MESSAGE_STATUS_RECEIVED"

    move-object/from16 v0, v26

    move-object v1, v8

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 842
    .local v26, msgDeliveredIntent:Landroid/content/Intent;
    const-string v8, "SendCmdName"

    move-object/from16 v0, v26

    move-object v1, v8

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v1, v8

    move-object/from16 v2, v26

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .end local v26           #msgDeliveredIntent:Landroid/content/Intent;
    :cond_8
    new-instance v27, Landroid/content/Intent;

    const-string v8, "com.mot.bt.Sms.MESSAGE_SENT"

    move-object/from16 v0, v27

    move-object v1, v8

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 847
    .local v27, msgSendCompleteIntent:Landroid/content/Intent;
    const-string v8, "SendCmdName"

    move-object/from16 v0, v27

    move-object v1, v8

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const/4 v8, 0x1

    sub-int v8, v25, v8

    move/from16 v0, v21

    move v1, v8

    if-ne v0, v1, :cond_9

    .line 849
    const-string v8, "BtAtSms"

    const-string v9, " IsLastPackageOfSMS  SET"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v8, "IsLastPackageOfSMS"

    const-string v9, "yes"

    move-object/from16 v0, v27

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    const/4 v8, 0x0

    const/high16 v9, 0x4000

    move-object/from16 v0, p1

    move v1, v8

    move-object/from16 v2, v27

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 854
    :cond_9
    const-string v8, "IsLastPackageOfSMS"

    const-string v9, "no"

    move-object/from16 v0, v27

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move v1, v8

    move-object/from16 v2, v27

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 859
    .end local v27           #msgSendCompleteIntent:Landroid/content/Intent;
    :cond_a
    const-string v8, "BtAtSms"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendIntents size is "

    .end local v10           #requestDeliveryReport:Z
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v15, 0x0

    move-object v14, v6

    invoke-virtual/range {v13 .. v18}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 862
    const/4 v8, -0x1

    goto/16 :goto_0
.end method

.method private sendPduMessage(Landroid/content/Context;[BLjava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "Pdus"
    .parameter "SendCmdName"

    .prologue
    const/16 v1, 0x1f4

    const-string v3, "BtAtSms"

    .line 1091
    const-string v0, "BtAtSms"

    const-string v0, "sendPduMessage ENTER! "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 1093
    .local v6, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-nez v6, :cond_0

    .line 1094
    const-string v0, "BtAtSms"

    const-string v0, "returned message=null!!! "

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1105
    :goto_0
    return v0

    .line 1097
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRecipientAddress()Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, dsAddress:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 1099
    .local v4, MessageText:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    .line 1100
    :cond_1
    const-string v0, "BtAtSms"

    const-string v0, "dsAddress == null || MessageText == null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1101
    goto :goto_0

    .line 1103
    :cond_2
    const-string v0, "BtAtSms"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dsAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const-string v0, "BtAtSms"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothAtSms;->sendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private sendSms(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V
    .locals 11
    .parameter "context"
    .parameter "handsfree"

    .prologue
    .line 918
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    if-ne v0, v1, :cond_1

    .line 919
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    .line 921
    const-string v0, "\r\n"

    invoke-virtual {p2, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 923
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input length is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    if-nez v0, :cond_6

    .line 928
    const-string v0, "BtAtSms"

    const-string v1, "PDU MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 930
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 934
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 965
    .end local v8           #i:I
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 966
    .local v7, ex:Ljava/lang/RuntimeException;
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception is captured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 968
    .local v10, result:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v10}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 972
    .end local v7           #ex:Ljava/lang/RuntimeException;
    .end local v10           #result:Landroid/bluetooth/AtCommandResult;
    :cond_1
    :goto_1
    return-void

    .line 937
    .restart local v8       #i:I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 940
    :cond_3
    :try_start_1
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms;->SmsPduHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v9

    .line 941
    .local v9, pdus:[B
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mPduLength:I

    array-length v1, v9

    const/4 v2, 0x0

    aget-byte v2, v9, v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    .line 942
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "pdu format error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_4
    const-string v0, "BtAtSms"

    invoke-direct {p0, p1, v9, v0}, Lcom/android/phone/BluetoothAtSms;->sendPduMessage(Landroid/content/Context;[BLjava/lang/String;)I

    move-result v6

    .line 944
    .local v6, error:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_5

    .line 945
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPduMessage return ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 947
    .restart local v10       #result:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v10}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto :goto_1

    .line 950
    .end local v10           #result:Landroid/bluetooth/AtCommandResult;
    :cond_5
    const-string v0, "BtAtSms"

    const-string v1, "sendTextMessage return OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 954
    .end local v6           #error:I
    .end local v8           #i:I
    .end local v9           #pdus:[B
    :cond_6
    const-string v0, "BtAtSms"

    const-string v1, "TEXT MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms;->mDestinationAddress:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    const-string v5, "BtAtSms"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothAtSms;->sendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 958
    .restart local v6       #error:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1

    .line 959
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextMessage return ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 961
    .restart local v10       #result:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v10}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private sendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 27
    .parameter "context"
    .parameter "dsAddress"
    .parameter "scAddress"
    .parameter "MessageText"
    .parameter "SendCmdName"

    .prologue
    .line 1032
    const-string v5, "BtAtSms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageText length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 1034
    :cond_0
    const/16 v5, 0x1f4

    .line 1078
    :goto_0
    return v5

    .line 1035
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v12

    .line 1036
    .local v12, mSmsManager:Landroid/telephony/SmsManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1037
    .local v4, mContentResolver:Landroid/content/ContentResolver;
    move-object v0, v12

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1038
    .local v15, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1039
    .local v22, messageCount:I
    const-string v5, "BtAtSms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1041
    .local v17, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1042
    .local v16, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 1043
    .local v25, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_sms_delivery_reports"

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1044
    .local v9, requestDeliveryReport:Z
    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v10

    .line 1046
    .local v10, mThreadId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1047
    .local v20, mTimestamp:J
    const/16 v26, 0x0

    .line 1049
    .local v26, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_0
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    invoke-static/range {v4 .. v11}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 1055
    const/16 v19, 0x0

    .local v19, j:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 1056
    if-eqz v9, :cond_2

    .line 1057
    new-instance v23, Landroid/content/Intent;

    const-string v5, "com.mot.bt.Sms.MESSAGE_STATUS_RECEIVED"

    move-object/from16 v0, v23

    move-object v1, v5

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1058
    .local v23, msgDeliveredIntent:Landroid/content/Intent;
    const-string v5, "SendCmdName"

    move-object/from16 v0, v23

    move-object v1, v5

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v23

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    .end local v23           #msgDeliveredIntent:Landroid/content/Intent;
    :cond_2
    new-instance v24, Landroid/content/Intent;

    const-string v5, "com.mot.bt.Sms.MESSAGE_SENT"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1063
    .local v24, msgSendCompleteIntent:Landroid/content/Intent;
    const-string v5, "SendCmdName"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const/4 v5, 0x1

    sub-int v5, v22, v5

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 1065
    const-string v5, "BtAtSms"

    const-string v6, " IsLastPackageOfSMS  SET"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const-string v5, "IsLastPackageOfSMS"

    const-string v6, "yes"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    const/4 v5, 0x0

    const/high16 v6, 0x4000

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v24

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1051
    .end local v19           #j:I
    .end local v24           #msgSendCompleteIntent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    .line 1052
    .local v18, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 1053
    const/16 v5, 0x1f4

    goto/16 :goto_0

    .line 1070
    .end local v18           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v19       #j:I
    .restart local v24       #msgSendCompleteIntent:Landroid/content/Intent;
    :cond_3
    const-string v5, "IsLastPackageOfSMS"

    const-string v6, "no"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v24

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1075
    .end local v24           #msgSendCompleteIntent:Landroid/content/Intent;
    :cond_4
    const-string v5, "BtAtSms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendIntents size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1076
    invoke-virtual/range {v12 .. v17}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1078
    const/4 v5, -0x1

    goto/16 :goto_0
.end method

.method private timeStampFormat(J)Ljava/lang/String;
    .locals 7
    .parameter "mTimestamp"

    .prologue
    .line 1306
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1307
    .local v0, da:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yy/MM/dd,hh:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v1, myTimeformat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1309
    .local v2, myZoneformat:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 6
    .parameter "context"
    .parameter "index"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 1116
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1117
    .local v1, targetUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1118
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, v1, p3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1119
    return-void
.end method

.method private useChar(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;C)I
    .locals 4
    .parameter "context"
    .parameter "handsfree"
    .parameter "read_char"

    .prologue
    const/16 v1, 0x1b

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 988
    const/16 v0, 0x1a

    if-eq p3, v0, :cond_3

    if-eq p3, v1, :cond_3

    .line 989
    const/16 v0, 0x8

    if-eq p3, v0, :cond_2

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    .line 994
    const/16 v0, 0xd

    if-ne p3, v0, :cond_1

    .line 995
    const-string v0, "\r\n>"

    invoke-virtual {p2, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 996
    iput v2, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    :cond_0
    :goto_0
    move v0, v2

    .line 1014
    :goto_1
    return v0

    .line 998
    :cond_1
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    goto :goto_0

    .line 1001
    :cond_2
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    if-lez v0, :cond_0

    .line 1002
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    .line 1003
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    goto :goto_0

    .line 1009
    :cond_3
    if-ne p3, v1, :cond_4

    .line 1010
    const-string v0, "BtAtSms"

    const-string v1, "Message input canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :goto_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1012
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->sendSms(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    goto :goto_2
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms;->mSmsSndIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms;->mSmsReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    return-void
.end method

.method public register(Landroid/bluetooth/AtParser;)V
    .locals 2
    .parameter "parser"

    .prologue
    .line 1638
    const-string v0, "AtCmgsConcomitant"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$3;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$3;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandConcomitantHandler;)V

    .line 1652
    const-string v0, "+CPMS"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$4;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$4;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1764
    const-string v0, "+CMGR"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$5;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$5;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1859
    const-string v0, "+CMGS"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$6;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$6;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1876
    const-string v0, "+CMGL"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$7;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$7;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1911
    const-string v0, "+CNMI"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$8;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$8;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1934
    const-string v0, "+CMGF"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$9;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$9;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 1968
    return-void
.end method

.method public setupIntentReceiver()V
    .locals 5

    .prologue
    .line 227
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v1, SmsSndfilter:Landroid/content/IntentFilter;
    const-string v3, "com.mot.bt.Sms.MESSAGE_SENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v3, "com.mot.bt.Sms.MESSAGE_STATUS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    :try_start_0
    const-string v3, "vnd.android.cursor.item/sms"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    iget-object v3, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms;->mSmsSndIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, SmsRecieverFilter:Landroid/content/IntentFilter;
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v3, "android.provider.Telephony.SMS_RECEIVED_STORED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms;->mSmsReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    return-void

    .line 232
    .end local v0           #SmsRecieverFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 233
    .local v2, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    goto :goto_0
.end method
