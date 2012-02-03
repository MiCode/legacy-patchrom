.class public Landroid/app/SearchDialog$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1367
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 1368
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mThreshold:I

    .line 1369
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1372
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1373
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mThreshold:I

    .line 1374
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1377
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1378
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mThreshold:I

    .line 1379
    return-void
.end method

.method static synthetic access$400(Landroid/app/SearchDialog$SearchAutoComplete;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1362
    invoke-direct {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 1436
    iget v0, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 1417
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1419
    if-eqz p1, :cond_0

    .line 1420
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1422
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1425
    invoke-virtual {p0}, Landroid/app/SearchDialog$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/SearchDialog;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1426
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/SearchDialog$SearchAutoComplete;->ensureImeVisible(Z)V

    .line 1429
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1409
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1400
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 1383
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1384
    iput p1, p0, Landroid/app/SearchDialog$SearchAutoComplete;->mThreshold:I

    .line 1385
    return-void
.end method
