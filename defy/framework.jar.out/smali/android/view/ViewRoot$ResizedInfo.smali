.class Landroid/view/ViewRoot$ResizedInfo;
.super Ljava/lang/Object;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizedInfo"
.end annotation


# instance fields
.field coveredInsets:Landroid/graphics/Rect;

.field newConfig:Landroid/content/res/Configuration;

.field final synthetic this$0:Landroid/view/ViewRoot;

.field visibleInsets:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/view/ViewRoot;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/ViewRoot$ResizedInfo;->this$0:Landroid/view/ViewRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
