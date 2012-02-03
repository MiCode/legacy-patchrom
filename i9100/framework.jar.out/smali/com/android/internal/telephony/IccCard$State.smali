.class public final enum Lcom/android/internal/telephony/IccCard$State;
.super Ljava/lang/Enum;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCard$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCard$State;

.field public static final enum ABSENT:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum READY:Lcom/android/internal/telephony/IccCard$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 145
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 147
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PIN_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "PUK_REQUIRED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "NETWORK_LOCKED"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 150
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/IccCard$State;

    const-string v1, "NOT_READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    .line 144
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCard$State;->$VALUES:[Lcom/android/internal/telephony/IccCard$State;

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
    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 144
    const-class v0, Lcom/android/internal/telephony/IccCard$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/IccCard$State;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->$VALUES:[Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCard$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method


# virtual methods
.method public isPinLocked()Z
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
