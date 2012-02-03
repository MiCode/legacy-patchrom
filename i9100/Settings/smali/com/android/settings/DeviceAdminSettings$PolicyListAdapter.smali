.class Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 128
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/settings/DeviceAdminSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 129
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DeviceAdminSettings$ViewHolder;

    .line 179
    .local v2, vh:Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    iget-object v3, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    iget-object v3, v3, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo;

    .line 180
    .local v1, item:Landroid/app/admin/DeviceAdminInfo;
    iget-object v3, v2, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceAdminSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v3, v2, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceAdminSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, v2, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    iget-object v4, v4, Lcom/android/settings/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    :try_start_0
    iget-object v3, v2, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceAdminSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 186
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "DeviceAdminSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindView "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 144
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 157
    if-nez p2, :cond_0

    .line 158
    invoke-virtual {p0, p3}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;I)V

    .line 163
    return-object v0

    .line 160
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 167
    iget-object v2, p0, Lcom/android/settings/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/android/settings/DeviceAdminSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 169
    .local v0, h:Lcom/android/settings/DeviceAdminSettings$ViewHolder;
    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 170
    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 171
    const v2, 0x7f0b0044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, v0, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 172
    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/settings/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 173
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    return-object v1
.end method
