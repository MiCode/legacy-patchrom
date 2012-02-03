.class public Lcom/android/internal/telephony/gsm/SuppServiceNotification;
.super Ljava/lang/Object;
.source "SuppServiceNotification.java"


# static fields
.field public static final MO_CODE_CALL_DEFLECTED:I = 0x8

.field public static final MO_CODE_CALL_FORWARDED:I = 0x2

.field public static final MO_CODE_CALL_IS_WAITING:I = 0x3

.field public static final MO_CODE_CLIR_SUPPRESSION_REJECTED:I = 0x7

.field public static final MO_CODE_CUG_CALL:I = 0x4

.field public static final MO_CODE_INCOMING_CALLS_BARRED:I = 0x6

.field public static final MO_CODE_OUTGOING_CALLS_BARRED:I = 0x5

.field public static final MO_CODE_SOME_CF_ACTIVE:I = 0x1

.field public static final MO_CODE_UNCONDITIONAL_CF_ACTIVE:I = 0x0

.field public static final MT_CODE_ADDITIONAL_CALL_FORWARDED:I = 0xa

.field public static final MT_CODE_CALL_CONNECTED_ECT:I = 0x8

.field public static final MT_CODE_CALL_CONNECTING_ECT:I = 0x7

.field public static final MT_CODE_CALL_ON_HOLD:I = 0x2

.field public static final MT_CODE_CALL_RETRIEVED:I = 0x3

.field public static final MT_CODE_CUG_CALL:I = 0x1

.field public static final MT_CODE_DEFLECTED_CALL:I = 0x9

.field public static final MT_CODE_FORWARDED_CALL:I = 0x0

.field public static final MT_CODE_FORWARD_CHECK_RECEIVED:I = 0x6

.field public static final MT_CODE_MULTI_PARTY_CALL:I = 0x4

.field public static final MT_CODE_ON_HOLD_CALL_RELEASED:I = 0x5


# instance fields
.field public code:I

.field public index:I

.field public notificationType:I

.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-nez v1, :cond_0

    const-string v1, " originated "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, " terminated "

    goto :goto_0
.end method
