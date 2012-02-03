.class public Lcom/android/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;,
        Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;,
        Lcom/android/internal/view/menu/MenuBuilder$Callback;,
        Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT_RES_FOR_TYPE:[I = null

.field static final LAYOUT_RES_FOR_TYPE:[I = null

.field private static final LOGTAG:Ljava/lang/String; = "MenuBuilder"

.field public static final NUM_TYPES:I = 0x3

.field static final THEME_RES_FOR_TYPE:[I = null

.field public static final TYPE_DIALOG:I = 0x2

.field public static final TYPE_EXPANDED:I = 0x1

.field public static final TYPE_ICON:I = 0x0

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field private mHeaderTitleId:I

.field mHeaderView:Landroid/view/View;

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

.field private mOptionalIconsVisible:Z

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->THEME_RES_FOR_TYPE:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->LAYOUT_RES_FOR_TYPE:[I

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->ITEM_LAYOUT_RES_FOR_TYPE:[I

    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    .line 72
    nop

    :array_0
    .array-data 0x4
        0xa9t 0x0t 0x3t 0x1t
        0xaat 0x0t 0x3t 0x1t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 79
    :array_1
    .array-data 0x4
        0x2dt 0x0t 0x9t 0x1t
        0x28t 0x0t 0x9t 0x1t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 86
    :array_2
    .array-data 0x4
        0x2ct 0x0t 0x9t 0x1t
        0x43t 0x0t 0x9t 0x1t
        0x43t 0x0t 0x9t 0x1t
    .end array-data

    .line 92
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitleId:I

    .line 163
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 279
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 281
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 287
    iput-boolean v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 289
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v2, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 291
    return-void

    :cond_0
    move v0, v1

    .line 289
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/MenuBuilder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getNumIconMenuItemsShown()I

    move-result v0

    return v0
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 7
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 374
    invoke-static {p3}, Lcom/android/internal/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 376
    .local v5, ordering:I
    new-instance v0, Lcom/android/internal/view/menu/MenuItemImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuItemImpl;-><init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;)V

    .line 378
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/android/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 384
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 386
    return-object v0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 4
    .parameter
    .parameter "ordering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 736
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 737
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 738
    add-int/lit8 v2, v0, 0x1

    .line 742
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_1
    return v2

    .line 735
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 742
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getNumIconMenuItemsShown()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, parent:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 343
    .local v0, expandedMenuView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #parent:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 347
    .end local v0           #expandedMenuView:Landroid/view/View;
    .restart local v1       #parent:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0, v4, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/IconMenuView;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getNumActualItemsShown()I

    move-result v2

    return v2
.end method

.method private static getOrdering(I)I
    .locals 3
    .parameter "categoryOrder"

    .prologue
    .line 664
    const/high16 v1, -0x1

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 666
    .local v0, index:I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 667
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    :cond_1
    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private onItemsChanged(Z)V
    .locals 4
    .parameter "cleared"

    .prologue
    .line 906
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v3, :cond_2

    .line 907
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 910
    .local v1, menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 911
    aget-object v3, v1, v0

    if-eqz v3, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 912
    aget-object v3, v1, v0

    #getter for: Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->access$200(Lcom/android/internal/view/menu/MenuBuilder$MenuType;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuView;

    .line 913
    .local v2, menuView:Lcom/android/internal/view/menu/MenuView;
    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuView;->updateChildren(Z)V

    .line 910
    .end local v2           #menuView:Lcom/android/internal/view/menu/MenuView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 917
    .end local v0           #i:I
    .end local v1           #menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    :cond_2
    return-void
.end method

.method private refreshShortcuts(ZZ)V
    .locals 4
    .parameter "shortcutsVisible"
    .parameter "qwertyMode"

    .prologue
    .line 686
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 687
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 689
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->refreshShortcuts(ZZ)V

    .line 693
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews(ZZ)V

    .line 686
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 695
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .parameter "index"
    .parameter "updateChildrenOnMenuViews"

    .prologue
    .line 485
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 489
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .parameter "titleRes"
    .parameter "title"
    .parameter "iconRes"
    .parameter "icon"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 956
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 958
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 959
    iput-object p5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 962
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 963
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 986
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 987
    return-void

    .line 965
    :cond_0
    if-lez p1, :cond_3

    .line 966
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 969
    iput p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitleId:I

    .line 975
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 976
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 982
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 971
    :cond_3
    if-eqz p2, :cond_1

    .line 972
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 977
    :cond_4
    if-eqz p4, :cond_2

    .line 978
    iput-object p4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 398
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 390
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 15
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 427
    iget-object v12, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 428
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    move-object v0, v9

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 430
    .local v8, lri:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    move v5, v12

    .line 432
    .local v5, N:I
    :goto_0
    and-int/lit8 v12, p7, 0x1

    if-nez v12, :cond_0

    .line 433
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 436
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 437
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 438
    .local v10, ri:Landroid/content/pm/ResolveInfo;
    new-instance v11, Landroid/content/Intent;

    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v12, :cond_3

    move-object/from16 v12, p6

    :goto_2
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 440
    .local v11, rintent:Landroid/content/Intent;
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 443
    invoke-virtual {v10, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    invoke-virtual {v10, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v12

    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v7

    .line 446
    .local v7, item:Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v12, :cond_1

    .line 447
    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v7, p8, v12

    .line 436
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 430
    .end local v5           #N:I
    .end local v6           #i:I
    .end local v7           #item:Landroid/view/MenuItem;
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    .end local v11           #rintent:Landroid/content/Intent;
    :cond_2
    const/4 v12, 0x0

    move v5, v12

    goto :goto_0

    .line 438
    .restart local v5       #N:I
    .restart local v6       #i:I
    .restart local v10       #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v12, p5, v12

    goto :goto_2

    .line 451
    .end local v10           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    return v5
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 410
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "title"

    .prologue
    .line 414
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 415
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 416
    .local v1, subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V

    .line 418
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 507
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 508
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 497
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 499
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clearHeader()V

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 501
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 502
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 947
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 948
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 949
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 951
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 952
    return-void
.end method

.method public clearMenuViews()V
    .locals 4

    .prologue
    .line 355
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;
    invoke-static {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->access$202(Lcom/android/internal/view/menu/MenuBuilder$MenuType;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 355
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    :goto_1
    if-ltz v0, :cond_3

    .line 362
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 363
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->clearMenuViews()V

    .line 366
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->clearItemViews()V

    .line 361
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 368
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 898
    return-void
.end method

.method final close(Z)V
    .locals 1
    .parameter "allMenusAreClosing"

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    .line 890
    .local v0, callback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    if-eqz v0, :cond_0

    .line 891
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 893
    :cond_0
    return-void
.end method

.method public findGroupIndex(I)I
    .locals 1
    .parameter "group"

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .parameter "group"
    .parameter "start"

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 617
    .local v2, size:I
    if-gez p2, :cond_0

    .line 618
    const/4 p2, 0x0

    .line 621
    :cond_0
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 622
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 624
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    move v3, v0

    .line 629
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_1
    return v3

    .line 621
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .parameter "id"

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v3

    .line 581
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 582
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 583
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    move-object v4, v1

    .line 594
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_1
    return-object v4

    .line 585
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 586
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 588
    .local v2, possibleItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 589
    goto :goto_1

    .line 581
    .end local v2           #possibleItem:Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 600
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 601
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 602
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    move v3, v0

    .line 607
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_1
    return v3

    .line 600
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(ILandroid/view/KeyEvent;)Ljava/util/List;

    move-result-object v2

    .line 817
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    if-nez v2, :cond_0

    move-object v7, v10

    .line 845
    .end local p0
    :goto_0
    return-object v7

    .line 821
    .restart local p0
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 822
    .local v3, metaState:I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 824
    .local v4, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 827
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 828
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/MenuItemImpl;

    move-object v7, p0

    goto :goto_0

    .line 831
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 834
    .local v5, qwerty:Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 835
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    move v6, v7

    .line 836
    .local v6, shortcutChar:C
    :goto_1
    iget-object v7, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v7, v7, v9

    if-ne v6, v7, :cond_3

    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_5

    :cond_3
    iget-object v7, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v8, 0x2

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_4

    and-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_5

    :cond_4
    if-eqz v5, :cond_2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    const/16 v7, 0x43

    if-ne p1, v7, :cond_2

    :cond_5
    move-object v7, v1

    .line 842
    goto :goto_0

    .line 835
    .end local v6           #shortcutChar:C
    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    move v6, v7

    goto :goto_1

    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_7
    move-object v7, v10

    .line 845
    goto :goto_0
.end method

.method findItemsWithShortcutForKey(ILandroid/view/KeyEvent;)Ljava/util/List;
    .locals 13
    .parameter "keyCode"
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/KeyEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x43

    .line 768
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v7

    .line 769
    .local v7, qwerty:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .line 770
    .local v5, metaState:I
    new-instance v6, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v6}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 772
    .local v6, possibleChars:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 774
    .local v2, isKeyCodeMapped:Z
    if-nez v2, :cond_0

    if-eq p1, v12, :cond_0

    .line 775
    const/4 v10, 0x0

    .line 799
    :goto_0
    return-object v10

    .line 778
    :cond_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 780
    .local v4, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 781
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 782
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 783
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 784
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(ILandroid/view/KeyEvent;)Ljava/util/List;

    move-result-object v9

    .line 786
    .local v9, subMenuItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 788
    .end local v9           #subMenuItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    if-eqz v7, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v10

    move v8, v10

    .line 789
    .local v8, shortcutChar:C
    :goto_2
    and-int/lit8 v10, v5, 0x5

    if-nez v10, :cond_3

    if-eqz v8, :cond_3

    iget-object v10, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x0

    aget-char v10, v10, v11

    if-eq v8, v10, :cond_2

    iget-object v10, v6, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v11, 0x2

    aget-char v10, v10, v11

    if-eq v8, v10, :cond_2

    if-eqz v7, :cond_3

    const/16 v10, 0x8

    if-ne v8, v10, :cond_3

    if-ne p1, v12, :cond_3

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 796
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 788
    .end local v8           #shortcutChar:C
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v10

    move v8, v10

    goto :goto_2

    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_5
    move-object v10, v4

    .line 799
    goto :goto_0
.end method

.method public getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderTitleId()I
    .locals 1

    .prologue
    .line 1055
    iget v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitleId:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method public getMenuAdapter(I)Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;
    .locals 1
    .parameter "menuType"

    .prologue
    .line 1093
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;I)V

    return-object v0
.end method

.method getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    .locals 2
    .parameter "menuType"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;-><init>(Lcom/android/internal/view/menu/MenuBuilder;I)V

    aput-object v1, v0, p1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "menuType"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 323
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    .line 328
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1101
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 0

    .prologue
    .line 1072
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 929
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 943
    :goto_0
    return-object v3

    .line 932
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 934
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 936
    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 937
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 938
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 941
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 943
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 569
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 570
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 571
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 572
    const/4 v3, 0x1

    .line 576
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_1
    return v3

    .line 569
    .restart local v1       #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    .end local v1           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 642
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 925
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 926
    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 6
    .parameter "item"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 854
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    move-object v2, v0

    .line 856
    .local v2, itemImpl:Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 876
    .end local p0
    :goto_0
    return v3

    .line 860
    .restart local p0
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->invoke()Z

    move-result v1

    .line 862
    .local v1, invoked:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 863
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 865
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    if-eqz v3, :cond_3

    .line 867
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-interface {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    move v1, v5

    :cond_3
    :goto_1
    move v3, v1

    .line 876
    goto :goto_0

    :cond_4
    move v1, v4

    .line 867
    goto :goto_1

    .line 871
    .restart local p0
    :cond_5
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_3

    .line 872
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 746
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .line 748
    .local v1, item:Lcom/android/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    .line 750
    .local v0, handled:Z
    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 754
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 755
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 758
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 6
    .parameter "group"

    .prologue
    const/4 v5, 0x0

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 461
    .local v0, i:I
    if-ltz v0, :cond_1

    .line 462
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 463
    .local v1, maxRemovable:I
    const/4 v2, 0x0

    .local v2, numRemoved:I
    move v3, v2

    .line 464
    .end local v2           #numRemoved:I
    .local v3, numRemoved:I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 466
    invoke-direct {p0, v0, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2           #numRemoved:I
    .restart local v3       #numRemoved:I
    goto :goto_0

    .line 470
    .end local v3           #numRemoved:I
    .restart local v2       #numRemoved:I
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 472
    .end local v1           #maxRemovable:I
    .end local v2           #numRemoved:I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 456
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    .line 494
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "inState"

    .prologue
    .line 1123
    const-string v3, "android:views"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;

    .line 1127
    .local v2, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 1128
    .local v1, menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    const/4 v0, 0x2

    .end local p0
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 1129
    aget-object v3, v1, v0

    if-nez v3, :cond_1

    .line 1128
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1133
    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1134
    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_1

    .line 1137
    :cond_2
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 1105
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1107
    .local v2, viewStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mMenuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    .line 1108
    .local v1, menuTypes:[Lcom/android/internal/view/menu/MenuBuilder$MenuType;
    const/4 v0, 0x2

    .end local p0
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 1109
    aget-object v3, v1, v0

    if-nez v3, :cond_1

    .line 1108
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1113
    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->hasMenuView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1114
    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_1

    .line 1118
    :cond_2
    const-string v3, "android:views"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1119
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 295
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menuInfo"

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1084
    return-void
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 511
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 513
    .local v2, group:I
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 514
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 515
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 516
    .local v1, curItem:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 517
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 514
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 521
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 524
    .end local v1           #curItem:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 527
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 529
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 530
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 531
    .local v2, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 532
    invoke-virtual {v2, p3}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 533
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 529
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    .end local v2           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 556
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 559
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 560
    .local v2, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 561
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 558
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v2           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 539
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 544
    .local v0, N:I
    const/4 v1, 0x0

    .line 545
    .local v1, changedAtLeastOneItem:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 546
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 547
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 548
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 545
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .end local v3           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 553
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "iconRes"

    .prologue
    const/4 v2, 0x0

    .line 1033
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1034
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1021
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1022
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "titleRes"

    .prologue
    const/4 v2, 0x0

    .line 1009
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1010
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 997
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 998
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 6
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1045
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1046
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1097
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1098
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .parameter "isQwerty"

    .prologue
    .line 646
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    .line 648
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->refreshShortcuts(ZZ)V

    .line 649
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 2
    .parameter "shortcutsVisible"

    .prologue
    const/4 v1, 0x1

    .line 706
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 713
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    .line 712
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->refreshShortcuts(ZZ)V

    goto :goto_0

    .line 708
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
