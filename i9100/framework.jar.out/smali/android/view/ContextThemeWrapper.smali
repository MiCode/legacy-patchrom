.class public Landroid/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private mBase:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "base"
    .parameter "themeres"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    .line 40
    iput p2, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 41
    return-void
.end method

.method private initializeTheme()V
    .locals 4

    .prologue
    .line 92
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 93
    .local v0, first:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 95
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 96
    .local v1, theme:Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_0

    .line 97
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 100
    .end local v1           #theme:Landroid/content/res/Resources$Theme;
    :cond_0
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v3, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 101
    return-void

    .line 92
    .end local v0           #first:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .parameter "newBase"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 67
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    :cond_0
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 63
    :goto_0
    return-object v0

    .line 58
    :cond_0
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    if-nez v0, :cond_1

    .line 59
    const v0, 0x1030005

    iput v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 61
    :cond_1
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    .line 63
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 89
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .parameter "resid"

    .prologue
    .line 49
    iput p1, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 50
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    .line 51
    return-void
.end method
