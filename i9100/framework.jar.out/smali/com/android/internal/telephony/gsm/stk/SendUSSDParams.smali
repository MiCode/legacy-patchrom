.class Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;
.super Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field dcsCode:I

.field ussdLength:I

.field ussdString:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;[B)V
    .locals 3
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "ussdString"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    .line 84
    array-length v1, p3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdLength:I

    .line 85
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdLength:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdString:[B

    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdLength:I

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdString:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p3, v2

    aput-byte v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p3, v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->dcsCode:I

    .line 90
    return-void
.end method
