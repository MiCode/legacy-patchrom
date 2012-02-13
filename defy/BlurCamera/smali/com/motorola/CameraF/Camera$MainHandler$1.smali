.class Lcom/motorola/CameraF/Camera$MainHandler$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camera$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/CameraF/Camera$MainHandler;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camera$MainHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 2630
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$MainHandler$1;->this$1:Lcom/motorola/CameraF/Camera$MainHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MainHandler$1;->this$1:Lcom/motorola/CameraF/Camera$MainHandler;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    #calls: Lcom/motorola/CameraF/Camera;->closeCamera()V
    invoke-static {v0}, Lcom/motorola/CameraF/Camera;->access$1500(Lcom/motorola/CameraF/Camera;)V

    .line 2632
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$MainHandler$1;->this$1:Lcom/motorola/CameraF/Camera$MainHandler;

    iget-object v0, v0, Lcom/motorola/CameraF/Camera$MainHandler;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v0}, Lcom/motorola/CameraF/Camera;->finish()V

    .line 2633
    return-void
.end method
