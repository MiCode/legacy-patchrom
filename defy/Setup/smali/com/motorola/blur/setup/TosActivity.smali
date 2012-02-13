.class public Lcom/motorola/blur/setup/TosActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "TosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final EXTERNAL_LAUNCH:Ljava/lang/String; = "com.motorola.blur.ACTION_LAUNCH_MOTO_SERVICE_AGREEMENT"

.field private static final READER_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TOS"

.field public static final TOS_TEXT:Ljava/lang/String; = "TosText"


# instance fields
.field private mDisableBack:Z

.field private mFinishActivity:Z

.field private mFromExternalApp:Z

.field private mNextButton:Landroid/widget/Button;

.field private mPRCCustomized:Z

.field private mSystemUpdateCase:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/setup/TosActivity;->mNextButton:Landroid/widget/Button;

    .line 51
    iput-boolean v1, p0, Lcom/motorola/blur/setup/TosActivity;->mFromExternalApp:Z

    .line 52
    iput-boolean v1, p0, Lcom/motorola/blur/setup/TosActivity;->mSystemUpdateCase:Z

    .line 53
    iput-boolean v1, p0, Lcom/motorola/blur/setup/TosActivity;->mDisableBack:Z

    .line 54
    iput-boolean v2, p0, Lcom/motorola/blur/setup/TosActivity;->mFinishActivity:Z

    .line 55
    iput-boolean v2, p0, Lcom/motorola/blur/setup/TosActivity;->mPRCCustomized:Z

    return-void
.end method

.method private copyBundledProviderIcons()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 292
    const/4 v6, 0x0

    .line 293
    .local v6, bundledIcon:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 294
    .local v9, providerIcon:Ljava/io/OutputStream;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "provider"

    aput-object v1, v2, v12

    const-string v1, "_id"

    aput-object v1, v2, v13

    .line 297
    .local v2, PROVIDER_INFO_PROJECTION:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 303
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 304
    .local v8, provider:Ljava/lang/String;
    const/4 v10, -0x1

    .line 305
    .local v10, providerId:I
    const/4 v11, -0x1

    .line 306
    .local v11, resId:I
    if-eqz v7, :cond_2

    .line 307
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 309
    :cond_0
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 310
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 311
    invoke-static {v8}, Lcom/motorola/blur/setup/DefaultIconHelper;->getBundledProviderIcon(Ljava/lang/String;)I

    move-result v11

    .line 312
    const/4 v1, -0x1

    if-eq v11, v1, :cond_1

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 315
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v10

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 316
    invoke-static {v6, v9}, Lcom/motorola/blur/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    invoke-static {v6}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 321
    invoke-static {v9}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 324
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_2
    return-void

    .line 317
    :catch_0
    move-exception v1

    .line 320
    invoke-static {v6}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 321
    invoke-static {v9}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    invoke-static {v6}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 321
    invoke-static {v9}, Lcom/motorola/blur/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1
.end method

.method private getTOSText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, tosText:Ljava/lang/String;
    const-string v2, "DeviceSetup"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/motorola/blur/setup/TosActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 274
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 275
    const-string v2, "TosText"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    :cond_1
    return-object v1
.end method

.method private initWidgets(Z)V
    .locals 20
    .parameter "checked"

    .prologue
    .line 84
    const v16, 0x7f0b0011

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/widget/ActionBar;

    .line 86
    .local v3, ab:Lcom/motorola/android/widget/ActionBar;
    const v16, 0x7f0c0004

    const/high16 v17, 0x7f0b

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v4

    .line 87
    .local v4, backButton:Landroid/widget/Button;
    const v16, 0x7f0c0003

    const v17, 0x7f0b0001

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v11

    .line 89
    .local v11, nextButton:Landroid/widget/Button;
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const-string v16, "DeviceSetup"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/TosActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 92
    .local v12, settings:Landroid/content/SharedPreferences;
    const-string v16, "BlurServiceSlientRegistrationSystemUpdateRequest"

    const/16 v17, 0x0

    move-object v0, v12

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/blur/setup/TosActivity;->mSystemUpdateCase:Z

    .line 93
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/TosActivity;->mSystemUpdateCase:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/TosActivity;->mFromExternalApp:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 97
    :cond_0
    const v16, 0x7f0c0057

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 99
    :cond_1
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/blur/setup/TosActivity;->mNextButton:Landroid/widget/Button;

    .line 100
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/TosActivity;->mPRCCustomized:Z

    move/from16 v16, v0

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/TosActivity;->mDisableBack:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 104
    invoke-virtual {v3, v4}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 106
    :cond_2
    invoke-virtual {v3, v11}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/blur/setup/TosActivity;->mPRCCustomized:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 109
    const v16, 0x7f0b010e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 110
    .local v15, tosTitle:Landroid/widget/TextView;
    if-eqz v15, :cond_3

    .line 111
    const v16, 0x7f0c0185

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/TosActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_3
    const v16, 0x7f0b010f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 113
    .local v14, tosText:Landroid/widget/TextView;
    if-eqz v14, :cond_4

    .line 114
    const v16, 0x7f0c0186

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/TosActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_4
    const v16, 0x7f0b0110

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 116
    .local v7, cb1:Landroid/view/View;
    if-eqz v7, :cond_5

    .line 117
    const/16 v16, 0x8

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_5
    const v16, 0x7f0b0113

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 119
    .local v8, cb2:Landroid/view/View;
    if-eqz v8, :cond_6

    .line 120
    const/16 v16, 0x8

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .end local v7           #cb1:Landroid/view/View;
    .end local v8           #cb2:Landroid/view/View;
    .end local v14           #tosText:Landroid/widget/TextView;
    .end local v15           #tosTitle:Landroid/widget/TextView;
    :cond_6
    :goto_0
    sget-boolean v16, Lcom/motorola/blur/setup/TosActivity;->mSilentRegistrationRequired:Z

    if-nez v16, :cond_7

    .line 144
    const v16, 0x7f0b0029

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/motorola/blur/setup/ProgressBadge;

    .line 145
    .local v5, badge:Lcom/motorola/blur/setup/ProgressBadge;
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ProgressBadge;->setVisibility(I)V

    .line 147
    .end local v5           #badge:Lcom/motorola/blur/setup/ProgressBadge;
    :cond_7
    return-void

    .line 122
    :cond_8
    const v16, 0x7f0b0111

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 123
    .local v6, button:Landroid/widget/Button;
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget-boolean v16, Lcom/motorola/blur/setup/TosActivity;->mSilentRegistrationRequired:Z

    if-eqz v16, :cond_9

    .line 125
    const v16, 0x7f0c0022

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 126
    const v16, 0x7f0b010e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 127
    .local v13, text:Landroid/widget/TextView;
    const v16, 0x7f0c0026

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    const v16, 0x7f0b0112

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 129
    const v16, 0x7f0b010f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #text:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 130
    .restart local v13       #text:Landroid/widget/TextView;
    const v16, 0x7f0c0021

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    const v16, 0x7f0b010c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    .line 136
    .end local v13           #text:Landroid/widget/TextView;
    :cond_9
    const v16, 0x7f0b0114

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 137
    .local v9, check:Landroid/widget/CheckBox;
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    move-object v0, v9

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    const v16, 0x7f0b0115

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 141
    .local v10, checkboxText:Landroid/widget/TextView;
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private launchReader(II)V
    .locals 2
    .parameter "titleId"
    .parameter "textId"

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/LegalReaderActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 259
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/TosActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 244
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/setup/SetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 246
    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->finish()V

    .line 249
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/motorola/blur/setup/TosActivity;->mDisableBack:Z

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->goBack()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/motorola/blur/setup/TosActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/TosActivity;->mFinishActivity:Z

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 156
    :sswitch_0
    iget-boolean v0, p0, Lcom/motorola/blur/setup/TosActivity;->mFromExternalApp:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/motorola/blur/setup/TosActivity;->mSystemUpdateCase:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 157
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/TosActivity;->setResult(I)V

    .line 158
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->finish()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->goBack()V

    goto :goto_0

    .line 165
    :sswitch_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v9, i:Landroid/content/Intent;
    sget-boolean v0, Lcom/motorola/blur/setup/TosActivity;->mSilentRegistrationRequired:Z

    if-nez v0, :cond_3

    .line 167
    const-class v0, Lcom/motorola/blur/setup/NewBlurNameActivity;

    invoke-virtual {v9, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v9}, Lcom/motorola/blur/setup/TosActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/TosActivity;->setResult(I)V

    .line 223
    :goto_1
    iget-boolean v0, p0, Lcom/motorola/blur/setup/TosActivity;->mFinishActivity:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->finish()V

    goto :goto_0

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/motorola/blur/setup/TosActivity;->copyBundledProviderIcons()V

    .line 176
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tos_accepted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/provider/DeviceSetup$AppSettings;->setAppSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    iget-boolean v0, p0, Lcom/motorola/blur/setup/TosActivity;->mFromExternalApp:Z

    if-eqz v0, :cond_4

    .line 179
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/TosActivity;->setResult(I)V

    goto :goto_1

    .line 180
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/blur/setup/TosActivity;->mSystemUpdateCase:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 181
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.deviceinfo.CheckUpdate"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v9}, Lcom/motorola/blur/setup/TosActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/TosActivity;->setResult(I)V

    goto :goto_1

    .line 185
    :cond_5
    const/4 v12, 0x1

    .line 186
    .local v12, result:I
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 187
    .local v10, intent:Landroid/content/Intent;
    if-eqz v10, :cond_6

    .line 188
    const-string v0, "provider"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, provider:Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 190
    invoke-static {p0, v11}, Lcom/motorola/blur/provider/GAMSHelper;->composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, accountType:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/TosActivity;->mFinishActivity:Z

    .line 193
    const/4 v12, -0x1

    .line 194
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v4, accountBundle:Landroid/os/Bundle;
    const-string v0, "addSingleAccount"

    const-string v2, "addSingleAccount"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/motorola/blur/setup/TosActivity$1;

    invoke-direct {v6, p0, v1}, Lcom/motorola/blur/setup/TosActivity$1;-><init>(Lcom/motorola/blur/setup/TosActivity;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 220
    .end local v1           #accountType:Ljava/lang/String;
    .end local v4           #accountBundle:Landroid/os/Bundle;
    .end local v11           #provider:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v12}, Lcom/motorola/blur/setup/TosActivity;->setResult(I)V

    goto :goto_1

    .line 229
    .end local v9           #i:Landroid/content/Intent;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #result:I
    :sswitch_2
    sget-boolean v0, Lcom/motorola/blur/setup/TosActivity;->mSilentRegistrationRequired:Z

    if-eqz v0, :cond_7

    const v0, 0x7f0c0023

    :goto_2
    const v1, 0x7f0c00fe

    invoke-direct {p0, v0, v1}, Lcom/motorola/blur/setup/TosActivity;->launchReader(II)V

    goto/16 :goto_0

    :cond_7
    const v0, 0x7f0c001f

    goto :goto_2

    .line 235
    :sswitch_3
    const v0, 0x7f0b0114

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 236
    .local v8, check:Landroid/widget/CheckBox;
    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0000 -> :sswitch_0
        0x7f0b0001 -> :sswitch_1
        0x7f0b0111 -> :sswitch_2
        0x7f0b0115 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v2, 0x7f030047

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/TosActivity;->setContentView(I)V

    .line 61
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/motorola/blur/setup/TosActivity;->mSilentRegistrationRequired:Z

    .line 62
    invoke-virtual {p0}, Lcom/motorola/blur/setup/TosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, act:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "com.motorola.blur.ACTION_LAUNCH_MOTO_SERVICE_AGREEMENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iput-boolean v3, p0, Lcom/motorola/blur/setup/TosActivity;->mFromExternalApp:Z

    .line 67
    :cond_0
    const-string v2, "DisableCancel"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 68
    iput-boolean v3, p0, Lcom/motorola/blur/setup/TosActivity;->mDisableBack:Z

    .line 70
    :cond_1
    invoke-direct {p0, v4}, Lcom/motorola/blur/setup/TosActivity;->initWidgets(Z)V

    .line 71
    return-void
.end method
