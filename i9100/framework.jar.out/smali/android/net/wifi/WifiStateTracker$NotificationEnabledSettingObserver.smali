.class Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 3369
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 3370
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3371
    return-void
.end method

.method private getValue()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3394
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$2600(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 3382
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3384
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->getValue()Z

    move-result v1

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateTracker;->access$2402(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 3385
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$2400(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3387
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 3390
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$2500(Landroid/net/wifi/WifiStateTracker;)V

    .line 3391
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 3374
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateTracker;->access$2300(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3375
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3377
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->getValue()Z

    move-result v2

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateTracker;->access$2402(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 3378
    return-void
.end method
