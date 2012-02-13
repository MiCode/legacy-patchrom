.class public final enum Lcom/android/internal/telephony/Connection$PostDialState;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostDialState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Connection$PostDialState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

.field public static final enum WILD:Lcom/android/internal/telephony/Connection$PostDialState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "WAIT"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "WILD"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    new-instance v0, Lcom/android/internal/telephony/Connection$PostDialState;

    const-string v1, "PAUSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$PostDialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->$VALUES:[Lcom/android/internal/telephony/Connection$PostDialState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Connection$PostDialState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->$VALUES:[Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Connection$PostDialState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method
