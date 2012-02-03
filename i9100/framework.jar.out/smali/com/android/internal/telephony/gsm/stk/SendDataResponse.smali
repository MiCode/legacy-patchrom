.class Lcom/android/internal/telephony/gsm/stk/SendDataResponse;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# instance fields
.field emptySpaceInTxBuf:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "emptySpaceInTxBuf"

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 347
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;->emptySpaceInTxBuf:I

    .line 348
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .parameter "buf"

    .prologue
    .line 335
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 336
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 337
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 338
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;->emptySpaceInTxBuf:I

    if-gez v1, :cond_0

    .line 339
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;->emptySpaceInTxBuf:I

    .line 341
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;->emptySpaceInTxBuf:I

    const/16 v2, 0xfe

    if-le v1, v2, :cond_1

    .line 342
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;->emptySpaceInTxBuf:I

    .line 344
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/SendDataResponse;->emptySpaceInTxBuf:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 345
    return-void
.end method
