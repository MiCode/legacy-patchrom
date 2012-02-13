.class public Lcom/android/phone/VoiceQualityListItem;
.super Landroid/widget/TwoLineListItem;
.source "VoiceQualityListItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field protected static final CHECKED_STATE_SET:[I


# instance fields
.field protected m_BasePaddingRight:I

.field protected m_CheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field protected m_CheckMarkWidth:I

.field protected m_Checked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/android/phone/VoiceQualityListItem;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/VoiceQualityListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/VoiceQualityListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TwoLineListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/phone/VoiceQualityListItem;->m_BasePaddingRight:I

    .line 56
    invoke-virtual {p0, v4}, Lcom/android/phone/VoiceQualityListItem;->setWillNotDraw(Z)V

    .line 58
    sget-object v3, Landroid/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 62
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/phone/VoiceQualityListItem;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 68
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Lcom/android/phone/VoiceQualityListItem;->setChecked(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/TwoLineListItem;->drawableStateChanged()V

    .line 157
    iget-object v1, p0, Lcom/android/phone/VoiceQualityListItem;->m_CheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityListItem;->getDrawableState()[I

    move-result-object v0

    .line 160
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/android/phone/VoiceQualityListItem;->m_CheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 161
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityListItem;->invalidate()V

    .line 163
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_Checked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 144
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TwoLineListItem;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 146
    .local v0, drawabaleState:[I
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityListItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lcom/android/phone/VoiceQualityListItem;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/android/phone/VoiceQualityListItem;->mergeDrawableStates([I[I)[I

    .line 150
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/widget/TwoLineListItem;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_CheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    .local v0, checkMarkDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 130
    .local v1, height:I
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityListItem;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v3, v4, 0x2

    .line 131
    .local v3, y:I
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityListItem;->getWidth()I

    move-result v2

    .line 133
    .local v2, right:I
    iget v4, p0, Lcom/android/phone/VoiceQualityListItem;->m_CheckMarkWidth:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/android/phone/VoiceQualityListItem;->m_BasePaddingRight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/phone/VoiceQualityListItem;->m_BasePaddingRight:I

    sub-int v5, v2, v5

    add-int v6, v3, v1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    .end local v1           #height:I
    .end local v2           #right:I
    .end local v3           #y:I
    :cond_0
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 89
    if-eqz p1, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_CheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_CheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_CheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceQualityListItem;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityListItem;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 99
    sget-object v0, Lcom/android/phone/VoiceQualityListItem;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 100
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceQualityListItem;->setMinimumHeight(I)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_CheckMarkWidth:I

    .line 103
    iget v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_CheckMarkWidth:I

    iget v1, p0, Lcom/android/phone/VoiceQualityListItem;->m_BasePaddingRight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/VoiceQualityListItem;->mPaddingRight:I

    .line 104
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityListItem;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 105
    iput-object p1, p0, Lcom/android/phone/VoiceQualityListItem;->m_CheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityListItem;->requestLayout()V

    .line 113
    return-void

    :cond_1
    move v0, v2

    .line 98
    goto :goto_0

    .line 109
    :cond_2
    iget v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_BasePaddingRight:I

    iput v0, p0, Lcom/android/phone/VoiceQualityListItem;->mPaddingRight:I

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_Checked:Z

    if-eq v0, p1, :cond_0

    .line 74
    iput-boolean p1, p0, Lcom/android/phone/VoiceQualityListItem;->m_Checked:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/VoiceQualityListItem;->refreshDrawableState()V

    .line 77
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
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TwoLineListItem;->setPadding(IIII)V

    .line 119
    iget v0, p0, Lcom/android/phone/VoiceQualityListItem;->mPaddingRight:I

    iput v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_BasePaddingRight:I

    .line 120
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/phone/VoiceQualityListItem;->m_Checked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/VoiceQualityListItem;->setChecked(Z)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
