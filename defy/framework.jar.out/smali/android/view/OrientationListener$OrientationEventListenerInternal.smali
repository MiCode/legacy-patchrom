.class Landroid/view/OrientationListener$OrientationEventListenerInternal;
.super Landroid/view/OrientationEventListener;
.source "OrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrientationEventListenerInternal"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/OrientationListener;


# direct methods
.method constructor <init>(Landroid/view/OrientationListener;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Landroid/view/OrientationListener$OrientationEventListenerInternal;->this$0:Landroid/view/OrientationListener;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/view/OrientationListener;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "rate"

    .prologue
    iput-object p1, p0, Landroid/view/OrientationListener$OrientationEventListenerInternal;->this$0:Landroid/view/OrientationListener;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Landroid/view/OrientationListener$OrientationEventListenerInternal;->registerListener(Landroid/view/OrientationListener;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    iget-object v0, p0, Landroid/view/OrientationListener$OrientationEventListenerInternal;->this$0:Landroid/view/OrientationListener;

    invoke-virtual {v0, p1}, Landroid/view/OrientationListener;->onOrientationChanged(I)V

    return-void
.end method
