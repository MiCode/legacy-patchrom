.class Lcom/android/server/AppWidgetService$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .local v4, action:Ljava/lang/String;
    const-string v16, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/AppWidgetService;->sendInitialBroadcasts()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v16, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    .local v14, revised:Ljava/util/Locale;
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, N:I
    const/16 v17, 0x1

    sub-int v8, v3, v17

    .local v8, i:I
    :goto_1
    if-ltz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppWidgetService$Provider;

    .local v11, p:Lcom/android/server/AppWidgetService$Provider;
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .local v13, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .end local v11           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    monitor-exit v16

    goto/16 :goto_0

    .end local v3           #N:I
    .end local v8           #i:I
    :catchall_0
    move-exception v17

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .end local v14           #revised:Ljava/util/Locale;
    :cond_4
    const/4 v5, 0x0

    .local v5, added:Z
    const/4 v12, 0x0

    .local v12, pkgList:[Ljava/lang/String;
    const-string v16, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string v16, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x1

    :goto_2
    if-eqz v12, :cond_0

    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    if-eqz v16, :cond_0

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .local v7, extras:Landroid/os/Bundle;
    if-eqz v7, :cond_7

    const-string v17, "android.intent.extra.REPLACING"

    const/16 v18, 0x0

    move-object v0, v7

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object v6, v12

    .local v6, arr$:[Ljava/lang/String;
    array-length v10, v6

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3
    if-ge v9, v10, :cond_8

    aget-object v13, v6, v9

    .restart local v13       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_5
    const-string v16, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string v16, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .local v15, uri:Landroid/net/Uri;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #pkgName:Ljava/lang/String;
    if-eqz v13, :cond_0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object v12, v0

    .end local v12           #pkgList:[Ljava/lang/String;
    const/16 v16, 0x0

    aput-object v13, v12, v16

    .restart local v12       #pkgList:[Ljava/lang/String;
    const-string v16, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .end local v13           #pkgName:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    .restart local v7       #extras:Landroid/os/Bundle;
    :cond_7
    move-object v6, v12

    .restart local v6       #arr$:[Ljava/lang/String;
    :try_start_2
    array-length v10, v6

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_4
    if-ge v9, v10, :cond_8

    aget-object v13, v6, v9

    .restart local v13       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->addProvidersForPackageLocked(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v13           #pkgName:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    monitor-exit v16

    goto/16 :goto_0

    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :catchall_1
    move-exception v17

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v17

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .restart local v7       #extras:Landroid/os/Bundle;
    if-eqz v7, :cond_a

    const-string v16, "android.intent.extra.REPLACING"

    const/16 v17, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    move-object v6, v12

    .restart local v6       #arr$:[Ljava/lang/String;
    :try_start_3
    array-length v10, v6

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_5
    if-ge v9, v10, :cond_b

    aget-object v13, v6, v9

    .restart local v13       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->removeProvidersForPackageLocked(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .end local v13           #pkgName:Ljava/lang/String;
    :cond_b
    monitor-exit v16

    goto/16 :goto_0

    .end local v9           #i$:I
    .end local v10           #len$:I
    :catchall_2
    move-exception v17

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v17
.end method
