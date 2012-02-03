.class public Lcom/android/settings/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field final mActivePolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field final mAddingPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminWarning:Landroid/widget/TextView;

.field mCancelButton:Landroid/widget/Button;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "visibility"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method getEllipsizedLines()I
    .locals 3

    .prologue
    .line 317
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 320
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x5

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const-string v7, "Unable to retrieve device policy "

    const-string v6, "DeviceAdminAdd"

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 91
    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 94
    const-string v4, "DeviceAdminAdd"

    const-string v4, "Can now start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 208
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 101
    .local v1, cn:Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 102
    const-string v4, "DeviceAdminAdd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No component specified in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 106
    :cond_1
    const-string v4, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 118
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 127
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    iput-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 129
    :try_start_1
    new-instance v4, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v4, p0, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 143
    const v4, 0x7f03001d

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->setContentView(I)V

    .line 145
    const v4, 0x7f0b0022

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mTitle:Landroid/widget/TextView;

    .line 146
    const v4, 0x7f0b003b

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    .line 147
    const v4, 0x7f0b003c

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    .line 148
    const v4, 0x7f0b003d

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 150
    const v4, 0x7f0b003f

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    .line 151
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    new-instance v5, Lcom/android/settings/DeviceAdminAdd$1;

    invoke-direct {v5, p0}, Lcom/android/settings/DeviceAdminAdd$1;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 160
    const v4, 0x7f0b0040

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    .line 161
    const v4, 0x7f0b0041

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 162
    const v4, 0x7f0b002c

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 163
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/DeviceAdminAdd$2;

    invoke-direct {v5, p0}, Lcom/android/settings/DeviceAdminAdd$2;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v4, 0x7f0b0042

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 169
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/DeviceAdminAdd$3;

    invoke-direct {v5, p0}, Lcom/android/settings/DeviceAdminAdd$3;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 120
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 121
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DeviceAdminAdd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retrieve device policy "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 130
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v3       #ri:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 131
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "DeviceAdminAdd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retrieve device policy "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 134
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 135
    .local v2, e:Ljava/io/IOException;
    const-string v4, "DeviceAdminAdd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retrieve device policy "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    .line 218
    packed-switch p1, :pswitch_data_0

    .line 235
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 220
    :pswitch_0
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 221
    .local v1, msg:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    const v2, 0x7f08038b

    new-instance v3, Lcom/android/settings/DeviceAdminAdd$4;

    invoke-direct {v3, p0}, Lcom/android/settings/DeviceAdminAdd$4;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    const v2, 0x7f08038c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->updateInterface()V

    .line 214
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 304
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 306
    .local v2, tv:Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 307
    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v3, :cond_1

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 308
    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 310
    const v3, 0x7f0b003e

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 311
    .local v1, iv:Landroid/widget/ImageView;
    iget-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v3, :cond_3

    const v3, 0x108018c

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    return-void

    .line 306
    .end local v1           #iv:Landroid/widget/ImageView;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 307
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 308
    :cond_2
    const/16 v3, 0xf

    goto :goto_2

    .line 311
    .restart local v1       #iv:Landroid/widget/ImageView;
    :cond_3
    const v3, 0x108018b

    goto :goto_3
.end method

.method updateInterface()V
    .locals 12

    .prologue
    const/16 v8, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 248
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 258
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    :goto_1
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 265
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    .line 266
    .local v3, policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 267
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 268
    .local v2, pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    .line 270
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 254
    .end local v1           #i:I
    .end local v2           #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    .end local v3           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v4           #view:Landroid/view/View;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 255
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 261
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 274
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 275
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 276
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f080517

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mTitle:Landroid/widget/TextView;

    const v6, 0x7f08050f

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f080510

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iput-boolean v10, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    .line 300
    :goto_3
    return-void

    .line 282
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 283
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    .line 284
    .restart local v3       #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 285
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 286
    .restart local v2       #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    .line 288
    .restart local v4       #view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 292
    .end local v1           #i:I
    .end local v2           #pi:Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    .end local v3           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v4           #view:Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 293
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/android/settings/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 294
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f080516

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mTitle:Landroid/widget/TextView;

    const v6, 0x7f080513

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v5, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f080514

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iput-boolean v11, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    goto :goto_3
.end method
