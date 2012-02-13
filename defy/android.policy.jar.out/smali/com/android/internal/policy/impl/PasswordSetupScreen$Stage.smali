.class public final enum Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;
.super Ljava/lang/Enum;
.source "PasswordSetupScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordSetupScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

.field public static final enum ConfirmWrong:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

.field public static final enum Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

.field public static final enum NeedToConfirm:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v5, 0x10404a5

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    const-string v1, "Introduction"

    const v3, 0x1040499

    const v4, 0x104049a

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    new-instance v6, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    const-string v7, "NeedToConfirm"

    const v9, 0x104049b

    const v10, 0x104049c

    const v11, 0x10404af

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->NeedToConfirm:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    new-instance v9, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    const-string v10, "ConfirmWrong"

    const v12, 0x104049d

    const v13, 0x104049e

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->ConfirmWrong:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    sget-object v1, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->Introduction:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->NeedToConfirm:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->ConfirmWrong:Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->$VALUES:[Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "hintInAlpha"
    .parameter "hintInNumeric"
    .parameter "nextButtonText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->alphaHint:I

    iput p4, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->numericHint:I

    iput p5, p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->buttonText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->$VALUES:[Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/PasswordSetupScreen$Stage;

    return-object v0
.end method
