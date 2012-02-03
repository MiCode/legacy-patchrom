.class final enum Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
.super Ljava/lang/Enum;
.source "PukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimLockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

.field public static final enum REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

.field public static final enum REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

.field public static final enum VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

.field public static final enum VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    const-string v1, "REQUIRE_PUK"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 100
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    const-string v1, "REQUIRE_NEW_PIN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 101
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    const-string v1, "VERIFY_NEW_PIN"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 102
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    const-string v1, "VERIFY_NEW_PIN_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->$VALUES:[Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
    .locals 1
    .parameter "name"

    .prologue
    .line 98
    const-class v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->$VALUES:[Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    return-object v0
.end method
