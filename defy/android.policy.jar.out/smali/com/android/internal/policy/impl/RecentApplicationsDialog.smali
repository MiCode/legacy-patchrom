.class public Lcom/android/internal/policy/impl/RecentApplicationsDialog;
.super Landroid/app/Dialog;
.source "RecentApplicationsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DBG_FORCE_EMPTY_LIST:Z = false

.field private static final MAX_RECENT_TASKS:I = 0x10

.field private static final NUM_BUTTONS:I = 0x8

.field private static sStatusBar:Landroid/app/StatusBarManager;


# instance fields
.field mBroadcastIntentFilter:Landroid/content/IntentFilter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCleanup:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private mIconSize:I

.field final mIcons:[Landroid/widget/TextView;

.field mNoAppsText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v1, 0x10300a9

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, resources:Landroid/content/res/Resources;
    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIconSize:I

    return-void
.end method

.method private reloadButtons()V
    .locals 24

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .local v16, pm:Landroid/content/pm/PackageManager;
    const-string v21, "activity"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .local v6, am:Landroid/app/ActivityManager;
    const/16 v21, 0x10

    const/16 v22, 0x2

    move-object v0, v6

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v17

    .local v17, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "android.intent.category.HOME"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .local v8, homeInfo:Landroid/content/pm/ActivityInfo;
    new-instance v11, Lcom/android/internal/policy/impl/IconUtilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/IconUtilities;-><init>(Landroid/content/Context;)V

    .local v11, iconUtilities:Lcom/android/internal/policy/impl/IconUtilities;
    const/4 v12, 0x0

    .local v12, index:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    .local v15, numTasks:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v15, :cond_3

    const/16 v21, 0x8

    move v0, v12

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v17

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    .local v13, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v14, Landroid/content/Intent;

    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v14, intent:Landroid/content/Intent;
    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object v0, v13

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    if-eqz v8, :cond_2

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object v0, v8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v21

    const v22, -0x200001

    and-int v21, v21, v22

    const/high16 v22, 0x1000

    or-int v21, v21, v22

    move-object v0, v14

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object v1, v14

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .local v18, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    .local v5, activityInfo:Landroid/content/pm/ActivityInfo;
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .local v19, title:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .local v10, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_1

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v21, v0

    aget-object v20, v21, v12

    .local v20, tv:Landroid/widget/TextView;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v10}, Lcom/android/internal/policy/impl/IconUtilities;->createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v10

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setPressed(Z)V

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->clearFocus()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v5           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v13           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v18           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #tv:Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    move-object/from16 v21, v0

    if-nez v12, :cond_4

    const/16 v22, 0x0

    :goto_2
    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const/16 v21, 0x8

    move v0, v12

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    const/16 v22, 0x8

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .local v1, b:Landroid/widget/TextView;
    if-ne v1, p1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    const/high16 v6, 0x10

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #b:Landroid/widget/TextView;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->dismiss()V

    return-void

    .restart local v1       #b:Landroid/widget/TextView;
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v6

    move-object v2, v6

    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "Recent"

    const-string v7, "Unable to launch recent task"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/high16 v12, 0x2

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, context:Landroid/content/Context;
    sget-object v7, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-nez v7, :cond_0

    const-string v7, "statusbar"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    sput-object v7, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .local v6, window:Landroid/view/Window;
    invoke-virtual {v6, v10}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v6, v12, v12}, Landroid/view/Window;->setFlags(II)V

    const-string v7, "Recents"

    invoke-virtual {v6, v7}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    const v7, 0x1090054

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->setContentView(I)V

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v6, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v6, v9, v11}, Landroid/view/Window;->setFlags(II)V

    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const v7, 0x1020244

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const v7, 0x1020019

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v10

    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const v7, 0x102001a

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v11

    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x3

    const v7, 0x102001b

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x4

    const v7, 0x1020245

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x5

    const v7, 0x1020246

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x6

    const v7, 0x1020247

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x7

    const v7, 0x1020248

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    const v7, 0x1020243

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .local v1, b:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #b:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->reloadButtons()V

    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
