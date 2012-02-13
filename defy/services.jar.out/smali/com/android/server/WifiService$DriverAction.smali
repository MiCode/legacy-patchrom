.class final enum Lcom/android/server/WifiService$DriverAction;
.super Ljava/lang/Enum;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DriverAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/WifiService$DriverAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/WifiService$DriverAction;

.field public static final enum DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

.field public static final enum NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/WifiService$DriverAction;

    const-string v1, "DRIVER_UNLOAD"

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$DriverAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    new-instance v0, Lcom/android/server/WifiService$DriverAction;

    const-string v1, "NO_DRIVER_UNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/android/server/WifiService$DriverAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/WifiService$DriverAction;

    sget-object v1, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/WifiService$DriverAction;->$VALUES:[Lcom/android/server/WifiService$DriverAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/WifiService$DriverAction;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/server/WifiService$DriverAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/WifiService$DriverAction;

    return-object p0
.end method

.method public static values()[Lcom/android/server/WifiService$DriverAction;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/WifiService$DriverAction;->$VALUES:[Lcom/android/server/WifiService$DriverAction;

    invoke-virtual {v0}, [Lcom/android/server/WifiService$DriverAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/WifiService$DriverAction;

    return-object v0
.end method
