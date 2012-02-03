.class public Landroid/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePaddingRight:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkResource:I

.field private mCheckMarkWidth:I

.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-object v3, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 64
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 69
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 204
    .local v0, populated:Z
    if-nez v0, :cond_0

    .line 205
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 207
    :cond_0
    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 191
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 195
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 197
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->invalidate()V

    .line 199
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 180
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 181
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 184
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    .local v0, checkMarkDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    move-result v5

    and-int/lit8 v3, v5, 0x70

    .line 155
    .local v3, verticalGravity:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 157
    .local v1, height:I
    const/4 v4, 0x0

    .line 159
    .local v4, y:I
    sparse-switch v3, :sswitch_data_0

    .line 168
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v2

    .line 169
    .local v2, right:I
    iget v5, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v5, v2, v5

    iget v6, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    sub-int v6, v2, v6

    add-int v7, v4, v1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    .end local v1           #height:I
    .end local v2           #right:I
    .end local v3           #verticalGravity:I
    .end local v4           #y:I
    :cond_0
    return-void

    .line 161
    .restart local v1       #height:I
    .restart local v3       #verticalGravity:I
    .restart local v4       #y:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v5

    sub-int v4, v5, v1

    .line 162
    goto :goto_0

    .line 164
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v4, v5, 0x2

    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCheckMarkDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 103
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-ne p1, v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    iput p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 124
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_0
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 128
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 129
    sget-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 130
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 132
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 133
    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v1, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 134
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 138
    :goto_1
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 140
    return-void

    :cond_1
    move v0, v2

    .line 128
    goto :goto_0

    .line 136
    :cond_2
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 90
    iput-boolean p1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    .line 91
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 93
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    .line 146
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
