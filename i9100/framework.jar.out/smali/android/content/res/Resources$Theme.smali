.class public Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Theme"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mTheme:I

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1403
    iget-object v0, p1, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    .line 1404
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()I

    move-result v0

    iput v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    .line 1405
    return-void
.end method


# virtual methods
.method public applyStyle(IZ)V
    .locals 1
    .parameter "resid"
    .parameter "force"

    .prologue
    .line 1158
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(IIZ)V

    .line 1159
    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "priority"
    .parameter "tag"
    .parameter "prefix"

    .prologue
    .line 1394
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(IILjava/lang/String;Ljava/lang/String;)V

    .line 1395
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1398
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1399
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->releaseTheme(I)V

    .line 1400
    return-void
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 9
    .parameter "resid"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1224
    array-length v8, p2

    .line 1225
    .local v8, len:I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #calls: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1226
    .local v7, array:Landroid/content/res/TypedArray;
    iput-object p2, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1228
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, p1

    move v3, v1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1256
    return-object v7
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 11
    .parameter "set"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 1309
    array-length v9, p2

    .line 1310
    .local v9, len:I
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #calls: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v1, v9}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1316
    .local v8, array:Landroid/content/res/TypedArray;
    move-object v0, p1

    check-cast v0, Landroid/content/res/XmlBlock$Parser;

    move-object v10, v0

    .line 1317
    .local v10, parser:Landroid/content/res/XmlBlock$Parser;
    iget v1, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    if-eqz v10, :cond_0

    iget v2, v10, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    move v4, v2

    :goto_0
    iget-object v6, v8, Landroid/content/res/TypedArray;->mData:[I

    iget-object v7, v8, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, p3

    move v3, p4

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1322
    iput-object p2, v8, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1323
    iput-object v10, v8, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1354
    return-object v8

    .line 1317
    :cond_0
    const/4 v2, 0x0

    move v4, v2

    goto :goto_0
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 9
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 1194
    array-length v8, p1

    .line 1195
    .local v8, len:I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    #calls: Landroid/content/res/Resources;->getCachedStyledAttributes(I)Landroid/content/res/TypedArray;
    invoke-static {v0, v8}, Landroid/content/res/Resources;->access$000(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1196
    .local v7, array:Landroid/content/res/TypedArray;
    iput-object p1, v7, Landroid/content/res/TypedArray;->mRsrcs:[I

    .line 1197
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget-object v5, v7, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v7, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, v1

    move v3, v1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->applyStyle(IIII[I[I[I)Z

    .line 1199
    return-object v7
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 3
    .parameter "resid"
    .parameter "outValue"
    .parameter "resolveRefs"

    .prologue
    .line 1376
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget v2, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/content/res/AssetManager;->getThemeValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1383
    .local v0, got:Z
    return v0
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 1171
    iget v0, p0, Landroid/content/res/Resources$Theme;->mTheme:I

    iget v1, p1, Landroid/content/res/Resources$Theme;->mTheme:I

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->copyTheme(II)V

    .line 1172
    return-void
.end method
