.class public Landroid/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# static fields
.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field private static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field private static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGlobalSearchActivity:Landroid/content/ComponentName;

.field private mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "com.android.googlesearch/.GoogleSearch"

    sput-object v0, Landroid/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 58
    const-string v0, "com.google.android.providers.enhancedgooglesearch/.Launcher"

    sput-object v0, Landroid/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 51
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 52
    iput-object v0, p0, Landroid/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 53
    iput-object v0, p0, Landroid/server/search/Searchables;->mGlobalSearchActivity:Landroid/content/ComponentName;

    .line 54
    iput-object v0, p0, Landroid/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 66
    iput-object p1, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private findGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 9

    .prologue
    const-string v8, "Searchables"

    .line 251
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 253
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    const/4 v6, 0x0

    move v2, v6

    .line 256
    .local v2, count:I
    :goto_0
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 257
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 258
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    const-string v6, "android.permission.GLOBAL_SEARCH"

    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 260
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    :goto_2
    return-object v6

    .line 255
    .end local v2           #count:I
    .end local v3           #i:I
    .restart local p0
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v2, v6

    goto :goto_0

    .line 262
    .end local p0
    .restart local v1       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_1
    const-string v6, "Searchables"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wants to handle GLOBAL_SEARCH, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "but does not have the GLOBAL_SEARCH permission."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 266
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    :cond_2
    const-string v6, "Searchables"

    const-string v6, "No global search activity found"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 9
    .parameter "globalSearchActivity"

    .prologue
    const/4 v8, 0x0

    .line 276
    if-nez p1, :cond_0

    move-object v6, v8

    .line 291
    .end local p0
    :goto_0
    return-object v6

    .line 279
    .restart local p0
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    iget-object v6, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 282
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 284
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    const/4 v6, 0x0

    move v2, v6

    .line 285
    .local v2, count:I
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    if-ge v3, v2, :cond_2

    .line 286
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 288
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .restart local p0
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v2, v6

    goto :goto_1

    .line 290
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_2
    const-string v6, "Searchables"

    const-string v7, "No web search activity found"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 291
    goto :goto_0
.end method


# virtual methods
.method public buildSearchableList()V
    .locals 23

    .prologue
    .line 184
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v11, newSearchablesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/app/SearchableInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v10, newSearchablesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v9, newSearchablesInGlobalSearchList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 195
    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v20, "android.intent.action.SEARCH"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v7, intent:Landroid/content/Intent;
    const/16 v20, 0x80

    move-object v0, v13

    move-object v1, v7

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 199
    .local v14, searchList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v18, Landroid/content/Intent;

    const-string v20, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v18, webSearchIntent:Landroid/content/Intent;
    const/16 v20, 0x80

    move-object v0, v13

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 203
    .local v17, webSearchInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v14, :cond_0

    if-eqz v17, :cond_5

    .line 204
    :cond_0
    if-nez v14, :cond_2

    const/16 v20, 0x0

    move/from16 v15, v20

    .line 205
    .local v15, search_count:I
    :goto_0
    if-nez v17, :cond_3

    const/16 v20, 0x0

    move/from16 v19, v20

    .line 206
    .local v19, web_search_count:I
    :goto_1
    add-int v4, v15, v19

    .line 207
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, ii:I
    :goto_2
    if-ge v5, v4, :cond_5

    .line 209
    if-ge v5, v15, :cond_4

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object v6, v3

    .line 212
    .local v6, info:Landroid/content/pm/ResolveInfo;
    :goto_3
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 214
    .local v3, ai:Landroid/content/pm/ActivityInfo;
    new-instance v20, Landroid/content/ComponentName;

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_1

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/app/SearchableInfo;

    move-result-object v16

    .line 216
    .local v16, searchable:Landroid/app/SearchableInfo;
    if-eqz v16, :cond_1

    .line 217
    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual/range {v16 .. v16}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v20

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual/range {v16 .. v16}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 220
    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v16           #searchable:Landroid/app/SearchableInfo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 204
    .end local v3           #ai:Landroid/content/pm/ActivityInfo;
    .end local v4           #count:I
    .end local v5           #ii:I
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    .end local v15           #search_count:I
    .end local v19           #web_search_count:I
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v15, v20

    goto :goto_0

    .line 205
    .restart local v15       #search_count:I
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v19, v20

    goto :goto_1

    .line 209
    .restart local v4       #count:I
    .restart local v5       #ii:I
    .restart local v19       #web_search_count:I
    :cond_4
    sub-int v20, v5, v15

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object v6, v3

    goto :goto_3

    .line 228
    .end local v4           #count:I
    .end local v5           #ii:I
    .end local v15           #search_count:I
    .end local v19           #web_search_count:I
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/server/search/Searchables;->findGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 231
    .local v8, newGlobalSearchActivity:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/server/search/Searchables;->findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v12

    .line 234
    .local v12, newWebSearchActivity:Landroid/content/ComponentName;
    monitor-enter p0

    .line 235
    :try_start_0
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 236
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 237
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 238
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mGlobalSearchActivity:Landroid/content/ComponentName;

    .line 239
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 240
    monitor-exit p0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v20

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20
.end method

.method public declared-synchronized getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/search/Searchables;->mGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 10
    .parameter "activity"

    .prologue
    const/4 v9, 0x0

    const-string v7, "android.app.default_searchable"

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v7, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchableInfo;

    .line 101
    .local v6, result:Landroid/app/SearchableInfo;
    if-eqz v6, :cond_0

    monitor-exit p0

    move-object v7, v6

    .line 158
    :goto_0
    return-object v7

    .line 102
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    :try_start_1
    iget-object v7, p0, Landroid/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 113
    const/4 v4, 0x0

    .line 116
    .local v4, refActivityName:Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 117
    .local v2, md:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 118
    const-string v7, "android.app.default_searchable"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    :cond_1
    if-nez v4, :cond_2

    .line 122
    iget-object v7, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v7, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 123
    if-eqz v2, :cond_2

    .line 124
    const-string v7, "android.app.default_searchable"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    :cond_2
    if-eqz v4, :cond_6

    .line 132
    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v9

    .line 133
    goto :goto_0

    .line 102
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #md:Landroid/os/Bundle;
    .end local v4           #refActivityName:Ljava/lang/String;
    .end local v6           #result:Landroid/app/SearchableInfo;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 135
    .restart local v1       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #md:Landroid/os/Bundle;
    .restart local v4       #refActivityName:Ljava/lang/String;
    .restart local v6       #result:Landroid/app/SearchableInfo;
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, pkg:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_4

    .line 138
    new-instance v5, Landroid/content/ComponentName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v5, referredActivity:Landroid/content/ComponentName;
    :goto_1
    monitor-enter p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 146
    :try_start_4
    iget-object v7, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/SearchableInfo;

    move-object v6, v0

    .line 147
    if-eqz v6, :cond_5

    .line 148
    iget-object v7, p0, Landroid/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v6

    goto :goto_0

    .line 140
    .end local v5           #referredActivity:Landroid/content/ComponentName;
    :cond_4
    :try_start_5
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .restart local v5       #referredActivity:Landroid/content/ComponentName;
    goto :goto_1

    .line 151
    :cond_5
    :try_start_6
    monitor-exit p0

    .end local v2           #md:Landroid/os/Bundle;
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #refActivityName:Ljava/lang/String;
    .end local v5           #referredActivity:Landroid/content/ComponentName;
    :cond_6
    :goto_2
    move-object v7, v9

    .line 158
    goto :goto_0

    .line 151
    .restart local v2       #md:Landroid/os/Bundle;
    .restart local v3       #pkg:Ljava/lang/String;
    .restart local v4       #refActivityName:Ljava/lang/String;
    .restart local v5       #referredActivity:Landroid/content/ComponentName;
    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v7
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 153
    .end local v2           #md:Landroid/os/Bundle;
    .end local v3           #pkg:Ljava/lang/String;
    .end local v4           #refActivityName:Ljava/lang/String;
    .end local v5           #referredActivity:Landroid/content/ComponentName;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    monitor-exit p0

    return-object v0

    .line 298
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getWebSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
