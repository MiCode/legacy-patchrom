.class public Lcom/android/settings/ActivityPicker;
.super Lcom/android/internal/app/AlertActivity;
.source "ActivityPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ActivityPicker$EmptyDrawable;,
        Lcom/android/settings/ActivityPicker$IconResizer;,
        Lcom/android/settings/ActivityPicker$PickAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

.field private mBaseIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 432
    return-void
.end method


# virtual methods
.method protected getIntentForPosition(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/settings/ActivityPicker;->mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/ActivityPicker$PickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    .line 134
    .local v0, item:Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    iget-object v1, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->getIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected getItems()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 146
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v6, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 150
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 152
    .local v8, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 155
    .local v4, icons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_0

    .line 156
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_0

    .line 157
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 158
    .local v7, label:Ljava/lang/String;
    const/4 v2, 0x0

    .line 162
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent$ShortcutIconResource;

    .line 163
    .local v3, iconResource:Landroid/content/Intent$ShortcutIconResource;
    iget-object v11, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 165
    .local v10, res:Landroid/content/res/Resources;
    iget-object v11, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 172
    .end local v3           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v10           #res:Landroid/content/res/Resources;
    :goto_1
    new-instance v11, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v11, p0, v7, v2}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 169
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "ActivityPicker"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 177
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #i:I
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #label:Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    if-eqz v11, :cond_1

    .line 178
    iget-object v11, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    invoke-virtual {p0, v11, v6}, Lcom/android/settings/ActivityPicker;->putIntentItems(Landroid/content/Intent;Ljava/util/List;)V

    .line 181
    :cond_1
    return-object v6
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ActivityPicker;->setResult(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->finish()V

    .line 126
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 115
    invoke-virtual {p0, p2}, Lcom/android/settings/ActivityPicker;->getIntentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/ActivityPicker;->setResult(ILandroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->finish()V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const-string v7, "android.intent.extra.TITLE"

    .line 77
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 83
    .local v3, parcel:Landroid/os/Parcelable;
    instance-of v4, v3, Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 84
    check-cast v3, Landroid/content/Intent;

    .end local v3           #parcel:Landroid/os/Parcelable;
    iput-object v3, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ActivityPicker;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 92
    .local v2, params:Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 93
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 96
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getItems()Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    new-instance v4, Lcom/android/settings/ActivityPicker$PickAdapter;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/ActivityPicker$PickAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/settings/ActivityPicker;->mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

    .line 105
    iget-object v4, p0, Lcom/android/settings/ActivityPicker;->mAdapter:Lcom/android/settings/ActivityPicker$PickAdapter;

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->setupAlert()V

    .line 108
    return-void

    .line 86
    .end local v1           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    .end local v2           #params:Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v3       #parcel:Landroid/os/Parcelable;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    .line 87
    iget-object v4, p0, Lcom/android/settings/ActivityPicker;->mBaseIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 99
    .end local v3           #parcel:Landroid/os/Parcelable;
    .restart local v2       #params:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method protected putIntentItems(Landroid/content/Intent;Ljava/util/List;)V
    .locals 6
    .parameter "baseIntent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    invoke-virtual {p0}, Lcom/android/settings/ActivityPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 189
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v5, v3}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 194
    .local v2, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 195
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 196
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method
