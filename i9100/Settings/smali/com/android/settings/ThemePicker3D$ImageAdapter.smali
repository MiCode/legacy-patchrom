.class Lcom/android/settings/ThemePicker3D$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemePicker3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ThemePicker3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private holder:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mthemeloader:Lcom/android/settings/ThemePreviewGetter;

.field themeappnames:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ThemePicker3D;


# direct methods
.method public constructor <init>(Lcom/android/settings/ThemePicker3D;Landroid/content/Context;[Ljava/lang/String;Lcom/android/settings/ThemePicker3D$Notified;I)V
    .locals 1
    .parameter
    .parameter "c"
    .parameter "mThemeValues"
    .parameter "cb"
    .parameter "currentIndex"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->this$0:Lcom/android/settings/ThemePicker3D;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 331
    iput-object p2, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->mContext:Landroid/content/Context;

    .line 332
    if-eqz p3, :cond_0

    .line 333
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->themeappnames:[Ljava/lang/String;

    .line 334
    iput-object p3, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->themeappnames:[Ljava/lang/String;

    .line 335
    new-instance v0, Lcom/android/settings/ThemePreviewGetter;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/settings/ThemePreviewGetter;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/android/settings/ThemePicker3D$Notified;I)V

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->mthemeloader:Lcom/android/settings/ThemePreviewGetter;

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->themeappnames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 352
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 356
    move-object v1, p2

    .line 357
    .local v1, vi:Landroid/view/View;
    if-nez v1, :cond_1

    .line 358
    new-instance v1, Landroid/widget/ImageView;

    .end local v1           #vi:Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 360
    .restart local v1       #vi:Landroid/view/View;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->holder:Landroid/widget/ImageView;

    .line 361
    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->holder:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    iget-object v4, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->initsingleitemwidth:I
    invoke-static {v4}, Lcom/android/settings/ThemePicker3D;->access$1200(Lcom/android/settings/ThemePicker3D;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->this$0:Lcom/android/settings/ThemePicker3D;

    #getter for: Lcom/android/settings/ThemePicker3D;->initsingleitemheight:I
    invoke-static {v5}, Lcom/android/settings/ThemePicker3D;->access$1300(Lcom/android/settings/ThemePicker3D;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->holder:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 367
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->holder:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 368
    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->mthemeloader:Lcom/android/settings/ThemePreviewGetter;

    iget-object v3, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->themeappnames:[Ljava/lang/String;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->holder:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/settings/ThemePreviewGetter;->fetchDrawable(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 370
    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->holder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 371
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 372
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->holder:Landroid/widget/ImageView;

    return-object v2

    .line 365
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->holder:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public updateCurrentIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D$ImageAdapter;->mthemeloader:Lcom/android/settings/ThemePreviewGetter;

    invoke-virtual {v0, p1}, Lcom/android/settings/ThemePreviewGetter;->updateCurrentIndex(I)V

    .line 341
    return-void
.end method
