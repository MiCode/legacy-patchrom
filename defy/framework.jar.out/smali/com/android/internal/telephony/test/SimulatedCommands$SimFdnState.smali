.class final enum Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;
.super Ljava/lang/Enum;
.source "SimulatedCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/test/SimulatedCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimFdnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field public static final enum NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field public static final enum REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field public static final enum REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field public static final enum SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    new-instance v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    const-string v1, "REQUIRE_PIN2"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    new-instance v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    const-string v1, "REQUIRE_PUK2"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    new-instance v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    const-string v1, "SIM_PERM_LOCKED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->$VALUES:[Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->$VALUES:[Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    return-object v0
.end method
