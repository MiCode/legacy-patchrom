.class Lcom/android/internal/view/menu/IconMenuView$1;
.super Ljava/lang/Object;
.source "IconMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/IconMenuView;->createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/IconMenuView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/IconMenuView;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView$1;->this$0:Lcom/android/internal/view/menu/IconMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView$1;->this$0:Lcom/android/internal/view/menu/IconMenuView;

    #getter for: Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/android/internal/view/menu/IconMenuView;->access$000(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    .line 320
    .local v0, cb:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView$1;->this$0:Lcom/android/internal/view/menu/IconMenuView;

    #getter for: Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/android/internal/view/menu/IconMenuView;->access$000(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 324
    :cond_0
    return-void
.end method
