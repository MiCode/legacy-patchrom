.class Landroid/widget/ZoomButtonsController$5;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ZoomButtonsController;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor <init>(Landroid/widget/ZoomButtonsController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    #calls: Landroid/widget/ZoomButtonsController;->refreshPositioningVariables()V
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$700(Landroid/widget/ZoomButtonsController;)V

    iget-object v0, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    #getter for: Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ZoomButtonsController$5;->this$0:Landroid/widget/ZoomButtonsController;

    #getter for: Landroid/widget/ZoomButtonsController;->mCallback:Landroid/widget/ZoomButtonsController$OnZoomListener;
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$600(Landroid/widget/ZoomButtonsController;)Landroid/widget/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/ZoomButtonsController$OnZoomListener;->onVisibilityChanged(Z)V

    :cond_0
    return-void
.end method
