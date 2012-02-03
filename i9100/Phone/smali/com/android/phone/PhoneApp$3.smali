.class synthetic Lcom/android/phone/PhoneApp$3;
.super Ljava/lang/Object;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$State:[I

.field static final synthetic $SwitchMap$com$android$phone$PhoneApp$WakeState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1678
    invoke-static {}, Lcom/android/internal/telephony/Phone$State;->values()[Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    .line 1149
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneApp$WakeState;->values()[Lcom/android/phone/PhoneApp$WakeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    :try_start_2
    sget-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->PARTIAL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SCREEN_BRIGHT:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/phone/PhoneApp$3;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    .line 1678
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
