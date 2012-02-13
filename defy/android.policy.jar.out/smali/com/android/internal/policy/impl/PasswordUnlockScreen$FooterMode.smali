.class final enum Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;
.super Ljava/lang/Enum;
.source "PasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FooterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

.field public static final enum ForgotLockPassword:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

.field public static final enum Normal:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

.field public static final enum VerifyUnlocked:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    const-string v1, "ForgotLockPassword"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->ForgotLockPassword:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    const-string v1, "VerifyUnlocked"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    sget-object v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->ForgotLockPassword:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->$VALUES:[Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->$VALUES:[Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    return-object v0
.end method
