.class public Lcom/android/settings/AppWidgetPickActivity;
.super Lcom/android/settings/ActivityPicker;
.source "AppWidgetPickActivity.java"


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/ActivityPicker;-><init>()V

    return-void
.end method


# virtual methods
.method protected getItems()Ljava/util/List;
    .locals 2
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
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    invoke-virtual {p0, v0}, Lcom/android/settings/AppWidgetPickActivity;->putInstalledAppWidgets(Ljava/util/List;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/settings/AppWidgetPickActivity;->putCustomAppWidgets(Ljava/util/List;)V

    .line 212
    new-instance v1, Lcom/android/settings/AppWidgetPickActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AppWidgetPickActivity$1;-><init>(Lcom/android/settings/AppWidgetPickActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 140
    invoke-virtual {p0, p2}, Lcom/android/settings/AppWidgetPickActivity;->getIntentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 143
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 146
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 161
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    .line 162
    return-void

    .line 149
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v4, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v2, -0x1

    .line 159
    .local v2, result:I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_0

    .line 151
    .end local v2           #result:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 157
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    .restart local v2       #result:I
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    const-string v3, "appWidgetId"

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/ActivityPicker;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    goto :goto_0
.end method

.method putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, appWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, customExtras:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    if-nez p1, :cond_1

    .line 197
    :cond_0
    return-void

    .line 171
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 172
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 173
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 175
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 176
    .local v4, label:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 178
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v6, :cond_2

    .line 179
    iget-object v6, p0, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    if-nez v1, :cond_2

    .line 181
    const-string v6, "AppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load icon drawable 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    new-instance v3, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v3, p0, v4, v1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 188
    .local v3, item:Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    .line 189
    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    .line 191
    if-eqz p2, :cond_3

    .line 192
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    iput-object v6, v3, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    .line 195
    :cond_3
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method putCustomAppWidgets(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    const-string v9, "AppWidgetPickActivity"

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 86
    .local v4, extras:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 87
    .local v2, customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v0, 0x0

    .line 89
    .local v0, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v7, "customInfo"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 91
    :cond_0
    const-string v7, "AppWidgetPickActivity"

    const-string v7, "EXTRA_CUSTOM_INFO not present."

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/settings/AppWidgetPickActivity;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 133
    return-void

    .line 95
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 96
    .local v3, customInfoSize:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 97
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 98
    .local v6, p:Landroid/os/Parcelable;
    if-eqz v6, :cond_3

    instance-of v7, v6, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v7, :cond_4

    .line 99
    :cond_3
    const/4 v2, 0x0

    .line 100
    const-string v7, "AppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 105
    .end local v6           #p:Landroid/os/Parcelable;
    :cond_5
    const-string v7, "customExtras"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    if-nez v0, :cond_6

    .line 107
    const/4 v2, 0x0

    .line 108
    const-string v7, "AppWidgetPickActivity"

    const-string v7, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 113
    .local v1, customExtrasSize:I
    if-eq v3, v1, :cond_7

    .line 114
    const-string v7, "AppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_7
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_1

    .line 121
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 122
    .restart local v6       #p:Landroid/os/Parcelable;
    if-eqz v6, :cond_8

    instance-of v7, v6, Landroid/os/Bundle;

    if-nez v7, :cond_9

    .line 123
    :cond_8
    const/4 v2, 0x0

    .line 124
    const/4 v0, 0x0

    .line 125
    const-string v7, "AppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method putInstalledAppWidgets(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/ActivityPicker$PickAdapter$Item;>;"
    iget-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, installed:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/AppWidgetPickActivity;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 228
    return-void
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3
    .parameter "code"
    .parameter "intent"

    .prologue
    .line 236
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 237
    .local v0, result:Landroid/content/Intent;
    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/AppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    .line 239
    return-void

    .line 236
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    goto :goto_0
.end method
