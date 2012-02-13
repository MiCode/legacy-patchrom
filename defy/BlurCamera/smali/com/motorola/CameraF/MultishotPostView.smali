.class public Lcom/motorola/CameraF/MultishotPostView;
.super Landroid/app/Activity;
.source "MultishotPostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;
    }
.end annotation


# static fields
.field private static final DEF:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGrid:Landroid/widget/GridView;

.field private mImgAdapter:Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;

.field private mPosition:I

.field private mThumbUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "MultishotPostview"

    sput-object v0, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/MultishotPostView;->mPosition:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/CameraF/MultishotPostView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/motorola/CameraF/MultishotPostView;->mPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/CameraF/MultishotPostView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/CameraF/MultishotPostView;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/motorola/CameraF/MultishotPostView;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/CameraF/MultishotPostView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 139
    sget-object v1, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v1, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult():request code - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v1, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult():result code - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v1, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult():intent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    const/4 v1, -0x1

    if-ne v1, p2, :cond_7

    .line 145
    if-eqz p3, :cond_6

    .line 146
    const-string v1, "com.motorola.CameraF.Multishot"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, action:I
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 151
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing from list position= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/CameraF/MultishotPostView;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 155
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 158
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostView;->mImgAdapter:Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;

    invoke-virtual {v1}, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->notifyDataSetChanged()V

    .line 168
    .end local v0           #action:I
    :cond_3
    :goto_0
    return-void

    .line 160
    .restart local v0       #action:I
    :cond_4
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_5
    iget-object v1, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;

    iget v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    .end local v0           #action:I
    :cond_6
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult intent is NULL?????"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_7
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult RESULT CODE IS NOT RESULT_OK ; Dont do anything"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const-string v6, "mThumbUris="

    const-string v4, "com.motorola.CameraF.MultishotPostViewList"

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/MultishotPostView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.motorola.CameraF.MultishotPostViewList"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v3, "got the intent alright"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    const-string v2, "com.motorola.CameraF.MultishotPostViewList"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    .line 59
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mThumbUris="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;

    .line 68
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, index:I
    :goto_1
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 69
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anupam"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 61
    .end local v0           #index:I
    :cond_4
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v3, "Oops intent missing data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_5
    sget-object v2, Lcom/motorola/CameraF/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    .line 63
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mThumbUris="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_6
    const v2, 0x7f030016

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/MultishotPostView;->setContentView(I)V

    .line 75
    const-string v2, "Multishot Post view"

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/MultishotPostView;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    const v2, 0x7f0e0085

    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/MultishotPostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mGrid:Landroid/widget/GridView;

    .line 78
    new-instance v2, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;

    invoke-direct {v2, p0, p0}, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;-><init>(Lcom/motorola/CameraF/MultishotPostView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mImgAdapter:Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;

    .line 79
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/motorola/CameraF/MultishotPostView;->mImgAdapter:Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setClickable(Z)V

    .line 81
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 83
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostView;->mGrid:Landroid/widget/GridView;

    new-instance v3, Lcom/motorola/CameraF/MultishotPostView$1;

    invoke-direct {v3, p0}, Lcom/motorola/CameraF/MultishotPostView$1;-><init>(Lcom/motorola/CameraF/MultishotPostView;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 122
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v1, "onPause() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v1, "onResume(): Calling invalidate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostView;->mImgAdapter:Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;

    invoke-virtual {v0}, Lcom/motorola/CameraF/MultishotPostView$MultishotImageAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 108
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 111
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v1, "No imgaes to display just finish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/CameraF/MultishotPostView;->finish()V

    .line 116
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 131
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/CameraF/MultishotPostView;->TAG:Ljava/lang/String;

    const-string v1, "onStop() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    return-void
.end method

.method public setMultishotList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, thumbLocations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/motorola/CameraF/MultishotPostView;->mThumbUris:Ljava/util/ArrayList;

    .line 297
    return-void
.end method
