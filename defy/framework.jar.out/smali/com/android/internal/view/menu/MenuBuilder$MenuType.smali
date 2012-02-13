.class Lcom/android/internal/view/menu/MenuBuilder$MenuType;
.super Ljava/lang/Object;
.source "MenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuType"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mMenuType:I

.field private mMenuView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/MenuView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;I)V
    .locals 0
    .parameter
    .parameter "menuType"

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MenuBuilder$MenuType;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/view/menu/MenuBuilder$MenuType;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method getInflater()Landroid/view/LayoutInflater;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuBuilder;->access$000(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/view/menu/MenuBuilder;->THEME_RES_FOR_TYPE:[I

    iget v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v0, wrappedContext:Landroid/content/Context;
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mInflater:Landroid/view/LayoutInflater;

    .end local v0           #wrappedContext:Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mInflater:Landroid/view/LayoutInflater;

    return-object v1
.end method

.method getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 6
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    sget-object v3, Lcom/android/internal/view/menu/MenuBuilder;->LAYOUT_RES_FOR_TYPE:[I

    iget v4, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    aget v3, v3, v4

    if-nez v3, :cond_0

    move-object v3, v5

    :goto_0
    return-object v3

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuView;

    move-object v1, v3

    .local v1, menuView:Lcom/android/internal/view/menu/MenuView;
    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lcom/android/internal/view/menu/MenuBuilder;->LAYOUT_RES_FOR_TYPE:[I

    iget v5, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #menuView:Lcom/android/internal/view/menu/MenuView;
    check-cast v1, Lcom/android/internal/view/menu/MenuView;

    .restart local v1       #menuView:Lcom/android/internal/view/menu/MenuView;
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;I)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$100(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$100(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$100(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .end local v2           #view:Landroid/view/View;
    :cond_1
    monitor-exit p0

    move-object v3, v1

    goto :goto_0

    .end local v1           #menuView:Lcom/android/internal/view/menu/MenuView;
    :cond_2
    move-object v1, v5

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method hasMenuView()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
