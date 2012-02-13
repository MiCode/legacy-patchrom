.class public Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnlineAlbumAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mProviderIconCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

.field private rowResID:I

.field private socialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "OnlineAlbumAdapter"

    sput-object v0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "rowResID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, socialEntries:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->context:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->socialEntries:Ljava/util/List;

    .line 45
    iput p2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->rowResID:I

    .line 47
    invoke-static {}, Lcom/motorola/blur/util/os/MyLooper;->singleton()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/blur/util/cache/ProviderIconCache;->singleton(Landroid/content/Context;Landroid/os/Looper;)Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->mProviderIconCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    .line 48
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->socialEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->socialEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->getItem(I)Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 71
    iget-object v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->socialEntries:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    .line 73
    .local v5, socialEntry:Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;
    iget-object v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->context:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 76
    .local v3, inflater:Landroid/view/LayoutInflater;
    iget v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->rowResID:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 78
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_0

    .line 82
    const/4 v7, 0x0

    .line 142
    :goto_0
    return-object v7

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->getItem(I)Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;

    move-result-object v0

    .line 86
    .local v0, entry:Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;
    if-nez v0, :cond_1

    .line 92
    :cond_1
    const v7, 0x7f0b00d9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 93
    .local v1, entryImage:Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 99
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 102
    iget-object v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->mProviderIconCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    if-eqz v7, :cond_5

    .line 103
    iget-object v7, p0, Lcom/motorola/blur/quickupload/OnlineAlbumAdapter;->mProviderIconCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    invoke-virtual {v0}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->getBlurID()I

    move-result v8

    int-to-long v8, v8

    const-string v10, "_thumb.png"

    invoke-virtual {v7, v8, v9, v10}, Lcom/motorola/blur/util/cache/ProviderIconCache;->getIconSync(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 104
    .local v4, providerIcon:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_4

    .line 105
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    .end local v4           #providerIcon:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    const v7, 0x7f0b00da

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 127
    .local v2, entryText:Landroid/widget/CheckedTextView;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v0}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->getSocialName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v5}, Lcom/motorola/blur/quickupload/OnlineAlbumSocialEntry;->isSelected()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 133
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_3
    :goto_2
    move-object v7, v6

    .line 142
    goto :goto_0

    .line 107
    .end local v2           #entryText:Landroid/widget/CheckedTextView;
    .restart local v4       #providerIcon:Landroid/graphics/Bitmap;
    :cond_4
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 110
    .end local v4           #providerIcon:Landroid/graphics/Bitmap;
    :cond_5
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 117
    :cond_6
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 137
    .restart local v2       #entryText:Landroid/widget/CheckedTextView;
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2
.end method
