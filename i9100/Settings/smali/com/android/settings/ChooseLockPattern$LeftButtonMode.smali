.class final enum Lcom/android/settings/ChooseLockPattern$LeftButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/ChooseLockPattern$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

.field public static final enum Cancel:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

.field public static final enum CancelDisabled:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

.field public static final enum Gone:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

.field public static final enum Retry:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

.field public static final enum RetryDisabled:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    new-instance v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    const-string v1, "Cancel"

    const v2, 0x7f0800dd

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Cancel:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    .line 159
    new-instance v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    const-string v1, "CancelDisabled"

    const v2, 0x7f0800dd

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->CancelDisabled:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    .line 160
    new-instance v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    const-string v1, "Retry"

    const v2, 0x7f080348

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Retry:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    .line 161
    new-instance v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    const-string v1, "RetryDisabled"

    const v2, 0x7f080348

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->RetryDisabled:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    .line 162
    new-instance v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    const-string v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Gone:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    .line 157
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Cancel:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->CancelDisabled:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Retry:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->RetryDisabled:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Gone:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->$VALUES:[Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "text"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->text:I

    .line 171
    iput-boolean p4, p0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->enabled:Z

    .line 172
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPattern$LeftButtonMode;
    .locals 1
    .parameter

    .prologue
    .line 157
    const-class v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/ChooseLockPattern$LeftButtonMode;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->$VALUES:[Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    return-object v0
.end method
