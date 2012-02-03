.class public Lcom/android/settings/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$3;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mIsNoItemScreen:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mNoItemView:Landroid/view/ViewGroup;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mSelectedKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 94
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsNoItemScreen:Z

    .line 109
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 432
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 347
    return-void
.end method

.method private fillList()V
    .locals 21

    .prologue
    .line 210
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "numeric=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "gsm.sim.operator.numeric"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\" AND current=1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 220
    .local v16, where:Ljava/lang/String;
    sget-object v17, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "_id"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "name"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string v20, "apn"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string v20, "type"

    aput-object v20, v18, v19

    const-string v19, "name ASC"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ApnSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 224
    .local v7, cursor:Landroid/database/Cursor;
    const-string v17, "apn_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 225
    .local v6, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 227
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnSettings;->mIsNoItemScreen:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->updateNoItemScreen()V

    .line 232
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v10, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 235
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 236
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_6

    .line 237
    const/16 v17, 0x1

    move-object v0, v7

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 238
    .local v11, name:Ljava/lang/String;
    const/16 v17, 0x2

    move-object v0, v7

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, apn:Ljava/lang/String;
    const/16 v17, 0x0

    move-object v0, v7

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, key:Ljava/lang/String;
    const/16 v17, 0x3

    move-object v0, v7

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 242
    .local v15, type:Ljava/lang/String;
    new-instance v12, Lcom/android/settings/ApnPreference;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 244
    .local v12, pref:Lcom/android/settings/ApnPreference;
    invoke-virtual {v12, v9}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v12, v11}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v12, v5}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    const/16 v17, 0x0

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 248
    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 250
    const/4 v14, 0x1

    .line 261
    .local v14, selectable:Z
    if-eqz v15, :cond_1

    const-string v17, "mms"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "dun"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    :cond_1
    const/16 v17, 0x1

    move/from16 v14, v17

    .line 265
    :goto_1
    invoke-virtual {v12, v14}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 266
    if-eqz v14, :cond_5

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 268
    invoke-virtual {v12}, Lcom/android/settings/ApnPreference;->setChecked()V

    .line 290
    :cond_2
    const-string v17, "ApnSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "APN is added "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v6, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnSettings;->mIsNoItemScreen:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->updateNoItemScreen()V

    .line 303
    :cond_3
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 261
    :cond_4
    const/16 v17, 0x0

    move/from16 v14, v17

    goto :goto_1

    .line 301
    :cond_5
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 305
    .end local v5           #apn:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #pref:Lcom/android/settings/ApnPreference;
    .end local v14           #selectable:Z
    .end local v15           #type:Ljava/lang/String;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 307
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/preference/Preference;

    .line 308
    .local v13, preference:Landroid/preference/Preference;
    invoke-virtual {v6, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 310
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ApnSettings;->mIsNoItemScreen:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->updateNoItemScreen()V

    goto :goto_3

    .line 315
    .end local v13           #preference:Landroid/preference/Preference;
    :cond_8
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter

    .prologue
    .line 143
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v0, p0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, key:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v6

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settings/ApnSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 382
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 383
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 384
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 387
    return-object v1
.end method

.method private restoreDefaultApn()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 391
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    .line 392
    sput-boolean v4, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 394
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 395
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-nez v1, :cond_1

    .line 399
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, restoreDefaultApnThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 402
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 406
    .end local v0           #restoreDefaultApnThread:Landroid/os/HandlerThread;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 408
    return v4
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 369
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 372
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 153
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mNoItemView:Landroid/view/ViewGroup;

    .line 157
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mNoItemView:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ApnSettings;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iput-boolean v4, p0, Lcom/android/settings/ApnSettings;->mIsNoItemScreen:Z

    .line 161
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 168
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 457
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 458
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 460
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 461
    new-instance v1, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v1, v0

    .line 477
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 319
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 323
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 326
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 342
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 333
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    move v0, v1

    .line 334
    goto :goto_0

    .line 337
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    move v0, v1

    .line 338
    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 358
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 362
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 365
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 351
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 352
    .local v0, pos:I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 353
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 354
    const/4 v2, 0x1

    return v2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 482
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 485
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method

.method protected updateNoItemScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current No Item screen? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/ApnSettings;->mIsNoItemScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsNoItemScreen:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mNoItemView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 177
    iput-boolean v3, p0, Lcom/android/settings/ApnSettings;->mIsNoItemScreen:Z

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mNoItemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mIsNoItemScreen:Z

    goto :goto_0
.end method
