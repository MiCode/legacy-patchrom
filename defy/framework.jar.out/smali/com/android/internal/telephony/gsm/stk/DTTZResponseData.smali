.class Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# instance fields
.field private calendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0
    .parameter "cal"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;->calendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 14
    .parameter "buf"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .local v6, tag:I
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v7, 0x8

    new-array v3, v7, [B

    .local v3, data:[B
    const/4 v7, 0x0

    const/4 v8, 0x7

    aput-byte v8, v3, v7

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;->calendar:Ljava/util/Calendar;

    if-nez v7, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;->calendar:Ljava/util/Calendar;

    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    rem-int/lit8 v7, v7, 0x64

    int-to-byte v2, v7

    .local v2, btmp:B
    div-int/lit8 v7, v2, 0xa

    int-to-byte v7, v7

    aput-byte v7, v3, v9

    aget-byte v7, v3, v9

    rem-int/lit8 v8, v2, 0xa

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v9

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-byte v2, v7

    div-int/lit8 v7, v2, 0xa

    int-to-byte v7, v7

    aput-byte v7, v3, v10

    aget-byte v7, v3, v10

    rem-int/lit8 v8, v2, 0xa

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v10

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-byte v2, v7

    div-int/lit8 v7, v2, 0xa

    int-to-byte v7, v7

    aput-byte v7, v3, v12

    aget-byte v7, v3, v12

    rem-int/lit8 v8, v2, 0xa

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v12

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-byte v2, v7

    div-int/lit8 v7, v2, 0xa

    int-to-byte v7, v7

    aput-byte v7, v3, v13

    aget-byte v7, v3, v13

    rem-int/lit8 v8, v2, 0xa

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v13

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-byte v2, v7

    div-int/lit8 v7, v2, 0xa

    int-to-byte v7, v7

    aput-byte v7, v3, v11

    aget-byte v7, v3, v11

    rem-int/lit8 v8, v2, 0xa

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v11

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-byte v2, v7

    const/4 v7, 0x6

    div-int/lit8 v8, v2, 0xa

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    const/4 v7, 0x6

    aget-byte v8, v3, v7

    rem-int/lit8 v9, v2, 0xa

    shl-int/lit8 v9, v9, 0x4

    int-to-byte v9, v9

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    const/4 v7, 0x7

    const/4 v8, -0x1

    aput-byte v8, v3, v7

    move-object v0, v3

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v1, v0, v4

    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
