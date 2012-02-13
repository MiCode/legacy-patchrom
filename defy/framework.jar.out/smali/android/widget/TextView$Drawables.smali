.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Drawables"
.end annotation


# instance fields
.field final mCompoundRect:Landroid/graphics/Rect;

.field mDrawableBottom:Landroid/graphics/drawable/Drawable;

.field mDrawableHeightLeft:I

.field mDrawableHeightRight:I

.field mDrawableLeft:Landroid/graphics/drawable/Drawable;

.field mDrawablePadding:I

.field mDrawableRight:Landroid/graphics/drawable/Drawable;

.field mDrawableSizeBottom:I

.field mDrawableSizeLeft:I

.field mDrawableSizeRight:I

.field mDrawableSizeTop:I

.field mDrawableTop:Landroid/graphics/drawable/Drawable;

.field mDrawableWidthBottom:I

.field mDrawableWidthTop:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    return-void
.end method
