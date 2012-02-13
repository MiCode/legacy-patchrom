.class final enum Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;
.super Ljava/lang/Enum;
.source "SimPinUnlockPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimLockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

.field public static final enum REQUIRE_NEW_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

.field public static final enum REQUIRE_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

.field public static final enum REQUIRE_PUK:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

.field public static final enum UNLOCKED:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

.field public static final enum VERIFY_NEW_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

.field public static final enum VERIFY_NEW_PIN_FAILED:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    new-instance v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    const-string v1, "UNLOCKED"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->UNLOCKED:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    .line 91
    new-instance v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    const-string v1, "REQUIRE_PIN"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    .line 92
    new-instance v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    const-string v1, "REQUIRE_PUK"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_PUK:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    .line 93
    new-instance v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    const-string v1, "REQUIRE_NEW_PIN"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    .line 94
    new-instance v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    const-string v1, "VERIFY_NEW_PIN"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->VERIFY_NEW_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    .line 95
    new-instance v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    const-string v1, "VERIFY_NEW_PIN_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    .line 89
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    sget-object v1, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->UNLOCKED:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_PUK:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->VERIFY_NEW_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->$VALUES:[Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;
    .locals 1
    .parameter "name"

    .prologue
    .line 89
    const-class v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->$VALUES:[Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    invoke-virtual {v0}, [Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    return-object v0
.end method
