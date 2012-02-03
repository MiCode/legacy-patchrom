.class Lcom/android/server/AppWidgetService;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppWidgetService$AppWidgetId;,
        Lcom/android/server/AppWidgetService$Host;,
        Lcom/android/server/AppWidgetService$Provider;
    }
.end annotation


# static fields
.field private static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final SETTINGS_TMP_FILENAME:Ljava/lang/String; = "appwidgets.xml.tmp"

.field private static final TAG:Ljava/lang/String; = "AppWidgetService"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field final mAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Host;",
            ">;"
        }
    .end annotation
.end field

.field mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mLocale:Ljava/util/Locale;

.field mNextAppWidgetId:I

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mSafeMode:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    .line 1090
    new-instance v0, Lcom/android/server/AppWidgetService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetService$1;-><init>(Lcom/android/server/AppWidgetService;)V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iput-object p1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 127
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 128
    return-void
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I
    .locals 4
    .parameter "p"

    .prologue
    .line 665
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 666
    .local v2, instancesSize:I
    new-array v0, v2, [I

    .line 667
    .local v0, appWidgetIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 668
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    :cond_0
    return-object v0
.end method

.method private parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;
    .locals 19
    .parameter "component"
    .parameter "ri"

    .prologue
    .line 685
    const/4 v9, 0x0

    .line 687
    .local v9, p:Lcom/android/server/AppWidgetService$Provider;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    .line 688
    .local v3, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v11, 0x0

    .line 690
    .local v11, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    const-string v17, "android.appwidget.provider"

    move-object v0, v3

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 692
    if-nez v11, :cond_1

    .line 693
    const-string v16, "AppWidgetService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No android.appwidget.provider meta-data for AppWidget provider \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    const/16 v16, 0x0

    .line 757
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 759
    :cond_0
    :goto_0
    return-object v16

    .line 698
    :cond_1
    :try_start_1
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 702
    .local v4, attrs:Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, type:I
    const/16 v16, 0x1

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    const/16 v16, 0x2

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 706
    :cond_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 707
    .local v8, nodeName:Ljava/lang/String;
    const-string v16, "appwidget-provider"

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 708
    const-string v16, "AppWidgetService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Meta-data does not start with appwidget-provider tag for AppWidget provider \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 710
    const/16 v16, 0x0

    .line 757
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 713
    :cond_4
    :try_start_2
    new-instance v10, Lcom/android/server/AppWidgetService$Provider;

    invoke-direct {v10}, Lcom/android/server/AppWidgetService$Provider;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 714
    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .local v10, p:Lcom/android/server/AppWidgetService$Provider;
    :try_start_3
    new-instance v7, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v7}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v7, v10, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 717
    .local v7, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v17, "android.appwidget.oldName"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v7

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->oldName:Ljava/lang/String;

    .line 720
    move-object/from16 v0, p1

    move-object v1, v7

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 721
    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object v1, v10

    iput v0, v1, Lcom/android/server/AppWidgetService$Provider;->uid:I

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 726
    .local v12, res:Landroid/content/res/Resources;
    sget-object v16, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    move-object v0, v12

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 732
    .local v13, sa:Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 734
    .local v15, value:Landroid/util/TypedValue;
    if-eqz v15, :cond_7

    move-object v0, v15

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    move-object v1, v7

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 735
    const/16 v16, 0x1

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 736
    if-eqz v15, :cond_8

    move-object v0, v15

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    :goto_2
    move/from16 v0, v16

    move-object v1, v7

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 738
    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    move-object v1, v7

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 740
    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    move-object v1, v7

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 742
    const/16 v16, 0x4

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 744
    .local v5, className:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 745
    new-instance v16, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v7

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 747
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v7

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v16

    move/from16 v0, v16

    move-object v1, v7

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 749
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 757
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    move-object v9, v10

    .end local v10           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    move-object/from16 v16, v10

    .line 759
    goto/16 :goto_0

    .line 734
    .end local v5           #className:Ljava/lang/String;
    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v10       #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 736
    :cond_8
    const/16 v16, 0x0

    goto :goto_2

    .line 750
    .end local v4           #attrs:Landroid/util/AttributeSet;
    .end local v7           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8           #nodeName:Ljava/lang/String;
    .end local v10           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v12           #res:Landroid/content/res/Resources;
    .end local v13           #sa:Landroid/content/res/TypedArray;
    .end local v14           #type:I
    .end local v15           #value:Landroid/util/TypedValue;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    :catch_0
    move-exception v16

    move-object/from16 v6, v16

    .line 754
    .local v6, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v16, "AppWidgetService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XML parsing failed for AppWidget provider \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 755
    const/16 v16, 0x0

    .line 757
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    :goto_4
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v16

    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v4       #attrs:Landroid/util/AttributeSet;
    .restart local v8       #nodeName:Ljava/lang/String;
    .restart local v10       #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v14       #type:I
    :catchall_1
    move-exception v16

    move-object v9, v10

    .end local v10           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    goto :goto_4

    .line 750
    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v10       #p:Lcom/android/server/AppWidgetService$Provider;
    :catch_1
    move-exception v16

    move-object/from16 v6, v16

    move-object v9, v10

    .end local v10           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    goto :goto_3
.end method


# virtual methods
.method addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .parameter "ri"

    .prologue
    .line 591
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/android/server/AppWidgetService;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v0

    .line 593
    .local v0, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v0, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    const/4 v1, 0x1

    .line 597
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method addProvidersForPackageLocked(Ljava/lang/String;)V
    .locals 8
    .parameter "pkgName"

    .prologue
    .line 1170
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1175
    .local v2, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    const/4 v6, 0x0

    move v0, v6

    .line 1176
    .local v0, N:I
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1177
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1178
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1179
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 1176
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1175
    .end local v0           #N:I
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v3           #i:I
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 1182
    .restart local v0       #N:I
    .restart local v1       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v3       #i:I
    .restart local v5       #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v6, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1183
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    goto :goto_2

    .line 1186
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .locals 6
    .parameter "packageName"
    .parameter "hostId"

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 230
    .local v1, callingUid:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 231
    :try_start_0
    iget v0, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 233
    .local v0, appWidgetId:I
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppWidgetService;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;

    move-result-object v2

    .line 235
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    new-instance v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {v3}, Lcom/android/server/AppWidgetService$AppWidgetId;-><init>()V

    .line 236
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iput v0, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 237
    iput-object v2, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 239
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 244
    monitor-exit v4

    return v0

    .line 245
    .end local v0           #appWidgetId:I
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 8
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    const/4 v7, 0x1

    .line 342
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_APPWIDGET"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindGagetId appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 345
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 346
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v0, :cond_0

    .line 347
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad appWidgetId"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 379
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 349
    .restart local v0       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    :try_start_1
    iget-object v4, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v4, :cond_1

    .line 350
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appWidgetId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v6, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 353
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v2

    .line 354
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v2, :cond_2

    .line 355
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not a appwidget provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 357
    :cond_2
    iget-boolean v4, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-eqz v4, :cond_3

    .line 358
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t bind to a 3rd party provider in safe mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 362
    :cond_3
    iput-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 363
    iget-object v4, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v4, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 365
    .local v1, instancesSize:I
    if-ne v1, v7, :cond_4

    .line 367
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V

    .line 374
    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 377
    invoke-static {v2}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 379
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    return-void
.end method

.method canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z
    .locals 3
    .parameter "id"
    .parameter "callingUid"

    .prologue
    const/4 v2, 0x1

    .line 502
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v0, v0, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v0, p2, :cond_0

    move v0, v2

    .line 516
    :goto_0
    return v0

    .line 506
    :cond_0
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget v0, v0, Lcom/android/server/AppWidgetService$Provider;->uid:I

    if-ne v0, p2, :cond_1

    move v0, v2

    .line 508
    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 513
    goto :goto_0

    .line 516
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 329
    iget-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 333
    .local v0, token:J
    :try_start_0
    iget-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 339
    .end local v0           #token:J
    :cond_0
    return-void

    .line 335
    .restart local v0       #token:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public deleteAllHosts()V
    .locals 7

    .prologue
    .line 270
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 271
    :try_start_0
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 272
    .local v1, callingUid:I
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 273
    .local v0, N:I
    const/4 v2, 0x0

    .line 274
    .local v2, changed:Z
    const/4 v6, 0x1

    sub-int v4, v0, v6

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_1

    .line 275
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Host;

    .line 276
    .local v3, host:Lcom/android/server/AppWidgetService$Host;
    iget v6, v3, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v6, v1, :cond_0

    .line 277
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 278
    const/4 v2, 0x1

    .line 274
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 281
    .end local v3           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_1
    if-eqz v2, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 284
    :cond_2
    monitor-exit v5

    .line 285
    return-void

    .line 284
    .end local v0           #N:I
    .end local v1           #callingUid:I
    .end local v2           #changed:Z
    .end local v4           #i:I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public deleteAppWidgetId(I)V
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 250
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 251
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 255
    :cond_0
    monitor-exit v1

    .line 256
    return-void

    .line 255
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 300
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 301
    .local v0, host:Lcom/android/server/AppWidgetService$Host;
    iget-object v3, v0, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 304
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    iget-object v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 307
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v2, :cond_0

    .line 308
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    iget-boolean v3, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v3, :cond_0

    .line 311
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 313
    const-string v3, "appWidgetId"

    iget v4, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 315
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 317
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 320
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 322
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 326
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public deleteHost(I)V
    .locals 4
    .parameter "hostId"

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 260
    :try_start_0
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v0

    .line 261
    .local v0, callingUid:I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetService;->lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;

    move-result-object v1

    .line 262
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 266
    :cond_0
    monitor-exit v2

    .line 267
    return-void

    .line 266
    .end local v0           #callingUid:I
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V
    .locals 4
    .parameter "host"

    .prologue
    .line 288
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 289
    .local v0, N:I
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 290
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 291
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 289
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 293
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 296
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 297
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v6, " "

    const-string v6, "  ["

    .line 163
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6

    .line 172
    :try_start_0
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 173
    .local v0, N:I
    const-string v7, "Providers:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 175
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppWidgetService$Provider;

    .line 176
    .local v5, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v5, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 177
    .local v4, info:Landroid/appwidget/AppWidgetProviderInfo;
    const-string v7, "  ["

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "] provider "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 180
    const-string v7, "    min=("

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 181
    const-string v7, "x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 182
    const-string v7, ") updatePeriodMillis="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 184
    const-string v7, " initialLayout=#"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    const-string v7, " zombie="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 190
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    const-string v7, "AppWidgetIds:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 193
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 194
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const-string v7, "  ["

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "] id="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 196
    const-string v7, "    hostId="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v7, v7, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 198
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v7, v7, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x2f

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 199
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v7, v7, Lcom/android/server/AppWidgetService$Host;->uid:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 200
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v7, :cond_2

    .line 201
    const-string v7, "    provider="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v7, v7, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    :cond_2
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    if-eqz v7, :cond_3

    .line 205
    const-string v7, "    host.callbacks="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v7, v7, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 207
    :cond_3
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_4

    .line 208
    const-string v7, "    views="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 192
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_5
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 213
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    const-string v7, "Hosts:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 216
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 217
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    const-string v7, "  ["

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "] hostId="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    iget v7, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 219
    iget-object v7, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x2f

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 220
    iget v7, v1, Lcom/android/server/AppWidgetService$Host;->uid:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 221
    const-string v7, "    callbacks="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 222
    const-string v7, "    instances.size="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 223
    const-string v7, " zombie="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 225
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_6
    monitor-exit v6

    goto/16 :goto_0

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method enforceCallingUid(Ljava/lang/String;)I
    .locals 7
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-string v6, "packageName and uid don\'t match packageName="

    .line 771
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v0

    .line 774
    .local v0, callingUid:I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->getUidForPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 779
    .local v2, packageUid:I
    if-eq v0, v2, :cond_0

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 775
    .end local v2           #packageUid:I
    :catch_0
    move-exception v1

    .line 776
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 783
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #packageUid:I
    :cond_0
    return v0
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 4
    .parameter "provider"

    .prologue
    .line 674
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 675
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v0

    .line 676
    .local v0, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v2

    iget v3, v0, Lcom/android/server/AppWidgetService$Provider;->uid:I

    if-ne v2, v3, :cond_0

    .line 677
    invoke-static {v0}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 679
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 681
    .end local v0           #p:Lcom/android/server/AppWidgetService$Provider;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 384
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 385
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v2, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v2, :cond_0

    .line 386
    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v2, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    monitor-exit v1

    move-object v1, v2

    .line 388
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 389
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 394
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 395
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_0

    .line 396
    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    monitor-exit v1

    move-object v1, v2

    .line 398
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 399
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getInstalledProviders()Ljava/util/List;
    .locals 6
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
    .line 403
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 404
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 405
    .local v0, N:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 407
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    .line 408
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    iget-boolean v5, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v5, :cond_0

    .line 409
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    .end local v2           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1
    monitor-exit v4

    return-object v3

    .line 413
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method getUidForPackage(Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 764
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 765
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 767
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1
.end method

.method loadAppWidgetList()V
    .locals 7

    .prologue
    .line 577
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 579
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v3, intent:Landroid/content/Intent;
    const/16 v6, 0x80

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 583
    .local v1, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    const/4 v6, 0x0

    move v0, v6

    .line 584
    .local v0, N:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 585
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 586
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 583
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v0, v6

    goto :goto_0

    .line 588
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    return-void
.end method

.method loadStateLocked()V
    .locals 4

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateTempFile()Ljava/io/File;

    move-result-object v1

    .line 816
    .local v1, temp:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateRealFile()Ljava/io/File;

    move-result-object v0

    .line 821
    .local v0, real:Ljava/io/File;
    const-string v2, "AppWidgetService"

    const-string v3, "AppwidgetNewLogic"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 823
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->readStateFromFileLocked(Ljava/io/File;)V

    .line 824
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 828
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 833
    :cond_1
    :goto_0
    return-void

    .line 829
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 830
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->readStateFromFileLocked(Ljava/io/File;)V

    goto :goto_0
.end method

.method lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;
    .locals 5
    .parameter "appWidgetId"

    .prologue
    .line 520
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 521
    .local v1, callingUid:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 523
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 524
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iget v4, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    if-ne v4, p1, :cond_0

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 528
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :goto_1
    return-object v4

    .line 522
    .restart local v3       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;
    .locals 4
    .parameter "uid"
    .parameter "hostId"

    .prologue
    .line 544
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 545
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 546
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 547
    .local v1, h:Lcom/android/server/AppWidgetService$Host;
    iget v3, v1, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v3, p1, :cond_0

    iget v3, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    if-ne v3, p2, :cond_0

    move-object v3, v1

    .line 551
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :goto_1
    return-object v3

    .line 545
    .restart local v1       #h:Lcom/android/server/AppWidgetService$Host;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;
    .locals 5
    .parameter "uid"
    .parameter "packageName"
    .parameter "hostId"

    .prologue
    .line 555
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 556
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 557
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 558
    .local v1, h:Lcom/android/server/AppWidgetService$Host;
    iget v4, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    if-ne v4, p3, :cond_0

    iget-object v4, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 567
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :goto_1
    return-object v4

    .line 556
    .restart local v1       #h:Lcom/android/server/AppWidgetService$Host;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :cond_1
    new-instance v2, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {v2}, Lcom/android/server/AppWidgetService$Host;-><init>()V

    .line 563
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    iput-object p2, v2, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    .line 564
    iput p1, v2, Lcom/android/server/AppWidgetService$Host;->uid:I

    .line 565
    iput p3, v2, Lcom/android/server/AppWidgetService$Host;->hostId:I

    .line 566
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    .line 567
    goto :goto_1
.end method

.method lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;
    .locals 5
    .parameter "provider"

    .prologue
    .line 532
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, className:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 534
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 535
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 536
    .local v3, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->oldName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v4, v3

    .line 540
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :goto_1
    return-object v4

    .line 534
    .restart local v3       #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 571
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 574
    :cond_0
    return-void
.end method

.method readStateFromFileLocked(Ljava/io/File;)V
    .locals 28
    .parameter "file"

    .prologue
    .line 938
    const/16 v20, 0x0

    .line 940
    .local v20, stream:Ljava/io/FileInputStream;
    const/16 v22, 0x0

    .line 943
    .local v22, success:Z
    :try_start_0
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6

    .line 944
    .end local v20           #stream:Ljava/io/FileInputStream;
    .local v21, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 945
    .local v15, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v25, 0x0

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 948
    const/16 v18, 0x0

    .line 949
    .local v18, providerIndex:I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 951
    .local v11, loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    :cond_0
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v24

    .line 952
    .local v24, type:I
    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 953
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 954
    .local v23, tag:Ljava/lang/String;
    const-string v25, "p"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 957
    const/16 v25, 0x0

    const-string v26, "pkg"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 958
    .local v16, pkg:Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, "cl"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 960
    .local v4, cl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v14

    .line 962
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    :try_start_2
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v26, 0x0

    move-object v0, v14

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8

    .line 969
    :goto_0
    :try_start_3
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v12

    .line 970
    .local v12, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 972
    new-instance v12, Lcom/android/server/AppWidgetService$Provider;

    .end local v12           #p:Lcom/android/server/AppWidgetService$Provider;
    invoke-direct {v12}, Lcom/android/server/AppWidgetService$Provider;-><init>()V

    .line 973
    .restart local v12       #p:Lcom/android/server/AppWidgetService$Provider;
    new-instance v25, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v25 .. v25}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v25

    move-object v1, v12

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 974
    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v25, v0

    new-instance v26, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 975
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object v1, v12

    iput-boolean v0, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_1
    if-eqz v12, :cond_2

    .line 980
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object v0, v11

    move-object/from16 v1, v25

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_8

    .line 982
    :cond_2
    add-int/lit8 v18, v18, 0x1

    .line 1042
    .end local v4           #cl:Ljava/lang/String;
    .end local v12           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v23           #tag:Ljava/lang/String;
    :cond_3
    :goto_1
    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1043
    const/16 v22, 0x1

    move-object/from16 v20, v21

    .line 1056
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v21           #stream:Ljava/io/FileInputStream;
    .end local v24           #type:I
    .restart local v20       #stream:Ljava/io/FileInputStream;
    :goto_2
    if-eqz v20, :cond_4

    .line 1057
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 1063
    :cond_4
    :goto_3
    if-eqz v22, :cond_b

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x1

    sub-int v9, v25, v26

    .end local p1
    .local v9, i:I
    :goto_4
    if-ltz v9, :cond_c

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppWidgetService$Host;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1066
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 963
    .end local v9           #i:I
    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v4       #cl:Ljava/lang/String;
    .restart local v11       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v14       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #pkg:Ljava/lang/String;
    .restart local v18       #providerIndex:I
    .restart local v21       #stream:Ljava/io/FileInputStream;
    .restart local v23       #tag:Ljava/lang/String;
    .restart local v24       #type:I
    .restart local p1
    :catch_0
    move-exception v25

    move-object/from16 v5, v25

    .line 964
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v25, 0x1

    :try_start_5
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v16, v25, v26

    move-object v0, v14

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 966
    .local v17, pkgs:[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v16, v17, v25

    goto/16 :goto_0

    .line 984
    .end local v4           #cl:Ljava/lang/String;
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v17           #pkgs:[Ljava/lang/String;
    :cond_5
    const-string v25, "h"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 985
    new-instance v8, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {v8}, Lcom/android/server/AppWidgetService$Host;-><init>()V

    .line 989
    .local v8, host:Lcom/android/server/AppWidgetService$Host;
    const/16 v25, 0x0

    const-string v26, "pkg"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_8

    .line 991
    :try_start_6
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->getUidForPackage(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object v1, v8

    iput v0, v1, Lcom/android/server/AppWidgetService$Host;->uid:I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_8

    .line 995
    :goto_5
    :try_start_7
    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 998
    :cond_6
    const/16 v25, 0x0

    const-string v26, "id"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object v1, v8

    iput v0, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_1

    .line 1044
    .end local v8           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v23           #tag:Ljava/lang/String;
    .end local v24           #type:I
    :catch_1
    move-exception v25

    move-object/from16 v5, v25

    move-object/from16 v20, v21

    .line 1045
    .end local v21           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/lang/NullPointerException;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    :goto_6
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed parsing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 992
    .end local v5           #e:Ljava/lang/NullPointerException;
    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v8       #host:Lcom/android/server/AppWidgetService$Host;
    .restart local v11       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #providerIndex:I
    .restart local v21       #stream:Ljava/io/FileInputStream;
    .restart local v23       #tag:Ljava/lang/String;
    .restart local v24       #type:I
    :catch_2
    move-exception v25

    move-object/from16 v6, v25

    .line 993
    .local v6, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v25, 0x1

    :try_start_8
    move/from16 v0, v25

    move-object v1, v8

    iput-boolean v0, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    .line 1046
    .end local v6           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v23           #tag:Ljava/lang/String;
    .end local v24           #type:I
    :catch_3
    move-exception v25

    move-object/from16 v5, v25

    move-object/from16 v20, v21

    .line 1047
    .end local v21           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/lang/NumberFormatException;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    :goto_7
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed parsing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1003
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v11       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #providerIndex:I
    .restart local v21       #stream:Ljava/io/FileInputStream;
    .restart local v23       #tag:Ljava/lang/String;
    .restart local v24       #type:I
    :cond_7
    :try_start_9
    const-string v25, "g"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 1004
    new-instance v10, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {v10}, Lcom/android/server/AppWidgetService$AppWidgetId;-><init>()V

    .line 1005
    .local v10, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/16 v25, 0x0

    const-string v26, "id"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object v1, v10

    iput v0, v1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 1006
    move-object v0, v10

    iget v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_8

    .line 1007
    move-object v0, v10

    iget v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 1010
    :cond_8
    const/16 v25, 0x0

    const-string v26, "p"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1011
    .local v19, providerString:Ljava/lang/String;
    if-eqz v19, :cond_9

    .line 1015
    const/16 v25, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 1016
    .local v13, pIndex:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    iput-object v3, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 1021
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 1028
    .end local v13           #pIndex:I
    :cond_9
    const/16 v25, 0x0

    const-string v26, "h"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 1029
    .local v7, hIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Host;

    iput-object v3, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 1030
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 1035
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 1036
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    :cond_a
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_1

    .line 1048
    .end local v7           #hIndex:I
    .end local v10           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v19           #providerString:Ljava/lang/String;
    .end local v23           #tag:Ljava/lang/String;
    .end local v24           #type:I
    :catch_4
    move-exception v25

    move-object/from16 v5, v25

    move-object/from16 v20, v21

    .line 1049
    .end local v21           #stream:Ljava/io/FileInputStream;
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    :goto_8
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed parsing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1050
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v25

    move-object/from16 v5, v25

    .line 1051
    .local v5, e:Ljava/io/IOException;
    :goto_9
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed parsing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1052
    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v25

    move-object/from16 v5, v25

    .line 1053
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_a
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed parsing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1071
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1074
    .local v3, N:I
    const/4 v9, 0x0

    .end local p1
    .restart local v9       #i:I
    :goto_b
    if-ge v9, v3, :cond_c

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1074
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1059
    .end local v3           #N:I
    .end local v9           #i:I
    .restart local p1
    :catch_7
    move-exception v25

    goto/16 :goto_3

    .line 1078
    .end local p1
    .restart local v9       #i:I
    :cond_c
    return-void

    .line 1052
    .end local v9           #i:I
    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v21       #stream:Ljava/io/FileInputStream;
    .restart local p1
    :catch_8
    move-exception v25

    move-object/from16 v5, v25

    move-object/from16 v20, v21

    .end local v21           #stream:Ljava/io/FileInputStream;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    goto :goto_a

    .line 1050
    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v21       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v25

    move-object/from16 v5, v25

    move-object/from16 v20, v21

    .end local v21           #stream:Ljava/io/FileInputStream;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 1048
    :catch_a
    move-exception v25

    move-object/from16 v5, v25

    goto/16 :goto_8

    .line 1046
    :catch_b
    move-exception v25

    move-object/from16 v5, v25

    goto/16 :goto_7

    .line 1044
    :catch_c
    move-exception v25

    move-object/from16 v5, v25

    goto/16 :goto_6
.end method

.method registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V
    .locals 11
    .parameter "p"
    .parameter "appWidgetIds"

    .prologue
    const/4 v1, 0x1

    .line 638
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_1

    .line 642
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    move v7, v1

    .line 643
    .local v7, alreadyRegistered:Z
    :goto_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 645
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 646
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 648
    .local v9, token:J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x800

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    if-nez v7, :cond_1

    .line 654
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 655
    .local v4, period:J
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 656
    const-wide/32 v4, 0x1b7740

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 662
    .end local v4           #period:J
    .end local v7           #alreadyRegistered:Z
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #token:J
    :cond_1
    return-void

    .line 642
    :cond_2
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 651
    .restart local v7       #alreadyRegistered:Z
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #token:J
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V
    .locals 5
    .parameter "index"
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    .line 602
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 603
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 604
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 606
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 608
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 610
    iget-object v3, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v3, v3, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 611
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 612
    iput-object v4, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 613
    iget-object v3, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 614
    iput-object v4, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 617
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 619
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 620
    return-void
.end method

.method removeProvidersForPackageLocked(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x1

    .line 1260
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1261
    .local v0, N:I
    sub-int v2, v0, v5

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 1262
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 1263
    .local v3, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1264
    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppWidgetService;->removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V

    .line 1261
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1272
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1273
    sub-int v2, v0, v5

    :goto_1
    if-ltz v2, :cond_3

    .line 1274
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 1275
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    iget-object v4, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1276
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1273
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1279
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_3
    return-void
.end method

.method saveStateLocked()V
    .locals 4

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateTempFile()Ljava/io/File;

    move-result-object v1

    .line 837
    .local v1, temp:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateRealFile()Ljava/io/File;

    move-result-object v0

    .line 839
    .local v0, real:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 847
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 858
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->writeStateToFileLocked(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 859
    const-string v2, "AppWidgetService"

    const-string v3, "Failed to persist new settings"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_1
    return-void

    .line 864
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 866
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 848
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method savedStateRealFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 1086
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/appwidgets.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method savedStateTempFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 1081
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/appwidgets.xml.tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 623
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 625
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 626
    return-void
.end method

.method sendInitialBroadcasts()V
    .locals 6

    .prologue
    .line 787
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 788
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 789
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 790
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 801
    .local v3, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v5, v3, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 802
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V

    .line 803
    invoke-static {v3}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v1

    .line 804
    .local v1, appWidgetIds:[I
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 805
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 789
    .end local v1           #appWidgetIds:[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 810
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1
    monitor-exit v4

    .line 811
    return-void

    .line 810
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V
    .locals 2
    .parameter "p"
    .parameter "appWidgetIds"

    .prologue
    .line 629
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 630
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 632
    iget-object v1, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 633
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 635
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .locals 9
    .parameter "callbacks"
    .parameter "packageName"
    .parameter "hostId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 472
    .local p4, updatedViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 473
    .local v1, callingUid:I
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7

    .line 474
    :try_start_0
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/AppWidgetService;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;

    move-result-object v2

    .line 475
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    iput-object p1, v2, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 477
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 479
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    .line 480
    .local v5, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 481
    .local v0, N:I
    new-array v6, v0, [I

    .line 482
    .local v6, updatedIds:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 483
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 484
    .local v4, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iget v8, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v8, v6, v3

    .line 485
    iget-object v8, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    .end local v4           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    monitor-exit v7

    return-object v6

    .line 488
    .end local v0           #N:I
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v3           #i:I
    .end local v5           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    .end local v6           #updatedIds:[I
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public stopListening(I)V
    .locals 3
    .parameter "hostId"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 493
    :try_start_0
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/AppWidgetService;->lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;

    move-result-object v0

    .line 494
    .local v0, host:Lcom/android/server/AppWidgetService$Host;
    if-eqz v0, :cond_0

    .line 495
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 496
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 498
    :cond_0
    monitor-exit v1

    .line 499
    return-void

    .line 498
    .end local v0           #host:Lcom/android/server/AppWidgetService$Host;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public systemReady(Z)V
    .locals 7
    .parameter "safeMode"

    .prologue
    const/4 v6, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->loadAppWidgetList()V

    .line 134
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->loadStateLocked()V

    .line 139
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v1, sdFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    return-void
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 5
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 417
    if-nez p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 423
    array-length v0, p1

    .line 425
    .local v0, N:I
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 426
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 427
    :try_start_0
    aget v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 428
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 430
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V
    .locals 3
    .parameter "id"
    .parameter "views"

    .prologue
    .line 453
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    if-nez v1, :cond_0

    .line 454
    iput-object p2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 457
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_0

    .line 460
    :try_start_0
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-interface {v1, v2, p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 464
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_0
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 9
    .parameter "provider"
    .parameter "views"

    .prologue
    .line 434
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 435
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v4

    .line 436
    .local v4, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v4, :cond_0

    .line 437
    const-string v6, "AppWidgetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAppWidgetProvider: provider doesn\'t exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    monitor-exit v5

    .line 447
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v3, v4, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    .line 441
    .local v3, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 442
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 443
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 444
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 446
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    .end local v4           #p:Lcom/android/server/AppWidgetService$Provider;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method updateProvidersForPackageLocked(Ljava/lang/String;)V
    .locals 21
    .parameter "pkgName"

    .prologue
    .line 1189
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1190
    .local v14, keep:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    .local v12, intent:Landroid/content/Intent;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x80

    move-object/from16 v0, v18

    move-object v1, v12

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1196
    .local v7, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_1

    const/16 v18, 0x0

    move/from16 v4, v18

    .line 1197
    .local v4, N:I
    :goto_0
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v4, :cond_6

    .line 1198
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 1199
    .local v17, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    .line 1200
    .local v5, ai:Landroid/content/pm/ActivityInfo;
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x4

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    .line 1197
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1196
    .end local v4           #N:I
    .end local v5           #ai:Landroid/content/pm/ActivityInfo;
    .end local v10           #i:I
    .end local v17           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v4, v18

    goto :goto_0

    .line 1203
    .restart local v4       #N:I
    .restart local v5       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v10       #i:I
    .restart local v17       #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1204
    new-instance v8, Landroid/content/ComponentName;

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .local v8, component:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v15

    .line 1206
    .local v15, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v15, :cond_3

    .line 1207
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1208
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1211
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppWidgetService;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v16

    .line 1212
    .local v16, parsed:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v16, :cond_0

    .line 1213
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1215
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1217
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1218
    .local v3, M:I
    if-lez v3, :cond_0

    .line 1219
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v6

    .line 1223
    .local v6, appWidgetIds:[I
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1224
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1226
    const/4 v13, 0x0

    .local v13, j:I
    :goto_3
    if-ge v13, v3, :cond_5

    .line 1227
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 1228
    .local v11, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object v1, v11

    iput-object v0, v1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 1229
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1231
    :try_start_0
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v18, v0

    move-object v0, v11

    iget v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v19, v0

    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    :cond_4
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1232
    :catch_0
    move-exception v18

    move-object/from16 v9, v18

    .line 1236
    .local v9, ex:Landroid/os/RemoteException;
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_4

    .line 1241
    .end local v9           #ex:Landroid/os/RemoteException;
    .end local v11           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    goto/16 :goto_2

    .line 1249
    .end local v3           #M:I
    .end local v5           #ai:Landroid/content/pm/ActivityInfo;
    .end local v6           #appWidgetIds:[I
    .end local v8           #component:Landroid/content/ComponentName;
    .end local v13           #j:I
    .end local v15           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v16           #parsed:Lcom/android/server/AppWidgetService$Provider;
    .end local v17           #ri:Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1250
    const/16 v18, 0x1

    sub-int v10, v4, v18

    :goto_5
    if-ltz v10, :cond_8

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppWidgetService$Provider;

    .line 1252
    .restart local v15       #p:Lcom/android/server/AppWidgetService$Provider;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 1254
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppWidgetService;->removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V

    .line 1250
    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 1257
    .end local v15           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_8
    return-void
.end method

.method writeStateToFileLocked(Ljava/io/File;)Z
    .locals 14
    .parameter "file"

    .prologue
    .line 870
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".tmp2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 872
    .local v10, tempFile2:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 873
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 876
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 877
    .local v2, fstr:Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 878
    .local v9, str:Ljava/io/BufferedOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 879
    .local v6, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v11, "utf-8"

    invoke-interface {v6, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 880
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 883
    const/4 v11, 0x0

    const-string v12, "gs"

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 885
    const/4 v8, 0x0

    .line 886
    .local v8, providerIndex:I
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 887
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 888
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppWidgetService$Provider;

    .line 889
    .local v7, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v11, v7, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 890
    const/4 v11, 0x0

    const-string v12, "p"

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 891
    const/4 v11, 0x0

    const-string v12, "pkg"

    iget-object v13, v7, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v13, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 892
    const/4 v11, 0x0

    const-string v12, "cl"

    iget-object v13, v7, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v13, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 893
    const/4 v11, 0x0

    const-string v12, "p"

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    iput v8, v7, Lcom/android/server/AppWidgetService$Provider;->tag:I

    .line 895
    add-int/lit8 v8, v8, 0x1

    .line 887
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 899
    .end local v7           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_2
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 900
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    .line 901
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Host;

    .line 902
    .local v3, host:Lcom/android/server/AppWidgetService$Host;
    const/4 v11, 0x0

    const-string v12, "h"

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 903
    const/4 v11, 0x0

    const-string v12, "pkg"

    iget-object v13, v3, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-interface {v6, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    const/4 v11, 0x0

    const-string v12, "id"

    iget v13, v3, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 905
    const/4 v11, 0x0

    const-string v12, "h"

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 906
    iput v4, v3, Lcom/android/server/AppWidgetService$Host;->tag:I

    .line 900
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 909
    .end local v3           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_3
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 910
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_5

    .line 911
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 912
    .local v5, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/4 v11, 0x0

    const-string v12, "g"

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 913
    const/4 v11, 0x0

    const-string v12, "id"

    iget v13, v5, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    const/4 v11, 0x0

    const-string v12, "h"

    iget-object v13, v5, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v13, v13, Lcom/android/server/AppWidgetService$Host;->tag:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 915
    iget-object v11, v5, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v11, :cond_4

    .line 916
    const/4 v11, 0x0

    const-string v12, "p"

    iget-object v13, v5, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget v13, v13, Lcom/android/server/AppWidgetService$Provider;->tag:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 918
    :cond_4
    const/4 v11, 0x0

    const-string v12, "g"

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 910
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 921
    .end local v5           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_5
    const/4 v11, 0x0

    const-string v12, "gs"

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 923
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 924
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 925
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 926
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 927
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 928
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 930
    :cond_6
    invoke-virtual {v10, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    const/4 v11, 0x1

    .line 933
    .end local v0           #N:I
    .end local v2           #fstr:Ljava/io/FileOutputStream;
    .end local v4           #i:I
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v8           #providerIndex:I
    .end local v9           #str:Ljava/io/BufferedOutputStream;
    :goto_3
    return v11

    .line 932
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 933
    .local v1, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_3
.end method
