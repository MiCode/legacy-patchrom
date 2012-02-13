.class public final enum Lcom/android/internal/telephony/DataConnectionTracker$Activity;
.super Ljava/lang/Enum;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnectionTracker$Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field public static final enum DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field public static final enum DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field public static final enum DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field public static final enum DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field public static final enum NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    const-string v1, "DATAIN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    const-string v1, "DATAOUT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    const-string v1, "DATAINANDOUT"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    const-string v1, "DORMANT"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->$VALUES:[Lcom/android/internal/telephony/DataConnectionTracker$Activity;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->$VALUES:[Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnectionTracker$Activity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method
