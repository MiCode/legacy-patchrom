.class public Lcom/android/settings/ActivityPicker$PickAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PickAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 279
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 280
    iput-object p2, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    .line 281
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 301
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 308
    if-nez p2, :cond_0

    .line 309
    iget-object v3, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03003a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/ActivityPicker$PickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    .line 313
    .local v1, item:Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 314
    .local v2, textView:Landroid/widget/TextView;
    iget-object v3, v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v3, v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 317
    return-object p2
.end method
