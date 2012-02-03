.class public Lcom/android/settings/flipfont/FontListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontListAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field private droidSansFont:Landroid/graphics/Typeface;

.field public mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/Vector;

.field public mFontPackageNames:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;

.field public mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTypefaceFiles:Ljava/util/Vector;

.field public mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 112
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 49
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 58
    new-instance v4, Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v4}, Lcom/android/settings/flipfont/TypefaceFinder;-><init>()V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    .line 61
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    .line 64
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    .line 67
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    .line 70
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    .line 85
    iput-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 113
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 114
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iput-object p1, v4, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    .line 115
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, fontPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 123
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 124
    const-string v4, "com.monotype.android.font."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 126
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 127
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v4, v5, v1}, Lcom/android/settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 122
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settings/flipfont/TypefaceFinder;->getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1           #fontPackageName:Ljava/lang/String;
    .end local v2           #i:I
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/DroidSans.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 138
    return-void

    .line 131
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "font package not found, just use default font, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 8
    .parameter "typeface"
    .parameter "fontPackageName"

    .prologue
    .line 255
    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 256
    .local v4, start_pos:I
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 257
    .local v1, end_pos:I
    if-gez v1, :cond_0

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 260
    :cond_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, loadTypeface:Ljava/lang/String;
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 264
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ttf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    return-object v5

    .line 265
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 267
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "FontListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "font package not found, just use default font, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 2
    .parameter "position"
    .parameter "textView"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 226
    .local v0, fontTypeface:Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 229
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f080531

    const v3, 0x7f080530

    const v2, 0x7f08052f

    .line 169
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    .local v0, tmpString:Ljava/lang/String;
    const-string v1, "Cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 190
    .restart local v0       #tmpString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 172
    :cond_1
    const-string v1, "Rose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 174
    :cond_2
    const-string v1, "Choco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 177
    :cond_3
    const-string v1, "Rosemary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 179
    :cond_4
    const-string v1, "Choco cooky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 180
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 182
    :cond_5
    const-string v1, "Cool jazz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 183
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto :goto_0

    .line 184
    :cond_6
    const-string v1, "Apple mint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 185
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080532

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0

    .line 187
    :cond_7
    const-string v1, "Tinker bell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080533

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #tmpString:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #tmpString:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 200
    if-nez p2, :cond_0

    .line 201
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x109000f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 205
    .local v4, v:Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-direct {p0, p1, v4}, Lcom/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    .line 207
    const/high16 v6, -0x100

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    const/high16 v6, 0x41a0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 210
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 211
    .local v5, wm:Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 212
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 213
    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 215
    .local v1, density:I
    const/high16 v6, 0x4282

    int-to-float v7, v1

    const/high16 v8, 0x4320

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 216
    .local v3, pixelHeight:I
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 218
    return-object v4

    .line 203
    .end local v1           #density:I
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #pixelHeight:I
    .end local v4           #v:Landroid/widget/TextView;
    .end local v5           #wm:Landroid/view/WindowManager;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .restart local v4       #v:Landroid/widget/TextView;
    goto :goto_0
.end method

.method public loadTypefaces()V
    .locals 6

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, fontfile:Ljava/lang/String;
    const/4 v0, 0x0

    .line 237
    .local v0, fontPackageName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 238
    .local v3, newTypeface:Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 239
    const/4 v2, 0x1

    .line 240
    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 241
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-direct {p0, v1, v0}, Lcom/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 244
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method
