.class Landroid/webkit/ViewManager$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ViewManager;

.field final synthetic val$sView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/webkit/ViewManager;Landroid/view/SurfaceView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/ViewManager$1;->this$0:Landroid/webkit/ViewManager;

    iput-object p2, p0, Landroid/webkit/ViewManager$1;->val$sView:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/ViewManager$1;->val$sView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method
