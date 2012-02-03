.class public Lcom/android/settings/quicklaunch/BookmarkPicker;
.super Landroid/app/ListActivity;
.source "BookmarkPicker.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# static fields
.field private static final sKeys:[Ljava/lang/String;

.field private static sLaunchIntent:Landroid/content/Intent;

.field private static final sResourceIds:[I

.field private static sShortcutIntent:Landroid/content/Intent;


# instance fields
.field private mDisplayMode:I

.field private mMyAdapter:Landroid/widget/SimpleAdapter;

.field private mResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TITLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RESOLVE_INFO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sKeys:[Ljava/lang/String;

    .line 83
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sResourceIds:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x22t 0x0t 0xbt 0x7ft
        0x21t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->fillResolveList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->fillAdapterList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/quicklaunch/BookmarkPicker;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mMyAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/quicklaunch/BookmarkPicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mMyAdapter:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->createResolveAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mResolveList:Ljava/util/List;

    return-object p1
.end method

.method private createResolveAdapter(Ljava/util/List;)Landroid/widget/SimpleAdapter;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;)",
            "Landroid/widget/SimpleAdapter;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03000e

    sget-object v4, Lcom/android/settings/quicklaunch/BookmarkPicker;->sKeys:[Ljava/lang/String;

    sget-object v5, Lcom/android/settings/quicklaunch/BookmarkPicker;->sResourceIds:[I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 209
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v0, p0}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 210
    return-object v0
.end method

.method private ensureIntents()V
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/quicklaunch/BookmarkPicker;->sShortcutIntent:Landroid/content/Intent;

    .line 143
    :cond_0
    return-void
.end method

.method private fillAdapterList(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p2, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 216
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 217
    .local v3, resolveListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 218
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 225
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 226
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "TITLE"

    invoke-direct {p0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v4, "RESOLVE_INFO"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private fillResolveList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 195
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->ensureIntents()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 197
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 199
    iget v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    if-nez v1, :cond_1

    .line 200
    sget-object v1, Lcom/android/settings/quicklaunch/BookmarkPicker;->sLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 202
    sget-object v1, Lcom/android/settings/quicklaunch/BookmarkPicker;->sShortcutIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private finish(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "title"

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 313
    const-string v0, "com.android.settings.quicklaunch.TITLE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->setResult(ILandroid/content/Intent;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->finish()V

    .line 316
    return-void
.end method

.method private static getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "info"
    .parameter "action"

    .prologue
    .line 266
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 268
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    return-object v1
.end method

.method private getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 235
    .local v0, label:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 236
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startShortcutActivity(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 279
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-static {p1, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 280
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 283
    return-void
.end method

.method private updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, newAdapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p2, newResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/quicklaunch/BookmarkPicker$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/quicklaunch/BookmarkPicker$2;-><init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method private updateListAndAdapter()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/android/settings/quicklaunch/BookmarkPicker$1;

    const-string v1, "data updater"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker$1;-><init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/quicklaunch/BookmarkPicker$1;->start()V

    .line 171
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 287
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 301
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 294
    :pswitch_0
    if-eqz p3, :cond_0

    .line 295
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->finish(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->updateListAndAdapter()V

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    const v0, 0x7f0803ef

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 105
    const v0, 0x7f0803f0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202001c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 107
    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 241
    iget-object v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_0

    .line 263
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mResolveList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 245
    .local v0, info:Landroid/content/pm/ResolveInfo;
    iget v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 249
    :pswitch_0
    const-string v2, "android.intent.action.MAIN"

    invoke-static {v0, v2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 250
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getResolveInfoTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->finish(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->startShortcutActivity(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 135
    :goto_0
    return v0

    .line 123
    :pswitch_0
    iput v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    .line 134
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->updateListAndAdapter()V

    move v0, v2

    .line 135
    goto :goto_0

    .line 127
    :pswitch_1
    iput v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker;->mDisplayMode:I

    if-eq v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    return v2

    :cond_0
    move v1, v3

    .line 112
    goto :goto_0

    :cond_1
    move v1, v3

    .line 113
    goto :goto_1
.end method

.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0021

    if-ne v1, v2, :cond_1

    .line 323
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 324
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 325
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :cond_0
    const/4 v1, 0x1

    .line 329
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    return v1

    .restart local p1
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
