.class public Lcom/motorola/CameraF/MultishotPostSelectSingleImage;
.super Landroid/app/Activity;
.source "MultishotPostSelectSingleImage.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mPostText:Landroid/widget/TextView;

.field private mSelectedUri:Landroid/net/Uri;

.field private mSingleSelectImage:Landroid/widget/ImageView;

.field private mdel:Landroid/widget/Button;

.field private msetas:Landroid/widget/Button;

.field private mshare:Landroid/widget/Button;

.field private mupload:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "MultishotPostSelectSingleImage"

    sput-object v0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/MultishotPostSelectSingleImage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSelectedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 190
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 192
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    const-string v3, "onActivityResult() - Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult():request code - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult():result code - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    if-ne p2, v6, :cond_3

    .line 203
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mupload:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 204
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mupload:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 205
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    const/high16 v2, 0x7600

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 206
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mupload:Landroid/widget/Button;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 207
    iget-object v2, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mupload:Landroid/widget/Button;

    invoke-virtual {v2, v5, v0, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 210
    .end local v0           #draw:Landroid/graphics/drawable/Drawable;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "com.motorola.CameraF.Multishot"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity result com.motorola.CameraF.Multishot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_4
    invoke-virtual {p0, v6, v1}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->setResult(ILandroid/content/Intent;)V

    .line 216
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 184
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    const-string v1, "onClick() - ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mPostText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const-string v6, "com.motorola.CameraF.selectedImage"

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 37
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.motorola.CameraF.selectedImage"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 38
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    const-string v5, "got the intent alright"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    const-string v4, "com.motorola.CameraF.selectedImage"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSelectedUri:Landroid/net/Uri;

    .line 46
    :cond_1
    :goto_0
    const v4, 0x7f030015

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->setContentView(I)V

    .line 47
    const v4, 0x7f0e007f

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSingleSelectImage:Landroid/widget/ImageView;

    .line 48
    const v4, 0x7f0e0086

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mPostText:Landroid/widget/TextView;

    .line 50
    iget-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSelectedUri:Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 51
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URI is ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 53
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v4, 0x8

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 54
    const/4 v3, 0x0

    .line 56
    .local v3, src:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 61
    :goto_1
    iget-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSingleSelectImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #src:Landroid/graphics/Bitmap;
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mSingleSelectImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    const v4, 0x7f0e0081

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mshare:Landroid/widget/Button;

    .line 77
    iget-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mshare:Landroid/widget/Button;

    new-instance v5, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$1;

    invoke-direct {v5, p0}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$1;-><init>(Lcom/motorola/CameraF/MultishotPostSelectSingleImage;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v4, 0x7f0e0082

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->msetas:Landroid/widget/Button;

    .line 97
    iget-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->msetas:Landroid/widget/Button;

    new-instance v5, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$2;

    invoke-direct {v5, p0}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$2;-><init>(Lcom/motorola/CameraF/MultishotPostSelectSingleImage;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v4, 0x7f0e0083

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mupload:Landroid/widget/Button;

    .line 121
    iget-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mupload:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 122
    iget-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mupload:Landroid/widget/Button;

    new-instance v5, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$3;

    invoke-direct {v5, p0}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$3;-><init>(Lcom/motorola/CameraF/MultishotPostSelectSingleImage;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v4, 0x7f0e0084

    invoke-virtual {p0, v4}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mdel:Landroid/widget/Button;

    .line 134
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mdel is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mdel:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_4
    iget-object v4, p0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->mdel:Landroid/widget/Button;

    new-instance v5, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$4;

    invoke-direct {v5, p0}, Lcom/motorola/CameraF/MultishotPostSelectSingleImage$4;-><init>(Lcom/motorola/CameraF/MultishotPostSelectSingleImage;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void

    .line 42
    :cond_5
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    const-string v5, "Ooops intent does not have ANY data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 57
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #src:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 59
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 72
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #src:Landroid/graphics/Bitmap;
    :cond_6
    sget-boolean v4, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    const-string v5, "URI is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 170
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    const-string v1, "onPause() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 164
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 179
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/CameraF/MultishotPostSelectSingleImage;->TAG:Ljava/lang/String;

    const-string v1, "onStop() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void
.end method
