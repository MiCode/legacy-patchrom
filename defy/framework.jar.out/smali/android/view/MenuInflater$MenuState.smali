.class Landroid/view/MenuInflater$MenuState;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemNumericShortcut:C

.field private itemTitle:Ljava/lang/String;

.field private itemTitleCondensed:Ljava/lang/String;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/view/MenuInflater;


# direct methods
.method public constructor <init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .locals 0
    .parameter
    .parameter "menu"

    .prologue
    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    invoke-virtual {p0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1
    .parameter "shortcutString"

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    if-lt v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    check-cast p1, Lcom/android/internal/view/menu/MenuItemImpl;

    .end local p1
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_0
    return-void

    .restart local p1
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addItem()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 6

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .local v0, subMenu:Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/MenuInflater;->access$000(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->MenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "attrs"

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/view/MenuInflater;->access$000(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->MenuItem:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    const/4 v3, 0x5

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .local v1, category:I
    const/4 v3, 0x6

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .local v2, order:I
    const/high16 v3, -0x1

    and-int/2addr v3, v1

    const v4, 0xffff

    and-int/2addr v4, v2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/String;

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v3

    iput-char v3, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v3

    iput-char v3, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    :goto_0
    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    :goto_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    const/4 v3, 0x4

    iget-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    iget-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v5, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    goto :goto_1
.end method

.method public resetGroup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
