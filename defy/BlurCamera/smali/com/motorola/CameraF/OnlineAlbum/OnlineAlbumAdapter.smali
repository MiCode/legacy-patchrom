.class public Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnlineAlbumAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private rowResID:I

.field private socialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "OnlineAlbumAdapter"

    sput-object v0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
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
            "Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, socialEntries:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->socialEntries:Ljava/util/List;

    .line 36
    iput p2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->rowResID:I

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->socialEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->socialEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->getItem(I)Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, "getView() - entry "

    .line 56
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    .line 57
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->TAG:Ljava/lang/String;

    const-string v8, "getView() - Enter"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->socialEntries:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    .line 62
    .local v4, socialEntry:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;
    iget-object v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->context:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 65
    .local v3, inflater:Landroid/view/LayoutInflater;
    iget v7, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->rowResID:I

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 67
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_2

    .line 68
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_1

    .line 69
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->TAG:Ljava/lang/String;

    const-string v8, "getView() - view == NULL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v7, v9

    .line 132
    :goto_0
    return-object v7

    .line 74
    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->getItem(I)Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;

    move-result-object v0

    .line 75
    .local v0, entry:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;
    if-nez v0, :cond_3

    .line 76
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    .line 77
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->TAG:Ljava/lang/String;

    const-string v8, "getView() - entry == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_3
    const v7, 0x7f0e001d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 82
    .local v1, entryImage:Landroid/widget/ImageView;
    if-eqz v1, :cond_a

    .line 84
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 85
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->TAG:Ljava/lang/String;

    const-string v8, "getView - ImageView != null from inflating"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_4
    invoke-virtual {v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getType()I

    move-result v7

    if-ne v7, v10, :cond_8

    .line 90
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_5

    .line 91
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getView() - entry "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getSocialName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is a social account"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_5
    sget-object v7, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getBlurID()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 97
    .local v5, uriProviderIcon:Landroid/net/Uri;
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 116
    .end local v5           #uriProviderIcon:Landroid/net/Uri;
    :cond_6
    :goto_1
    const v7, 0x7f0e001e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 117
    .local v2, entryText:Landroid/widget/CheckedTextView;
    if-eqz v2, :cond_7

    .line 119
    invoke-virtual {v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getSocialName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_7
    invoke-virtual {v4}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->isSelected()Z

    move-result v7

    if-ne v7, v10, :cond_b

    .line 124
    invoke-virtual {v2, v10}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_2
    move-object v7, v6

    .line 132
    goto :goto_0

    .line 101
    .end local v2           #entryText:Landroid/widget/CheckedTextView;
    :cond_8
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_9

    .line 102
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getView() - entry "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSocialEntry;->getSocialName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is NOT a social account"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_9
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 111
    :cond_a
    sget-boolean v7, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_6

    .line 112
    sget-object v7, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->TAG:Ljava/lang/String;

    const-string v8, "getView - ImageView == NULL from inflating"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    .restart local v2       #entryText:Landroid/widget/CheckedTextView;
    :cond_b
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2
.end method
