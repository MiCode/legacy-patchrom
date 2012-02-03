.class final Landroid/view/VelocityTracker$Pointer;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pointer"
.end annotation


# instance fields
.field public generation:I

.field public id:I

.field public next:Landroid/view/VelocityTracker$Pointer;

.field public final pastTime:[J

.field public final pastX:[F

.field public final pastY:[F

.field public xVelocity:F

.field public yVelocity:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/VelocityTracker$Pointer;->pastX:[F

    .line 70
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/VelocityTracker$Pointer;->pastY:[F

    .line 71
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/view/VelocityTracker$Pointer;->pastTime:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VelocityTracker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/view/VelocityTracker$Pointer;-><init>()V

    return-void
.end method
