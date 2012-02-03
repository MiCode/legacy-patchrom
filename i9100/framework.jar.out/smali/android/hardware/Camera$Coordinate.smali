.class public Landroid/hardware/Camera$Coordinate;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Coordinate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/Camera;

.field public xCoordinate:I

.field public yCoordinate:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;II)V
    .locals 0
    .parameter
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1112
    iput-object p1, p0, Landroid/hardware/Camera$Coordinate;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    iput p2, p0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    .line 1114
    iput p3, p0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    .line 1115
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 1125
    instance-of v2, p1, Landroid/hardware/Camera$Coordinate;

    if-nez v2, :cond_0

    move v2, v4

    .line 1129
    :goto_0
    return v2

    .line 1128
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/hardware/Camera$Coordinate;

    move-object v1, v0

    .line 1129
    .local v1, c:Landroid/hardware/Camera$Coordinate;
    iget v2, p0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    iget v3, v1, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    iget v3, v1, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method
