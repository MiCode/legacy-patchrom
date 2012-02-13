.class Lcom/motorola/CameraF/Camcorder$MainHandler$1;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camcorder$MainHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/CameraF/Camcorder$MainHandler;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camcorder$MainHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/motorola/CameraF/Camcorder$MainHandler$1;->this$1:Lcom/motorola/CameraF/Camcorder$MainHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder$MainHandler$1;->this$1:Lcom/motorola/CameraF/Camcorder$MainHandler;

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    #calls: Lcom/motorola/CameraF/Camcorder;->closeCamera()V
    invoke-static {v0}, Lcom/motorola/CameraF/Camcorder;->access$400(Lcom/motorola/CameraF/Camcorder;)V

    .line 238
    iget-object v0, p0, Lcom/motorola/CameraF/Camcorder$MainHandler$1;->this$1:Lcom/motorola/CameraF/Camcorder$MainHandler;

    iget-object v0, v0, Lcom/motorola/CameraF/Camcorder$MainHandler;->this$0:Lcom/motorola/CameraF/Camcorder;

    invoke-virtual {v0}, Lcom/motorola/CameraF/Camcorder;->finish()V

    .line 239
    return-void
.end method
