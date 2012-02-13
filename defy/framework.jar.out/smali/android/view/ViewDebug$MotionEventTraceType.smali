.class public final enum Landroid/view/ViewDebug$MotionEventTraceType;
.super Ljava/lang/Enum;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MotionEventTraceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/ViewDebug$MotionEventTraceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/ViewDebug$MotionEventTraceType;

.field public static final enum DISPATCH:Landroid/view/ViewDebug$MotionEventTraceType;

.field public static final enum ON_INTERCEPT:Landroid/view/ViewDebug$MotionEventTraceType;

.field public static final enum ON_TOUCH:Landroid/view/ViewDebug$MotionEventTraceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/view/ViewDebug$MotionEventTraceType;

    const-string v1, "DISPATCH"

    invoke-direct {v0, v1, v2}, Landroid/view/ViewDebug$MotionEventTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/ViewDebug$MotionEventTraceType;->DISPATCH:Landroid/view/ViewDebug$MotionEventTraceType;

    new-instance v0, Landroid/view/ViewDebug$MotionEventTraceType;

    const-string v1, "ON_INTERCEPT"

    invoke-direct {v0, v1, v3}, Landroid/view/ViewDebug$MotionEventTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/ViewDebug$MotionEventTraceType;->ON_INTERCEPT:Landroid/view/ViewDebug$MotionEventTraceType;

    new-instance v0, Landroid/view/ViewDebug$MotionEventTraceType;

    const-string v1, "ON_TOUCH"

    invoke-direct {v0, v1, v4}, Landroid/view/ViewDebug$MotionEventTraceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/view/ViewDebug$MotionEventTraceType;->ON_TOUCH:Landroid/view/ViewDebug$MotionEventTraceType;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/ViewDebug$MotionEventTraceType;

    sget-object v1, Landroid/view/ViewDebug$MotionEventTraceType;->DISPATCH:Landroid/view/ViewDebug$MotionEventTraceType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/ViewDebug$MotionEventTraceType;->ON_INTERCEPT:Landroid/view/ViewDebug$MotionEventTraceType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/ViewDebug$MotionEventTraceType;->ON_TOUCH:Landroid/view/ViewDebug$MotionEventTraceType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/ViewDebug$MotionEventTraceType;->$VALUES:[Landroid/view/ViewDebug$MotionEventTraceType;

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

.method public static valueOf(Ljava/lang/String;)Landroid/view/ViewDebug$MotionEventTraceType;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/view/ViewDebug$MotionEventTraceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewDebug$MotionEventTraceType;

    return-object p0
.end method

.method public static values()[Landroid/view/ViewDebug$MotionEventTraceType;
    .locals 1

    .prologue
    sget-object v0, Landroid/view/ViewDebug$MotionEventTraceType;->$VALUES:[Landroid/view/ViewDebug$MotionEventTraceType;

    invoke-virtual {v0}, [Landroid/view/ViewDebug$MotionEventTraceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewDebug$MotionEventTraceType;

    return-object v0
.end method
