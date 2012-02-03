.class Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;
.super Lcom/android/internal/telephony/gsm/stk/CommandParams;
.source "CommandParams.java"


# instance fields
.field events:[I

.field numberOfEvents:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I[I)V
    .locals 0
    .parameter "cmdDet"
    .parameter "numberOfEvents"
    .parameter "events"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    .line 62
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;->numberOfEvents:I

    .line 63
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;->events:[I

    .line 64
    return-void
.end method
