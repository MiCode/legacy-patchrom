.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# static fields
.field public static final ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final INVALID_APPWIDGET_ID:I = 0x0

.field public static final META_DATA_APPWIDGET_OLD_NAME:Ljava/lang/String; = "android.appwidget.oldName"

.field public static final META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field static final TAG:Ljava/lang/String; = "AppWidgetManager"

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/appwidget/AppWidgetManager;",
            ">;>;"
        }
    .end annotation
.end field

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 231
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .locals 6
    .parameter "context"

    .prologue
    .line 209
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 210
    :try_start_0
    sget-object v4, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v4, :cond_0

    .line 211
    const-string v4, "appwidget"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 212
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v4

    sput-object v4, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 215
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    sget-object v4, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 216
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/appwidget/AppWidgetManager;>;"
    const/4 v2, 0x0

    .line 217
    .local v2, result:Landroid/appwidget/AppWidgetManager;
    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Landroid/appwidget/AppWidgetManager;
    check-cast v2, Landroid/appwidget/AppWidgetManager;

    .line 220
    .restart local v2       #result:Landroid/appwidget/AppWidgetManager;
    :cond_1
    if-nez v2, :cond_2

    .line 221
    new-instance v2, Landroid/appwidget/AppWidgetManager;

    .end local v2           #result:Landroid/appwidget/AppWidgetManager;
    invoke-direct {v2, p0}, Landroid/appwidget/AppWidgetManager;-><init>(Landroid/content/Context;)V

    .line 222
    .restart local v2       #result:Landroid/appwidget/AppWidgetManager;
    sget-object v4, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_2
    monitor-exit v3

    return-object v2

    .line 225
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/appwidget/AppWidgetManager;>;"
    .end local v2           #result:Landroid/appwidget/AppWidgetManager;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    .line 337
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    return-void

    .line 339
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 340
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 3
    .parameter "provider"

    .prologue
    .line 353
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 355
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 356
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .parameter "appWidgetId"

    .prologue
    .line 310
    :try_start_0
    sget-object v2, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 311
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_0

    .line 313
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 315
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    return-object v1

    .line 320
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 321
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getInstalledProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 297
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 2
    .parameter "appWidgetId"
    .parameter "views"

    .prologue
    .line 265
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 266
    return-void
.end method

.method public updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 3
    .parameter "provider"
    .parameter "views"

    .prologue
    .line 283
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return-void

    .line 285
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 286
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 246
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    return-void

    .line 248
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
