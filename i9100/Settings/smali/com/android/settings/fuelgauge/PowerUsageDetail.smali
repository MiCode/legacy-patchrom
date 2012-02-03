.class public Lcom/android/settings/fuelgauge/PowerUsageDetail;
.super Landroid/app/Activity;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageDetail$2;,
        Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;
    }
.end annotation


# static fields
.field private static sDrainTypeDesciptions:[I


# instance fields
.field private mActionButton:Landroid/widget/Button;

.field mApp:Landroid/content/pm/ApplicationInfo;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/view/ViewGroup;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field private mForceStopButton:Landroid/widget/Button;

.field private mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

.field mInstaller:Landroid/content/ComponentName;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mReportButton:Landroid/widget/Button;

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x4bt 0x4t 0x8t 0x7ft
        0x4ct 0x4t 0x8t 0x7ft
        0x4at 0x4t 0x8t 0x7ft
        0x50t 0x4t 0x8t 0x7ft
        0x52t 0x4t 0x8t 0x7ft
        0x4et 0x4t 0x8t 0x7ft
        0x55t 0x4t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 406
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addControl(III)V
    .locals 7
    .parameter "title"
    .parameter "summary"
    .parameter "action"

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 374
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 375
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03003c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 376
    .local v2, item:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 377
    const v5, 0x7f0b0042

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 378
    .local v0, actionButton:Landroid/widget/Button;
    const v5, 0x7f0b00a5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 379
    .local v4, summaryView:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 383
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mActionButton:Landroid/widget/Button;

    .line 384
    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 424
    :goto_0
    return-void

    .line 418
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 420
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private createDetails()V
    .locals 21

    .prologue
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 148
    .local v12, intent:Landroid/content/Intent;
    const-string v17, "title"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    .line 149
    const-string v17, "percent"

    const/16 v18, 0x1

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 150
    .local v14, percentage:I
    const-string v17, "gauge"

    const/16 v18, 0x1

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 151
    .local v8, gaugeValue:I
    const-string v17, "since"

    const/16 v18, 0x1

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 152
    const-string v17, "uid"

    const/16 v18, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 153
    const-string v17, "drainType"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 154
    const-string v17, "noCoverage"

    const-wide/16 v18, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 155
    const-string v17, "iconPackage"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, iconPackage:Ljava/lang/String;
    const-string v17, "iconId"

    const/16 v18, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 157
    .local v9, iconId:I
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 159
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 160
    .local v15, pm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move-object v0, v15

    move-object v1, v11

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    .line 161
    .local v4, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 176
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getDescriptionForDrainType()Ljava/lang/String;

    move-result-object v16

    .line 177
    .local v16, summary:Ljava/lang/String;
    const v17, 0x7f0b00a5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const-string v17, "types"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 180
    const-string v17, "values"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 182
    const v17, 0x7f0b0043

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const v17, 0x7f0b00a8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v17, "%d%%"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v17, 0x7f0b00aa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    .line 188
    const v17, 0x7f0b0129

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    .line 189
    const v17, 0x7f0b012a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    const v17, 0x7f0b00a9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 193
    .local v7, gaugeImage:Landroid/widget/ImageView;
    new-instance v17, Lcom/android/settings/fuelgauge/PercentageBar;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings/fuelgauge/PercentageBar;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    move-object/from16 v17, v0

    move v0, v8

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PercentageBar;->percent:D

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/high16 v19, 0x7f02

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PercentageBar;->bar:Landroid/graphics/drawable/Drawable;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    const v17, 0x7f0b0021

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 199
    .local v10, iconImage:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    const v17, 0x7f0b00ab

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 202
    const v17, 0x7f0b00ac

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move/from16 v17, v0

    const/16 v18, 0x2710

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f08036a

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x104039e

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "send_action_app_error"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 219
    .local v6, enabled:I
    if-eqz v6, :cond_5

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 222
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    const/16 v18, 0x1

    :goto_2
    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    .end local v6           #enabled:I
    :goto_3
    return-void

    .line 164
    .end local v7           #gaugeImage:Landroid/widget/ImageView;
    .end local v10           #iconImage:Landroid/widget/ImageView;
    .end local v16           #summary:Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v13, v17

    .line 166
    .local v13, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "PowerUsageDetail"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name is not found, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    .end local v13           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    if-eqz v9, :cond_0

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 225
    .restart local v6       #enabled:I
    .restart local v7       #gaugeImage:Landroid/widget/ImageView;
    .restart local v10       #iconImage:Landroid/widget/ImageView;
    .restart local v16       #summary:Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v5, v17

    .line 226
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "PowerUsageDetail"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name is not found, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 229
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 231
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 234
    .end local v6           #enabled:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3
.end method

.method private doAction(I)V
    .locals 5
    .parameter

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 245
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 254
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 257
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "package"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 259
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 263
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 266
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    .line 269
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .locals 13
    .parameter "uid"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 311
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, packages:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 314
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_2

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v3, v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v4, v7

    .line 318
    :goto_0
    if-eqz v4, :cond_3

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v7

    .line 319
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v0, :cond_5

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    move v1, v11

    .line 321
    .local v1, isSystem:Z
    :goto_2
    const/4 v6, 0x1

    .line 322
    .local v6, removeHeader:Z
    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 367
    :cond_0
    :goto_3
    if-eqz v6, :cond_1

    .line 368
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 370
    :cond_1
    return-void

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #isSystem:Z
    .end local v6           #removeHeader:Z
    :cond_2
    move-object v4, v12

    .line 314
    goto :goto_0

    .line 315
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 316
    .local v2, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "PowerUsageDetail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package name is not found, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move-object v0, v12

    .line 318
    goto :goto_1

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_4
    move v1, v10

    .line 319
    goto :goto_2

    :cond_5
    move v1, v10

    goto :goto_2

    .line 325
    .restart local v1       #isSystem:Z
    .restart local v6       #removeHeader:Z
    :pswitch_0
    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    .line 326
    const v7, 0x7f080445

    const v8, 0x7f080456

    const/4 v9, 0x5

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 328
    const/4 v6, 0x0

    .line 332
    :cond_6
    iget-boolean v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v7, :cond_0

    .line 333
    const v7, 0x7f0800fd

    const v8, 0x7f080457

    const/4 v9, 0x6

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 335
    const/4 v6, 0x0

    goto :goto_3

    .line 339
    :pswitch_1
    const v7, 0x7f080249

    const v8, 0x7f08044f

    invoke-direct {p0, v7, v8, v11}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 342
    const/4 v6, 0x0

    .line 343
    goto :goto_3

    .line 345
    :pswitch_2
    const v7, 0x7f080164

    const v8, 0x7f080451

    const/4 v9, 0x2

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 348
    const/4 v6, 0x0

    .line 349
    goto :goto_3

    .line 351
    :pswitch_3
    const v7, 0x7f08012a

    const v8, 0x7f080453

    const/4 v9, 0x3

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 354
    const/4 v6, 0x0

    .line 355
    goto :goto_3

    .line 357
    :pswitch_4
    iget-wide v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v9, 0x4024

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    .line 358
    const v7, 0x7f0800e5

    const v8, 0x7f08044d

    const/4 v9, 0x4

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 361
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 278
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v7, :cond_1

    .line 279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v7, v7

    if-ge v0, v7, :cond_1

    .line 281
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v7, v7, v0

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_0

    .line 279
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v7, v7, v0

    invoke-virtual {p0, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, label:Ljava/lang/String;
    const/4 v5, 0x0

    .line 284
    .local v5, value:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v7, v7, v0

    packed-switch v7, :pswitch_data_0

    .line 296
    :goto_2
    :pswitch_0
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v7, v7, v0

    invoke-static {p0, v7, v8}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    .line 298
    :goto_3
    const v7, 0x7f03003d

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 300
    .local v2, item:Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 301
    const v7, 0x7f0b00a7

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 302
    .local v4, labelView:Landroid/widget/TextView;
    const v7, 0x7f0b0081

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 303
    .local v6, valueView:Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 287
    .end local v2           #item:Landroid/view/ViewGroup;
    .end local v4           #labelView:Landroid/widget/TextView;
    .end local v6           #valueView:Landroid/widget/TextView;
    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v7, v7, v0

    invoke-static {p0, v7, v8}, Lcom/android/settings/fuelgauge/Utils;->formatBytes(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    .line 288
    goto :goto_3

    .line 290
    :pswitch_2
    const-string v7, "%d%%"

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v10, v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 291
    goto :goto_3

    .line 293
    :pswitch_3
    iput-boolean v12, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_2

    .line 307
    .end local v0           #i:I
    .end local v3           #label:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    return-void

    .line 284
    :pswitch_data_0
    .packed-switch 0x7f08043b
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 12
    .parameter "uid"

    .prologue
    .line 453
    const/4 v9, 0x1

    if-ge p1, v9, :cond_1

    .line 454
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const v9, 0x7f0b00af

    invoke-virtual {p0, v9}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 458
    .local v7, packagesParent:Landroid/view/ViewGroup;
    if-eqz v7, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 461
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 463
    .local v8, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 464
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v9, v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 465
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_0

    .line 470
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_0

    .line 472
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v9, v9, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 473
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 475
    .local v5, label:Ljava/lang/CharSequence;
    if-eqz v5, :cond_4

    .line 476
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 481
    :cond_4
    const v9, 0x7f03003f

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 483
    .local v4, item:Landroid/view/ViewGroup;
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 484
    const v9, 0x7f0b00a7

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 485
    .local v6, labelView:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v4           #item:Landroid/view/ViewGroup;
    .end local v5           #label:Ljava/lang/CharSequence;
    .end local v6           #labelView:Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 487
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PowerUsageDetail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package name is not found, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getDescriptionForDrainType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private killProcesses()V
    .locals 3

    .prologue
    .line 397
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 404
    :goto_0
    return-void

    .line 398
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 400
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private removePackagesSection()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 388
    const v1, 0x7f0b00ae

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :cond_0
    const v1, 0x7f0b00af

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_1
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 427
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 450
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 430
    .local v2, report:Landroid/app/ApplicationErrorReport;
    const/4 v4, 0x3

    iput v4, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 431
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v6

    iput-object v4, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 432
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 433
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v6

    iput-object v4, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 435
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    move v4, v7

    :goto_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 438
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 439
    .local v0, batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;
    const-string v4, "percent"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 440
    const-string v4, "duration"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 441
    const-string v4, "report_details"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 442
    const-string v4, "report_checkin_details"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 443
    iput-object v0, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 445
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v3, result:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 447
    const-string v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 448
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0           #batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #result:Landroid/content/Intent;
    :cond_1
    move v4, v6

    .line 435
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 240
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->setContentView(I)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 132
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 510
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 138
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 139
    return-void
.end method
