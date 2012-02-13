.class public final enum Lcom/motorola/internal/widget/LockPinView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/widget/LockPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/internal/widget/LockPinView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/internal/widget/LockPinView$DisplayMode;

.field public static final enum Animate:Lcom/motorola/internal/widget/LockPinView$DisplayMode;

.field public static final enum Correct:Lcom/motorola/internal/widget/LockPinView$DisplayMode;

.field public static final enum Wrong:Lcom/motorola/internal/widget/LockPinView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/motorola/internal/widget/LockPinView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/internal/widget/LockPinView$DisplayMode;->Correct:Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    new-instance v0, Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/motorola/internal/widget/LockPinView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/internal/widget/LockPinView$DisplayMode;->Animate:Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    new-instance v0, Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/motorola/internal/widget/LockPinView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/internal/widget/LockPinView$DisplayMode;->Wrong:Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    sget-object v1, Lcom/motorola/internal/widget/LockPinView$DisplayMode;->Correct:Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/internal/widget/LockPinView$DisplayMode;->Animate:Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/internal/widget/LockPinView$DisplayMode;->Wrong:Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/internal/widget/LockPinView$DisplayMode;->$VALUES:[Lcom/motorola/internal/widget/LockPinView$DisplayMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/internal/widget/LockPinView$DisplayMode;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/internal/widget/LockPinView$DisplayMode;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/internal/widget/LockPinView$DisplayMode;->$VALUES:[Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    invoke-virtual {v0}, [Lcom/motorola/internal/widget/LockPinView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/internal/widget/LockPinView$DisplayMode;

    return-object v0
.end method
