.class Lcom/android/internal/view/menu/IconMenuView$MoreOnClickRunnable;
.super Ljava/lang/Object;
.source "IconMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/IconMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoreOnClickRunnable"
.end annotation


# instance fields
.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView$MoreOnClickRunnable;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView$MoreOnClickRunnable;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    .local v0, cb:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView$MoreOnClickRunnable;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V

    :cond_0
    return-void
.end method
