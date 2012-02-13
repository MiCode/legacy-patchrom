.class final enum Lcom/android/phone/InCallScreen$InCallInitStatus;
.super Ljava/lang/Enum;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InCallInitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallScreen$InCallInitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum CALL_FORWARD_ROAMING_NOT_SUPPORTED:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum OTA_NETWORK_NOT_SUPPORTED:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field public static final enum VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 388
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 389
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "VOICEMAIL_NUMBER_MISSING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 390
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "POWER_OFF"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 391
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "EMERGENCY_ONLY"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 392
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "OUT_OF_SERVICE"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 393
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "PHONE_NOT_IN_USE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 394
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "NO_PHONE_NUMBER_SUPPLIED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 395
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "DIALED_MMI"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 396
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "CALL_FAILED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 397
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "OTA_NETWORK_NOT_SUPPORTED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->OTA_NETWORK_NOT_SUPPORTED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 398
    new-instance v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    const-string v1, "CALL_FORWARD_ROAMING_NOT_SUPPORTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FORWARD_ROAMING_NOT_SUPPORTED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 387
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->OTA_NETWORK_NOT_SUPPORTED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FORWARD_ROAMING_NOT_SUPPORTED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->$VALUES:[Lcom/android/phone/InCallScreen$InCallInitStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 387
    const-class v0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/InCallScreen$InCallInitStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 1

    .prologue
    .line 387
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->$VALUES:[Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v0}, [Lcom/android/phone/InCallScreen$InCallInitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallScreen$InCallInitStatus;

    return-object v0
.end method
