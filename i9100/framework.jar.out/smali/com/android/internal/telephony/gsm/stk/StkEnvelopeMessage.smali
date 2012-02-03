.class public Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;
.super Ljava/lang/Object;
.source "StkEnvelopeMessage.java"


# instance fields
.field additionalInfo:[B

.field destinationID:I

.field event:I

.field sourceID:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 1
    .parameter "event"
    .parameter "sourceID"
    .parameter "destinationID"
    .parameter "additionalInfo"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->event:I

    .line 22
    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->sourceID:I

    .line 23
    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->destinationID:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->additionalInfo:[B

    .line 27
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->event:I

    .line 28
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->sourceID:I

    .line 29
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->destinationID:I

    .line 30
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->additionalInfo:[B

    .line 31
    return-void
.end method
