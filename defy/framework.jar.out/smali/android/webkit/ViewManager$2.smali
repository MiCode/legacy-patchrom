.class Landroid/webkit/ViewManager$2;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/ViewManager;->postResetStateAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/ViewManager;


# direct methods
.method constructor <init>(Landroid/webkit/ViewManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/webkit/ViewManager$2;->this$0:Landroid/webkit/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/ViewManager$2;->this$0:Landroid/webkit/ViewManager;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/ViewManager;->mReadyToDraw:Z
    invoke-static {v0, v1}, Landroid/webkit/ViewManager;->access$402(Landroid/webkit/ViewManager;Z)Z

    return-void
.end method
