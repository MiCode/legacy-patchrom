.class Landroid/hardware/SensorManager$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SensorManager;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/hardware/SensorManager$1;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    iget-object v0, p0, Landroid/hardware/SensorManager$1;->this$0:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->onRotationChanged(I)V

    return-void
.end method
