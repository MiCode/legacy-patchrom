.class public Lcom/android/settings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# instance fields
.field SetFontToAlert:Landroid/app/AlertDialog;

.field private context:Landroid/content/Context;

.field private mBuyButtonClicked:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    .line 66
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 70
    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 73
    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFileCopying:Z

    .line 82
    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    .line 85
    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogLeftPadding:I

    .line 87
    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogTopPadding:I

    .line 89
    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogRightPadding:I

    .line 91
    iput v3, p0, Lcom/android/settings/flipfont/FontListPreference;->mDialogBottomPadding:I

    .line 96
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 98
    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 109
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 110
    const-string v0, "MONOTYPE"

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 111
    const v0, 0x7f080527

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setTitle(I)V

    .line 112
    const v0, 0x7f080528

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setSummary(I)V

    .line 113
    const v0, 0x7f080529

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 114
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    .line 115
    const v0, 0x7f020018

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogIcon(I)V

    .line 117
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/flipfont/FontListPreference;Lcom/android/settings/flipfont/FontListAdapter;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method


# virtual methods
.method public loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 490
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "SelectDialogIsActive"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 491
    const-string v2, "SavedClickedItem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 492
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 4

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 317
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 319
    .local v1, v:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 320
    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 323
    .end local v1           #v:Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 333
    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 335
    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v4, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/4 v4, -0x2

    if-ne p2, v4, :cond_3

    .line 340
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 341
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    .line 343
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 348
    :cond_3
    const/4 v2, 0x0

    .line 349
    .local v2, question:Ljava/lang/String;
    const/4 v1, 0x0

    .line 350
    .local v1, fontName:Ljava/lang/String;
    iput p2, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 351
    if-ge p2, v7, :cond_4

    .line 352
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08052c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 354
    .local v3, s:Ljava/lang/String;
    move-object v2, v3

    .line 365
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f080002

    new-instance v5, Lcom/android/settings/flipfont/FontListPreference$3;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListPreference$3;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080003

    new-instance v6, Lcom/android/settings/flipfont/FontListPreference$2;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListPreference$2;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    new-instance v4, Lcom/android/settings/flipfont/FontListPreference$4;

    invoke-direct {v4, p0}, Lcom/android/settings/flipfont/FontListPreference$4;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    .line 389
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 390
    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 391
    iput-boolean v7, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    goto :goto_0

    .line 356
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08052b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 358
    .restart local v3       #s:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v4, :cond_5

    .line 359
    new-instance v4, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 360
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 362
    :cond_5
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v4, v5}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 447
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 448
    iget-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08052d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 451
    .local v1, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 453
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "samsungapps://CategoryList/0000002194"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 457
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 458
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 460
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onOkButtonPressed()V
    .locals 30

    .prologue
    .line 225
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : mClickedItem : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 231
    :goto_0
    const-string v27, "FontListPreference"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 234
    .local v25, selectedFont:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 238
    new-instance v14, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v14}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 239
    .local v14, fontWriter:Lcom/android/settings/flipfont/FontWriter;
    if-eqz v25, :cond_0

    const-string v27, "default"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 241
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "sans.loc"

    const-string v29, "default"

    move-object v0, v14

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-nez v25, :cond_2

    .line 244
    const-string v27, "FontListPreference"

    const-string v28, "onOkButtonPressed() : selectedFont == null "

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_1
    return-void

    .line 229
    .end local v14           #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    .end local v25           #selectedFont:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_0

    .line 249
    .restart local v14       #fontWriter:Lcom/android/settings/flipfont/FontWriter;
    .restart local v25       #selectedFont:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v24

    .line 251
    .local v24, sansTypeface:Lcom/android/settings/flipfont/Typeface;
    const-string v27, ".xml"

    const-string v28, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 252
    .local v15, fontdir:Ljava/lang/String;
    const-string v27, " "

    const-string v28, "-"

    move-object v0, v15

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object v0, v14

    move-object/from16 v1, v27

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 255
    .local v13, fontDir:Ljava/io/File;
    const/16 v26, 0x0

    .line 256
    .local v26, tpf:Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v24, :cond_3

    .line 257
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 258
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v26, Lcom/android/settings/flipfont/TypefaceFile;

    .line 261
    .restart local v26       #tpf:Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 263
    .local v8, apkname:Ljava/lang/String;
    const-string v27, "FlipFont"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onOkButtonPressed : Application name, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v22

    .line 266
    .local v22, res:Landroid/content/res/Resources;
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    .line 267
    .local v9, assetManager:Landroid/content/res/AssetManager;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "fonts/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object v0, v9

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 269
    .local v18, in:Ljava/io/InputStream;
    invoke-virtual/range {v26 .. v26}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v27

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v8           #apkname:Ljava/lang/String;
    .end local v9           #assetManager:Landroid/content/res/AssetManager;
    .end local v18           #in:Ljava/io/InputStream;
    .end local v22           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 270
    :catch_0
    move-exception v27

    move-object/from16 v12, v27

    .line 271
    .local v12, ex:Ljava/lang/Exception;
    const-string v27, "FlipFont"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception in file operation, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 276
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v16           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "sans.loc"

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    move-object v0, v14

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 280
    .local v7, am:Landroid/app/IActivityManager;
    invoke-interface {v7}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 281
    .local v10, config:Landroid/content/res/Configuration;
    new-instance v21, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-object/from16 v0, v21

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 282
    .local v21, randomizer:Ljava/util/Random;
    const/16 v20, 0x0

    .line 283
    .local v20, min:I
    const/16 v19, 0x2710

    .line 284
    .local v19, max:I
    sub-int v27, v19, v20

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v27

    add-int v27, v27, v20

    move/from16 v0, v27

    move-object v1, v10

    iput v0, v1, Landroid/content/res/Configuration;->FlipFont:I

    .line 285
    invoke-interface {v7, v10}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    .end local v7           #am:Landroid/app/IActivityManager;
    .end local v10           #config:Landroid/content/res/Configuration;
    .end local v19           #max:I
    .end local v20           #min:I
    .end local v21           #randomizer:Ljava/util/Random;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v28, "activity"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 295
    .local v5, activityManager:Landroid/app/ActivityManager;
    const/16 v27, 0x32

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 296
    .local v6, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v16, 0x1

    .line 297
    .restart local v16       #i:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 298
    .local v4, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object v0, v4

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 300
    .local v23, s:Ljava/lang/String;
    const-string v27, "com.android.settings"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v27

    if-eqz v27, :cond_4

    .line 301
    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_5

    .line 288
    .end local v4           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v5           #activityManager:Landroid/app/ActivityManager;
    .end local v6           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v16           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v23           #s:Ljava/lang/String;
    :catch_1
    move-exception v27

    move-object/from16 v11, v27

    .line 290
    .local v11, e:Landroid/os/RemoteException;
    const-string v27, "FlipFont"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Intentionally left blank, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 309
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v5       #activityManager:Landroid/app/ActivityManager;
    .restart local v6       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v16       #i:I
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListPreference;->restartLater()V

    goto/16 :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    const-string v5, "onPrepareDialogBuilder : selectedFont : "

    const-string v4, "MONOTYPE"

    const-string v3, "FontListPreference"

    .line 133
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 134
    const-string v1, "MONOTYPE"

    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, selectedFont:Ljava/lang/String;
    const-string v1, "FontListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v1, "FontListPreference"

    const-string v1, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v1, "MONOTYPE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    const-string v1, "FontListPreference"

    const-string v1, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-boolean v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    if-eqz v1, :cond_1

    .line 144
    const-string v0, "HelveticaNeueRegular.xml"

    .line 145
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 146
    const-string v1, "FontListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v1, "FontListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    iget v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v1, :cond_0

    .line 166
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    const v1, 0x7f08052a

    new-instance v2, Lcom/android/settings/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/flipfont/FontListPreference$1;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    return-void

    .line 151
    :cond_1
    const-string v0, "default"

    .line 152
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 153
    const-string v1, "FontListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v1, "FontListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_2
    const-string v1, "FontListPreference"

    const-string v1, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    .line 161
    const-string v1, "FontListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v1, "FontListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public restartLater()V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 217
    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 5

    .prologue
    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 476
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 478
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 479
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 481
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 482
    return-void
.end method

.method public selectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 396
    const/4 v3, 0x0

    .line 397
    .local v3, question:Ljava/lang/String;
    const/4 v2, 0x0

    .line 398
    .local v2, fontName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    .line 399
    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    .line 400
    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    if-ge v5, v8, :cond_0

    .line 401
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08052c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 403
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 410
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f080002

    new-instance v6, Lcom/android/settings/flipfont/FontListPreference$6;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListPreference$6;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080003

    new-instance v7, Lcom/android/settings/flipfont/FontListPreference$5;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListPreference$5;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    new-instance v5, Lcom/android/settings/flipfont/FontListPreference$7;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListPreference$7;-><init>(Lcom/android/settings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 433
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 435
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 436
    iget v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 437
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 439
    return-void

    .line 405
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08052b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 407
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    .line 408
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 191
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 199
    const v0, 0x7f08052e

    invoke-virtual {p0, v0}, Lcom/android/settings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 201
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->loadPreferences()V

    .line 203
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListPreference;->selectDialog()V

    .line 208
    :cond_2
    return-void
.end method
