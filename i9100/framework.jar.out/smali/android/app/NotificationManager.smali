.class public Landroid/app/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const-string v0, "NotificationManager"

    sput-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    .line 64
    sput-boolean v1, Landroid/app/NotificationManager;->DEBUG:Z

    .line 65
    sget-boolean v0, Landroid/app/NotificationManager;->DEBUG:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/app/NotificationManager;->localLOGV:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public static getService()Landroid/app/INotificationManager;
    .locals 2

    .prologue
    .line 72
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    .line 77
    :goto_0
    return-object v1

    .line 75
    :cond_0
    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    sput-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    .line 77
    sget-object v1, Landroid/app/NotificationManager;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method private isValidIndex(I)Z
    .locals 1
    .parameter "i"

    .prologue
    .line 221
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 132
    return-void
.end method

.method public cancel(Ljava/lang/String;I)V
    .locals 5
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 141
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 142
    .local v1, service:Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, pkg:Ljava/lang/String;
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cancel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 5

    .prologue
    .line 156
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 157
    .local v1, service:Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, pkg:Ljava/lang/String;
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cancelAll()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :try_start_0
    invoke-interface {v1, v0}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getEventContact(I)Ljava/lang/String;
    .locals 3
    .parameter "i"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Landroid/app/NotificationManager;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getEventContact(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 203
    :cond_0
    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEventContact - Invalid Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEventCount(I)I
    .locals 3
    .parameter "i"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Landroid/app/NotificationManager;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getEventCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 192
    :goto_0
    return v0

    .line 188
    :catch_0
    move-exception v0

    .line 191
    :cond_0
    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEventCount - Invalid Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEventIndexWithReq(Ljava/lang/String;I)I
    .locals 1
    .parameter "pkg"
    .parameter "req"

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->getEventIndexWithReq(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 180
    :goto_0
    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEventIntent(I)Landroid/app/PendingIntent;
    .locals 3
    .parameter "i"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Landroid/app/NotificationManager;->isValidIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getEventIntent(I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 215
    :cond_0
    sget-object v0, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEventIntent - Invalid Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;
    .locals 1
    .parameter "pkg"
    .parameter "req"

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 171
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 96
    return-void
.end method

.method public notify(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 6
    .parameter "tag"
    .parameter "id"
    .parameter "notification"

    .prologue
    .line 110
    const/4 v2, 0x1

    new-array v5, v2, [I

    .line 111
    .local v5, idOut:[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 112
    .local v0, service:Landroid/app/INotificationManager;
    iget-object v2, p0, Landroid/app/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, pkg:Ljava/lang/String;
    sget-boolean v2, Landroid/app/NotificationManager;->localLOGV:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": notify("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 115
    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 116
    const/4 v2, 0x0

    aget v2, v5, v2

    if-eq p2, v2, :cond_1

    .line 117
    sget-object v2, Landroid/app/NotificationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify: id corrupted: sent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", got back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v2

    goto :goto_0

    .line 119
    :catch_1
    move-exception v2

    goto :goto_0
.end method
