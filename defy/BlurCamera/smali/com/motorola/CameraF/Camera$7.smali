.class Lcom/motorola/CameraF/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/Camera;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/Camera;

.field final synthetic val$deleteButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/Camera;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5745
    iput-object p1, p0, Lcom/motorola/CameraF/Camera$7;->this$0:Lcom/motorola/CameraF/Camera;

    iput-object p2, p0, Lcom/motorola/CameraF/Camera$7;->val$deleteButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 5747
    iget-object v0, p0, Lcom/motorola/CameraF/Camera$7;->val$deleteButton:Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/CameraF/Camera$7;->this$0:Lcom/motorola/CameraF/Camera;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5748
    return-void
.end method
