.class public final enum Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;
.super Ljava/lang/Enum;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils$CdmaOtaScreenState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OtaScreenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

.field public static final enum OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

.field public static final enum OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

.field public static final enum OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

.field public static final enum OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

.field public static final enum OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1136
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    const-string v1, "OTA_STATUS_UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1137
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    const-string v1, "OTA_STATUS_ACTIVATION"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1138
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    const-string v1, "OTA_STATUS_LISTENING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1139
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    const-string v1, "OTA_STATUS_PROGRESS"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1140
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    const-string v1, "OTA_STATUS_SUCCESS_FAILURE_DLG"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1135
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->$VALUES:[Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

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
    .line 1135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;
    .locals 1
    .parameter "name"

    .prologue
    .line 1135
    const-class v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;
    .locals 1

    .prologue
    .line 1135
    sget-object v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->$VALUES:[Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    invoke-virtual {v0}, [Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    return-object v0
.end method
