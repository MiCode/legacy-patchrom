.class Lcom/android/server/ServerThread$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;


# direct methods
.method public constructor <init>(Lcom/android/server/ServerThread;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/ServerThread$AdbSettingsObserver;->this$0:Lcom/android/server/ServerThread;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/ServerThread$AdbSettingsObserver;->this$0:Lcom/android/server/ServerThread;

    #getter for: Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/ServerThread;->access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .local v0, enableAdb:Z
    :goto_0
    const-string v1, "persist.service.adb.enable"

    if-eqz v0, :cond_1

    const-string v2, "1"

    :goto_1
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .end local v0           #enableAdb:Z
    :cond_0
    move v0, v3

    goto :goto_0

    .restart local v0       #enableAdb:Z
    :cond_1
    const-string v2, "0"

    goto :goto_1
.end method
