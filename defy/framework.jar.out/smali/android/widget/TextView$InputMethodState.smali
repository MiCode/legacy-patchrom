.class Landroid/widget/TextView$InputMethodState;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputMethodState"
.end annotation


# instance fields
.field mBatchEditNesting:I

.field mChangedDelta:I

.field mChangedEnd:I

.field mChangedStart:I

.field mContentChanged:Z

.field mCursorChanged:Z

.field mCursorRectInWindow:Landroid/graphics/Rect;

.field mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

.field mSelectionModeChanged:Z

.field final mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

.field mTmpOffset:[F

.field mTmpRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/TextView$InputMethodState;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    return-void
.end method
