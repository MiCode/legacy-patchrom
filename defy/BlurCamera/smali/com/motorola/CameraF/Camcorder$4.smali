.class Lcom/motorola/CameraF/Camcorder$4;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camcorder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1979
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$4;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder$4;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mLocUtil:Lcom/motorola/CameraF/LocUtility;
    invoke-static {v0}, Lcom/motorola/CameraF/Camcorder;->access$4900(Lcom/motorola/CameraF/Camcorder;)Lcom/motorola/CameraF/LocUtility;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/Camcorder$4;->this$0:Lcom/motorola/CameraF/Camcorder;

    #getter for: Lcom/motorola/CameraF/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/CameraF/Camcorder;->access$800(Lcom/motorola/CameraF/Camcorder;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    .line 1982
    return-void
.end method
