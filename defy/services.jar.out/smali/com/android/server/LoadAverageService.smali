.class public Lcom/android/server/LoadAverageService;
.super Landroid/app/Service;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LoadAverageService$LoadView;,
        Lcom/android/server/LoadAverageService$Stats;
    }
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v1, -0x2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v2, Lcom/android/server/LoadAverageService$LoadView;

    invoke-direct {v2, p0, p0}, Lcom/android/server/LoadAverageService$LoadView;-><init>(Lcom/android/server/LoadAverageService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/LoadAverageService;->mView:Landroid/view/View;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7df

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "Load Average"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/server/LoadAverageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManagerImpl;

    .local v6, wm:Landroid/view/WindowManagerImpl;
    iget-object v1, p0, Lcom/android/server/LoadAverageService;->mView:Landroid/view/View;

    invoke-virtual {v6, v1, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/server/LoadAverageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/server/LoadAverageService;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LoadAverageService;->mView:Landroid/view/View;

    return-void
.end method
