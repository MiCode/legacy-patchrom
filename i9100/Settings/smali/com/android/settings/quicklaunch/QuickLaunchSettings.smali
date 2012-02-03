.class public Lcom/android/settings/quicklaunch/QuickLaunchSettings;
.super Landroid/preference/PreferenceActivity;
.source "QuickLaunchSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;
    }
.end annotation


# static fields
.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

.field private mBookmarksCursor:Landroid/database/Cursor;

.field private mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

.field private mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

.field private mClearDialogShortcut:C

.field private mShortcutGroup:Landroid/preference/PreferenceGroup;

.field private mShortcutToPreference:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/quicklaunch/ShortcutPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    .line 359
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/quicklaunch/QuickLaunchSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    return-void
.end method

.method private clearShortcut(C)V
    .locals 6
    .parameter "shortcut"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method private createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;
    .locals 2
    .parameter "shortcut"

    .prologue
    .line 261
    new-instance v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;-><init>(Landroid/content/Context;C)V

    .line 262
    .local v0, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 263
    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    return-object v0
.end method

.method private getOrCreatePreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;
    .locals 4
    .parameter "shortcut"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .line 252
    .local v0, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 256
    :goto_0
    return-object v1

    .line 255
    :cond_0
    const-string v1, "QuickLaunchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shortcut \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', creating preference anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0, p1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    move-result-object v1

    goto :goto_0
.end method

.method private initShortcutPreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 272
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 273
    .local v3, shortcutSeen:Landroid/util/SparseBooleanArray;
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 276
    .local v1, keyMap:Landroid/view/KeyCharacterMap;
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    sub-int v0, v4, v6

    .local v0, keyCode:I
    :goto_0
    if-ltz v0, :cond_2

    .line 279
    invoke-virtual {v1, v0}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 280
    .local v2, shortcut:C
    if-eqz v2, :cond_0

    invoke-virtual {v3, v2, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 285
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-virtual {v3, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 288
    invoke-direct {p0, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    goto :goto_1

    .line 290
    .end local v2           #shortcut:C
    :cond_2
    return-void
.end method

.method private declared-synchronized refreshShortcuts()V
    .locals 20

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;

    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .local v3, c:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 357
    :goto_0
    monitor-exit p0

    return-void

    .line 298
    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v16

    if-nez v16, :cond_1

    .line 299
    const-string v16, "QuickLaunchSettings"

    const-string v17, "Could not requery cursor when refreshing shortcuts."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    .end local v3           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 307
    .restart local v3       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    move-object v11, v0

    .line 308
    .local v11, noLongerBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 309
    .local v10, newBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 310
    const/16 v16, 0x0

    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v14

    .line 311
    .local v14, shortcut:C
    if-eqz v14, :cond_2

    .line 313
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getOrCreatePreference(C)Lcom/android/settings/quicklaunch/ShortcutPreference;

    move-result-object v13

    .line 314
    .local v13, pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/provider/Settings$Bookmarks;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 320
    .local v15, title:Ljava/lang/CharSequence;
    const-string v16, "intent"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 321
    .local v8, intentColumn:I
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 322
    .local v9, intentUri:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 324
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    :try_start_3
    invoke-static {v9}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 325
    .local v7, intent:Landroid/content/Intent;
    const/16 v16, 0x0

    move-object v0, v12

    move-object v1, v7

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 326
    .local v6, info:Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_3

    .line 327
    invoke-virtual {v6, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v15

    .line 333
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v13, v15}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 334
    const v16, 0x7f0803ea

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    const/16 v16, 0x1

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    .line 336
    const/16 v16, 0x1

    move-object v0, v10

    move v1, v14

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 337
    if-eqz v11, :cond_2

    .line 340
    const/16 v16, 0x0

    move-object v0, v11

    move v1, v14

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_1

    .line 329
    :catch_0
    move-exception v16

    move-object/from16 v4, v16

    .line 331
    .local v4, e:Ljava/net/URISyntaxException;
    const-string v16, "QuickLaunchSettings"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 343
    .end local v4           #e:Ljava/net/URISyntaxException;
    .end local v8           #intentColumn:I
    .end local v9           #intentUri:Ljava/lang/String;
    .end local v12           #packageManager:Landroid/content/pm/PackageManager;
    .end local v13           #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    .end local v14           #shortcut:C
    .end local v15           #title:Ljava/lang/CharSequence;
    :cond_4
    if-eqz v11, :cond_6

    .line 344
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v16

    const/16 v17, 0x1

    sub-int v5, v16, v17

    .local v5, i:I
    :goto_3
    if-ltz v5, :cond_6

    .line 345
    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 347
    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    move/from16 v0, v16

    int-to-char v0, v0

    move v14, v0

    .line 348
    .restart local v14       #shortcut:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .line 349
    .restart local v13       #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    if-eqz v13, :cond_5

    .line 350
    const/16 v16, 0x0

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    .line 344
    .end local v13           #pref:Lcom/android/settings/quicklaunch/ShortcutPreference;
    .end local v14           #shortcut:C
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 355
    .end local v5           #i:I
    :cond_6
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 356
    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private showClearDialog(Lcom/android/settings/quicklaunch/ShortcutPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->hasBookmark()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 184
    invoke-virtual {p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private updateShortcut(CLandroid/content/Intent;)V
    .locals 6
    .parameter "shortcut"
    .parameter "intent"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string v3, "@quicklaunch"

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    .line 248
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 226
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 231
    if-nez p3, :cond_1

    .line 232
    const-string v1, "QuickLaunchSettings"

    const-string v2, "Result from bookmark picker does not have an intent."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_1
    const-string v1, "com.android.settings.quicklaunch.SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    .line 236
    .local v0, shortcut:C
    invoke-direct {p0, v0, p3}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->updateShortcut(CLandroid/content/Intent;)V

    goto :goto_0

    .line 238
    .end local v0           #shortcut:C
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 189
    iget-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 191
    iget-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->clearShortcut(C)V

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 194
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->addPreferencesFromResource(I)V

    .line 107
    const-string v0, "shortcut_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;-><init>(Lcom/android/settings/quicklaunch/QuickLaunchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    .line 110
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->initShortcutPreferences()V

    .line 111
    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 113
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0803eb

    invoke-virtual {p0, v1}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803ec

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803ed

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803ee

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 218
    .local v0, pref:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-nez v1, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 221
    .end local v0           #pref:Landroid/preference/Preference;
    :goto_0
    return v1

    .line 220
    .restart local v0       #pref:Landroid/preference/Preference;
    :cond_0
    check-cast v0, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    invoke-direct {p0, v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->showClearDialog(Lcom/android/settings/quicklaunch/ShortcutPreference;)V

    .line 221
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 205
    instance-of v0, p2, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 208
    :cond_0
    check-cast p2, Lcom/android/settings/quicklaunch/ShortcutPreference;

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    const-string v1, "com.android.settings.quicklaunch.SHORTCUT"

    invoke-virtual {p2}, Lcom/android/settings/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v3

    .line 212
    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 168
    packed-switch p1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 170
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 171
    .local v1, alertDialog:Landroid/app/AlertDialog;
    const v2, 0x7f0803ec

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-char v5, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 134
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    .line 121
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    iget-object v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 142
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    iget-char v1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    return-void
.end method
