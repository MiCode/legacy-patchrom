.class Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
.super Lcom/android/internal/telephony/gsm/stk/ValueObject;
.source "CommandDetails.java"


# instance fields
.field public destinationId:I

.field public sourceId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ValueObject;-><init>()V

    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    return-object v0
.end method
