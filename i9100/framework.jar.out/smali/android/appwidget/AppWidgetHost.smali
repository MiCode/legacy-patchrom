.class public Landroid/appwidget/AppWidgetHost;
.super Ljava/lang/Object;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHost$UpdateHandler;,
        Landroid/appwidget/AppWidgetHost$Callbacks;
    }
.end annotation


# static fields
.field static final HANDLE_PROVIDER_CHANGED:I = 0x2

.field static final HANDLE_UPDATE:I = 0x1

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mHostId:I

.field mPackageName:Ljava/lang/String;

.field final mViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/appwidget/AppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "hostId"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v1, Landroid/appwidget/AppWidgetHost$Callbacks;

    invoke-direct {v1, p0}, Landroid/appwidget/AppWidgetHost$Callbacks;-><init>(Landroid/appwidget/AppWidgetHost;)V

    iput-object v1, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    .line 91
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    .line 92
    iput p2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    .line 93
    new-instance v1, Landroid/appwidget/AppWidgetHost$UpdateHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/appwidget/AppWidgetHost$UpdateHandler;-><init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    .line 94
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v2, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v2, :cond_0

    .line 96
    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v2

    sput-object v2, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 99
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static deleteAllHosts()V
    .locals 3

    .prologue
    .line 198
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAllHosts()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return-void

    .line 200
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public allocateAppWidgetId()I
    .locals 4

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    .line 149
    :cond_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->allocateAppWidgetId(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 151
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 6
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 207
    invoke-virtual {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    .line 208
    .local v1, view:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 209
    iget-object v3, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v3

    .line 210
    :try_start_0
    iget-object v4, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    sget-object v3, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v3, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(I)Landroid/widget/RemoteViews;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 218
    .local v2, views:Landroid/widget/RemoteViews;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 219
    return-object v1

    .line 211
    .end local v2           #views:Landroid/widget/RemoteViews;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 215
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 216
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "system server dead?"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public deleteAppWidgetId(I)V
    .locals 4
    .parameter "appWidgetId"

    .prologue
    .line 160
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :try_start_1
    sget-object v2, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteAppWidgetId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    :try_start_2
    monitor-exit v1

    .line 169
    return-void

    .line 165
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 168
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public deleteHost()V
    .locals 3

    .prologue
    .line 181
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->deleteHost(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 184
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 228
    new-instance v0, Landroid/appwidget/AppWidgetHostView;

    invoke-direct {v0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 236
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 238
    .local v0, v:Landroid/appwidget/AppWidgetHostView;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 242
    :cond_0
    return-void

    .line 238
    .end local v0           #v:Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public startListening()V
    .locals 9

    .prologue
    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v4, updatedViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 112
    iget-object v5, p0, Landroid/appwidget/AppWidgetHost;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    .line 114
    :cond_0
    sget-object v5, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHost;->mCallbacks:Landroid/appwidget/AppWidgetHost$Callbacks;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHost;->mPackageName:Ljava/lang/String;

    iget v8, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v5, v6, v7, v8, v4}, Lcom/android/internal/appwidget/IAppWidgetService;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 120
    .local v3, updatedIds:[I
    array-length v0, v3

    .line 121
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 122
    aget v6, v3, v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0, v6, v5}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #updatedIds:[I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 117
    .local v1, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "system server dead?"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 124
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v3       #updatedIds:[I
    :cond_1
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetHost;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget v2, p0, Landroid/appwidget/AppWidgetHost;->mHostId:I

    invoke-interface {v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->stopListening(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method updateAppWidgetView(ILandroid/widget/RemoteViews;)V
    .locals 4
    .parameter "appWidgetId"
    .parameter "views"

    .prologue
    .line 246
    iget-object v1, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHost;->mViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 248
    .local v0, v:Landroid/appwidget/AppWidgetHostView;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 252
    :cond_0
    return-void

    .line 248
    .end local v0           #v:Landroid/appwidget/AppWidgetHostView;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
