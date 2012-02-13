.class public Lcom/motorola/CameraF/TagsSetting;
.super Landroid/app/Activity;
.source "TagsSetting.java"


# static fields
.field private static final MAX_TAGS_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MotoTagsSetting"

.field private static final TAGEDITREQ:I


# instance fields
.field private TAGSETTINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private alertDlg:Landroid/app/AlertDialog;

.field private mIsKeyWordOn:Z

.field private mIsLocationOn:Z

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mRemainText:Landroid/widget/TextView;

.field private mTagSetting:Landroid/widget/ListView;

.field private mTagSettingAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTagsEditText:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;

.field mtagEditorSet:Landroid/view/View;

.field remainClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/TagsSetting;->TAGSETTINGS:Ljava/util/List;

    .line 57
    iput-boolean v1, p0, Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z

    .line 58
    iput-boolean v1, p0, Lcom/motorola/CameraF/TagsSetting;->mIsLocationOn:Z

    .line 66
    new-instance v0, Lcom/motorola/CameraF/TagsSetting$1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/TagsSetting$1;-><init>(Lcom/motorola/CameraF/TagsSetting;)V

    iput-object v0, p0, Lcom/motorola/CameraF/TagsSetting;->remainClickListener:Landroid/view/View$OnClickListener;

    .line 214
    new-instance v0, Lcom/motorola/CameraF/TagsSetting$4;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/TagsSetting$4;-><init>(Lcom/motorola/CameraF/TagsSetting;)V

    iput-object v0, p0, Lcom/motorola/CameraF/TagsSetting;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/TagsSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/motorola/CameraF/TagsSetting;->mIsLocationOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/motorola/CameraF/TagsSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/motorola/CameraF/TagsSetting;->mIsLocationOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/CameraF/TagsSetting;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/CameraF/TagsSetting;->mTagSetting:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/CameraF/TagsSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/motorola/CameraF/TagsSetting;->checkGolbalLocationSetting()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/CameraF/TagsSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/CameraF/TagsSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/CameraF/TagsSetting;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/CameraF/TagsSetting;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkGolbalLocationSetting()V
    .locals 5

    .prologue
    .line 165
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getLocStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 167
    new-instance v1, Lcom/motorola/CameraF/TagsSetting$2;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/TagsSetting$2;-><init>(Lcom/motorola/CameraF/TagsSetting;)V

    .line 178
    .local v1, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/motorola/CameraF/TagsSetting$3;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/TagsSetting$3;-><init>(Lcom/motorola/CameraF/TagsSetting;)V

    .line 185
    .local v0, cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->alertDlg:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 186
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->alertDlg:Landroid/app/AlertDialog;

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->alertDlg:Landroid/app/AlertDialog;

    const v3, 0x7f0b005e

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/TagsSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->alertDlg:Landroid/app/AlertDialog;

    const v3, 0x7f0b005f

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/TagsSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->alertDlg:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    const v4, 0x7f0b0028

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/TagsSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 191
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->alertDlg:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    const v4, 0x7f0b0027

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/TagsSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 192
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->alertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 194
    .end local v0           #cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v1           #okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    return-void
.end method

.method private loadCustomTags()V
    .locals 5

    .prologue
    .line 197
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getAllTags()Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 199
    .local v1, loadedTags:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 201
    if-nez v0, :cond_0

    .line 202
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #loadedTags:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 200
    .restart local v1       #loadedTags:Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 209
    .end local v0           #i:I
    :cond_1
    iget-object v3, p0, Lcom/motorola/CameraF/TagsSetting;->mTagsEditText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v4, "MotoTagsSetting"

    .line 270
    if-nez p1, :cond_0

    .line 272
    if-nez p2, :cond_1

    .line 292
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 274
    .restart local p0
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3

    .line 275
    :cond_2
    const-string v2, "MotoTagsSetting"

    const-string v2, "no data found after activity return!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Tags"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 279
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_4

    .line 280
    const-string v2, "MotoTagsSetting"

    const-string v2, "No tags found in data!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_4
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->clearTags()V

    .line 284
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    .line 286
    const-string v2, "MotoTagsSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: get item ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/motorola/CameraF/CamSetting/CamSetting;->addNewTag(Ljava/lang/String;)Z

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "MotoTagsSetting"

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isCamSettingInit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoTagsSetting"

    const-string v2, "Camera setting not ready, finish setting activity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/TagsSetting;->finish()V

    .line 149
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/CameraF/TagsSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 106
    const-string v2, "orientation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, value:I
    if-eqz v1, :cond_3

    .line 109
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoTagsSetting"

    const-string v2, "orientation settings read from INTENT"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    if-ne v1, v7, :cond_4

    invoke-virtual {p0, v7}, Lcom/motorola/CameraF/TagsSetting;->setRequestedOrientation(I)V

    .line 115
    .end local v1           #value:I
    :cond_3
    :goto_1
    const v2, 0x7f03001c

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/TagsSetting;->setContentView(I)V

    .line 116
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->TAGSETTINGS:Ljava/util/List;

    invoke-virtual {p0}, Lcom/motorola/CameraF/TagsSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->TAGSETTINGS:Ljava/util/List;

    invoke-virtual {p0}, Lcom/motorola/CameraF/TagsSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const v2, 0x7f0e0090

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/TagsSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagSetting:Landroid/widget/ListView;

    .line 119
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTextView:Landroid/widget/TextView;

    .line 120
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTextView:Landroid/widget/TextView;

    const v3, 0x7f0b005d

    invoke-virtual {p0, v3}, Lcom/motorola/CameraF/TagsSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagSetting:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/motorola/CameraF/TagsSetting;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 122
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/CameraF/TagsSetting;->remainClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    const/16 v4, 0xa

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41b8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 126
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090010

    iget-object v4, p0, Lcom/motorola/CameraF/TagsSetting;->TAGSETTINGS:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagSettingAdapter:Landroid/widget/ArrayAdapter;

    .line 128
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagSetting:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/motorola/CameraF/TagsSetting;->mTagSettingAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagSetting:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 130
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagSetting:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/motorola/CameraF/TagsSetting;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isKeyWordTagsOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z

    .line 132
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isLocationOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/CameraF/TagsSetting;->mIsLocationOn:Z

    .line 133
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagSetting:Landroid/widget/ListView;

    iget-boolean v3, p0, Lcom/motorola/CameraF/TagsSetting;->mIsLocationOn:Z

    invoke-virtual {v2, v6, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 134
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagSetting:Landroid/widget/ListView;

    iget-boolean v3, p0, Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z

    invoke-virtual {v2, v7, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 137
    const v2, 0x7f0e0091

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/TagsSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mtagEditorSet:Landroid/view/View;

    .line 138
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mtagEditorSet:Landroid/view/View;

    iget-object v3, p0, Lcom/motorola/CameraF/TagsSetting;->remainClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v2, 0x7f0e0092

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/TagsSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagsEditText:Landroid/widget/TextView;

    .line 141
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagsEditText:Landroid/widget/TextView;

    const v3, 0x7f0b0031

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 142
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagsEditText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/CameraF/TagsSetting;->remainClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 145
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mtagEditorSet:Landroid/view/View;

    iget-boolean v3, p0, Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    iget-object v2, p0, Lcom/motorola/CameraF/TagsSetting;->mTagsEditText:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 147
    invoke-direct {p0}, Lcom/motorola/CameraF/TagsSetting;->checkGolbalLocationSetting()V

    goto/16 :goto_0

    .line 111
    .restart local v1       #value:I
    :cond_4
    invoke-virtual {p0, v6}, Lcom/motorola/CameraF/TagsSetting;->setRequestedOrientation(I)V

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 236
    iget-object v4, p0, Lcom/motorola/CameraF/TagsSetting;->mTagsEditText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, tag:Ljava/lang/String;
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    iget-boolean v4, p0, Lcom/motorola/CameraF/TagsSetting;->mIsKeyWordOn:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    :cond_0
    new-instance v2, Lcom/motorola/CameraF/TagsSetting$5;

    invoke-direct {v2, p0}, Lcom/motorola/CameraF/TagsSetting$5;-><init>(Lcom/motorola/CameraF/TagsSetting;)V

    .line 248
    .local v2, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/motorola/CameraF/TagsSetting$6;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/TagsSetting$6;-><init>(Lcom/motorola/CameraF/TagsSetting;)V

    .line 255
    .local v1, cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v4, 0x108008a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {p0}, Lcom/motorola/CameraF/TagsSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {p0}, Lcom/motorola/CameraF/TagsSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 260
    const v4, 0x7f0b0027

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    const v4, 0x7f0b0028

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 263
    const/4 v4, 0x1

    .line 265
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v1           #cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return v4

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 156
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->isCamSettingInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoTagsSetting"

    const-string v1, "Camera setting not ready, finish setting activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/TagsSetting;->finish()V

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/motorola/CameraF/TagsSetting;->loadCustomTags()V

    goto :goto_0
.end method
