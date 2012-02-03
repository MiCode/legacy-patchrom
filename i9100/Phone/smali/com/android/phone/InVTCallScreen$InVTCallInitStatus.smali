.class final enum Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
.super Ljava/lang/Enum;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InVTCallInitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field public static final enum VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 457
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 458
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "VOICEMAIL_NUMBER_MISSING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 459
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "POWER_OFF"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 460
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "EMERGENCY_ONLY"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 461
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "PHONE_NOT_IN_USE"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 462
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "NO_PHONE_NUMBER_SUPPLIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 463
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "DIALED_MMI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 464
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "CALL_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 465
    new-instance v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    const-string v1, "OUT_OF_3G_NETWORK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 456
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->$VALUES:[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

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
    .line 456
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 1
    .parameter

    .prologue
    .line 456
    const-class v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->$VALUES:[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0}, [Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    return-object v0
.end method
