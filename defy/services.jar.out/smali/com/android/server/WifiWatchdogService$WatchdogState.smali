.class final enum Lcom/android/server/WifiWatchdogService$WatchdogState;
.super Ljava/lang/Enum;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WatchdogState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/WifiWatchdogService$WatchdogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/WifiWatchdogService$WatchdogState;

.field public static final enum CHECKING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

.field public static final enum IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

.field public static final enum SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

.field public static final enum SWITCHING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/WifiWatchdogService$WatchdogState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiWatchdogService$WatchdogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

    new-instance v0, Lcom/android/server/WifiWatchdogService$WatchdogState;

    const-string v1, "SLEEP"

    invoke-direct {v0, v1, v3}, Lcom/android/server/WifiWatchdogService$WatchdogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    new-instance v0, Lcom/android/server/WifiWatchdogService$WatchdogState;

    const-string v1, "CHECKING_AP"

    invoke-direct {v0, v1, v4}, Lcom/android/server/WifiWatchdogService$WatchdogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->CHECKING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    new-instance v0, Lcom/android/server/WifiWatchdogService$WatchdogState;

    const-string v1, "SWITCHING_AP"

    invoke-direct {v0, v1, v5}, Lcom/android/server/WifiWatchdogService$WatchdogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->SWITCHING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->CHECKING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->SWITCHING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->$VALUES:[Lcom/android/server/WifiWatchdogService$WatchdogState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/WifiWatchdogService$WatchdogState;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/server/WifiWatchdogService$WatchdogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/WifiWatchdogService$WatchdogState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/WifiWatchdogService$WatchdogState;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->$VALUES:[Lcom/android/server/WifiWatchdogService$WatchdogState;

    invoke-virtual {v0}, [Lcom/android/server/WifiWatchdogService$WatchdogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/WifiWatchdogService$WatchdogState;

    return-object v0
.end method
