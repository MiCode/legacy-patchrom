.class public final enum Lcom/android/internal/telephony/DataConnectionTracker$State;
.super Ljava/lang/Enum;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnectionTracker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnectionTracker$State;

.field public static final enum CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field public static final enum CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field public static final enum DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field public static final enum FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field public static final enum IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field public static final enum INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field public static final enum SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnectionTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$State;

    const-string v1, "INITING"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnectionTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnectionTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$State;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnectionTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DataConnectionTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$State;

    const-string v1, "DISCONNECTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$State;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->$VALUES:[Lcom/android/internal/telephony/DataConnectionTracker$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->$VALUES:[Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnectionTracker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method
