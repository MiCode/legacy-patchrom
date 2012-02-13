.class public final enum Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
.super Ljava/lang/Enum;
.source "CdmaPhoneCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaPhoneCallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field public static final enum CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field public static final enum IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field public static final enum SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field public static final enum THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 56
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    const-string v1, "SINGLE_ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 57
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    const-string v1, "THRWAY_ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 58
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    const-string v1, "CONF_CALL"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->$VALUES:[Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .locals 1
    .parameter "name"

    .prologue
    .line 54
    const-class v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->$VALUES:[Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0}, [Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    return-object v0
.end method
