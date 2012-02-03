.class public Lcom/android/internal/widget/EditStyledText$HorizontalLineSpan;
.super Landroid/text/style/ImageSpan;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HorizontalLineSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/EditStyledText;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/EditStyledText;ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter "color"
    .parameter "view"

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$HorizontalLineSpan;->this$0:Lcom/android/internal/widget/EditStyledText;

    .line 1590
    new-instance v0, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/EditStyledText$HorizontalLineDrawable;-><init>(Lcom/android/internal/widget/EditStyledText;ILandroid/view/View;)V

    invoke-direct {p0, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1591
    return-void
.end method
