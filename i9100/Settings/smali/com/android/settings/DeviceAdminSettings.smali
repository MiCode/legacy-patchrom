.class public Lcom/android/settings/DeviceAdminSettings;
.super Landroid/app/ListActivity;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;,
        Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    }
.end annotation


# instance fields
.field final mActiveAdmins:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    .line 124
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 68
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminSettings;->setContentView(I)V

    .line 69
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    .line 111
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 112
    const-class v2, Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminSettings;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->updateList()V

    .line 75
    return-void
.end method

.method updateList()V
    .locals 12

    .prologue
    const-string v11, "Skipping "

    const-string v10, "DeviceAdminSettings"

    .line 78
    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 79
    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    .line 80
    .local v2, cur:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_0

    .line 81
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 82
    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    .end local v5           #i:I
    :cond_0
    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, avail:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_3

    const/4 v7, 0x0

    move v1, v7

    .line 91
    .local v1, count:I
    :goto_1
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    if-ge v5, v1, :cond_4

    .line 92
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 94
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    :try_start_0
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v3, p0, v6}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 95
    .local v3, dpi:Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 96
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v3           #dpi:Landroid/app/admin/DeviceAdminInfo;
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 90
    .end local v1           #count:I
    .end local v5           #i:I
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v1, v7

    goto :goto_1

    .line 98
    .restart local v1       #count:I
    .restart local v5       #i:I
    .restart local v6       #ri:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 99
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "DeviceAdminSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 100
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 101
    .local v4, e:Ljava/io/IOException;
    const-string v7, "DeviceAdminSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 105
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    new-instance v8, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;

    invoke-direct {v8, p0}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;-><init>(Lcom/android/settings/DeviceAdminSettings;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    return-void
.end method
