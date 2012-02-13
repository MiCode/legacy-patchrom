.class public final enum Lcom/android/internal/telephony/IccCardApplication$AppState;
.super Ljava/lang/Enum;
.source "IccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCardApplication$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCardApplication$AppState;

.field public static final enum APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field public static final enum APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field public static final enum APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field public static final enum APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field public static final enum APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

.field public static final enum APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppState;

    const-string v1, "APPSTATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCardApplication$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppState;

    const-string v1, "APPSTATE_DETECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCardApplication$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplication$AppState;

    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppState;

    const-string v1, "APPSTATE_PIN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/IccCardApplication$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppState;

    const-string v1, "APPSTATE_PUK"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccCardApplication$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplication$AppState;

    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppState;

    const-string v1, "APPSTATE_SUBSCRIPTION_PERSO"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/IccCardApplication$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    new-instance v0, Lcom/android/internal/telephony/IccCardApplication$AppState;

    const-string v1, "APPSTATE_READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardApplication$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplication$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplication$AppState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->$VALUES:[Lcom/android/internal/telephony/IccCardApplication$AppState;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardApplication$AppState;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/IccCardApplication$AppState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCardApplication$AppState;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->$VALUES:[Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCardApplication$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCardApplication$AppState;

    return-object v0
.end method


# virtual methods
.method isAppNotReady()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAppReady()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPinRequired()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPukRequired()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSubscriptionPersoEnabled()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
