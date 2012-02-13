.class Landroid/view/Display$CompatibleDisplay;
.super Landroid/view/Display;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompatibleDisplay"
.end annotation


# instance fields
.field private final mMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method private constructor <init>(ILandroid/util/DisplayMetrics;)V
    .locals 0
    .parameter "displayId"
    .parameter "metrics"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/Display;-><init>(I)V

    iput-object p2, p0, Landroid/view/Display$CompatibleDisplay;->mMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/util/DisplayMetrics;Landroid/view/Display$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/Display$CompatibleDisplay;-><init>(ILandroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/Display$CompatibleDisplay;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/Display$CompatibleDisplay;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
