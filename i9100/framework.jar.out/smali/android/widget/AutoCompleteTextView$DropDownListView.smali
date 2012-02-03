.class Landroid/widget/AutoCompleteTextView$DropDownListView;
.super Landroid/widget/ListView;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# instance fields
.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1547
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1548
    return-void
.end method

.method static synthetic access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1510
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1601
    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1581
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1591
    const/4 v0, 0x1

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1571
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "isScrap"

    .prologue
    .line 1559
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1561
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1562
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 1565
    :cond_0
    return-object v1
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1
    .parameter "extraSpace"

    .prologue
    .line 1605
    invoke-super {p0, p1}, Landroid/widget/ListView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1617
    .local v0, res:[I
    return-object v0
.end method
