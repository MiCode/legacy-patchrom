.class public final enum Lcom/android/internal/telephony/IccCardStatus$CardState;
.super Ljava/lang/Enum;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCardStatus$CardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCardStatus$CardState;

.field public static final enum CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

.field public static final enum CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

.field public static final enum CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/IccCardStatus$CardState;

    const-string v1, "CARDSTATE_ABSENT"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    new-instance v0, Lcom/android/internal/telephony/IccCardStatus$CardState;

    const-string v1, "CARDSTATE_PRESENT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    new-instance v0, Lcom/android/internal/telephony/IccCardStatus$CardState;

    const-string v1, "CARDSTATE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCardStatus$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->$VALUES:[Lcom/android/internal/telephony/IccCardStatus$CardState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardStatus$CardState;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/IccCardStatus$CardState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCardStatus$CardState;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->$VALUES:[Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCardStatus$CardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCardStatus$CardState;

    return-object v0
.end method


# virtual methods
.method isCardError()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCardPresent()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
