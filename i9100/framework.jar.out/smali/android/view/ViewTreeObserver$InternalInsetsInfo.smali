.class public final Landroid/view/ViewTreeObserver$InternalInsetsInfo;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewTreeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalInsetsInfo"
.end annotation


# static fields
.field public static final TOUCHABLE_INSETS_CONTENT:I = 0x1

.field public static final TOUCHABLE_INSETS_FRAME:I = 0x0

.field public static final TOUCHABLE_INSETS_VISIBLE:I = 0x2


# instance fields
.field public final contentInsets:Landroid/graphics/Rect;

.field mTouchableInsets:I

.field public final visibleInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 177
    if-nez p1, :cond_0

    move v3, v5

    .line 189
    :goto_0
    return v3

    .line 180
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v2, v0

    .line 181
    .local v2, other:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    iget-object v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 182
    goto :goto_0

    .line 184
    :cond_1
    iget-object v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    .line 185
    goto :goto_0

    .line 187
    :cond_2
    iget v3, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    iget v4, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_0

    .line 188
    .end local v2           #other:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v5

    .line 189
    goto :goto_0
.end method

.method public getTouchableInsets()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    return v0
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 168
    .local v0, givenContent:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 169
    .local v1, givenVisible:Landroid/graphics/Rect;
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 172
    iput v2, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    .line 173
    return-void
.end method

.method set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 194
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 195
    iget-object v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 196
    iget v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    iput v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    .line 197
    return-void
.end method

.method public setTouchableInsets(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 157
    iput p1, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    .line 158
    return-void
.end method
