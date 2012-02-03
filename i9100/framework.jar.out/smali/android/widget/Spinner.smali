.class public Landroid/widget/Spinner;
.super Landroid/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Spinner$DropDownAdapter;
    }
.end annotation


# instance fields
.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/app/AlertDialog;

    .line 59
    sget-object v1, Lcom/android/internal/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Spinner;->mPrompt:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method private makeAndAddView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 182
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, v0}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 198
    .end local v0           #child:Landroid/view/View;
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 193
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 196
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 198
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;)V
    .locals 11
    .parameter "child"

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 214
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/widget/Spinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 218
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/Spinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 220
    invoke-virtual {p0}, Landroid/widget/Spinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 223
    iget v8, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 225
    .local v1, childHeightSpec:I
    iget v8, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 229
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 235
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Landroid/view/View;->mMeasuredHeight:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 238
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 240
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 241
    .local v7, width:I
    const/4 v2, 0x0

    .line 242
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 244
    .local v3, childRight:I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 245
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 72
    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 78
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    add-int/2addr v1, v2

    .line 81
    :goto_1
    return v1

    .line 73
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 74
    invoke-direct {p0, v2}, Landroid/widget/Spinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/widget/Spinner;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSpinnerDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method layout(IZ)V
    .locals 8
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v7, 0x0

    .line 128
    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 129
    .local v0, childrenLeft:I
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .line 131
    .local v1, childrenWidth:I
    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v5, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/widget/Spinner;->handleDataChanged()V

    .line 136
    :cond_0
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v5, :cond_1

    .line 137
    invoke-virtual {p0}, Landroid/widget/Spinner;->resetList()V

    .line 167
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v5, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v5, :cond_2

    .line 142
    iget v5, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Landroid/widget/Spinner;->setSelectedPositionInt(I)V

    .line 145
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Spinner;->recycleAllViews()V

    .line 148
    invoke-virtual {p0}, Landroid/widget/Spinner;->removeAllViewsInLayout()V

    .line 151
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 152
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v5}, Landroid/widget/Spinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, sel:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 154
    .local v4, width:I
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v6, v4, 0x2

    sub-int v3, v5, v6

    .line 155
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 158
    iget-object v5, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v5}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 160
    invoke-virtual {p0}, Landroid/widget/Spinner;->invalidate()V

    .line 162
    invoke-virtual {p0}, Landroid/widget/Spinner;->checkSelectionChanged()V

    .line 164
    iput-boolean v7, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 165
    iput-boolean v7, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 166
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Landroid/widget/Spinner;->setNextSelectedPositionInt(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 268
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 269
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/app/AlertDialog;

    .line 271
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/app/AlertDialog;

    .line 93
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 116
    invoke-virtual {p0, v1, v1}, Landroid/widget/Spinner;->layout(IZ)V

    .line 117
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 118
    return-void
.end method

.method public performClick()Z
    .locals 5

    .prologue
    .line 249
    invoke-super {p0}, Landroid/widget/AbsSpinner;->performClick()Z

    move-result v3

    .line 251
    .local v3, handled:Z
    if-nez v3, :cond_1

    .line 252
    const/4 v3, 0x1

    .line 253
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 255
    .local v2, context:Landroid/content/Context;
    new-instance v0, Landroid/widget/Spinner$DropDownAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    .line 257
    .local v0, adapter:Landroid/widget/Spinner$DropDownAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Landroid/widget/Spinner;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 259
    iget-object v4, p0, Landroid/widget/Spinner;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v1, v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Spinner;->mPopup:Landroid/app/AlertDialog;

    .line 264
    .end local v0           #adapter:Landroid/widget/Spinner$DropDownAdapter;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #context:Landroid/content/Context;
    :cond_1
    return v3
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "prompt"

    .prologue
    .line 282
    iput-object p1, p0, Landroid/widget/Spinner;->mPrompt:Ljava/lang/CharSequence;

    .line 283
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .parameter "promptId"

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Spinner;->mPrompt:Ljava/lang/CharSequence;

    .line 291
    return-void
.end method
