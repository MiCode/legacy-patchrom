.class public abstract Lcom/motorola/blur/setup/EmptyEditWatcher;
.super Ljava/lang/Object;
.source "EmptyEditWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field protected final mEdit:Landroid/widget/TextView;

.field private mEmpty:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter "edit"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/EmptyEditWatcher;->mEmpty:Z

    .line 21
    iput-object p1, p0, Lcom/motorola/blur/setup/EmptyEditWatcher;->mEdit:Landroid/widget/TextView;

    .line 22
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iput-boolean v1, p0, Lcom/motorola/blur/setup/EmptyEditWatcher;->mEmpty:Z

    .line 29
    iget-object v0, p0, Lcom/motorola/blur/setup/EmptyEditWatcher;->mEdit:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/EmptyEditWatcher;->onEmpty(Landroid/widget/TextView;)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/blur/setup/EmptyEditWatcher;->mEmpty:Z

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/EmptyEditWatcher;->mEmpty:Z

    .line 32
    iget-object v0, p0, Lcom/motorola/blur/setup/EmptyEditWatcher;->mEdit:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/EmptyEditWatcher;->onNotEmpty(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 41
    return-void
.end method

.method protected abstract onEmpty(Landroid/widget/TextView;)V
.end method

.method protected abstract onNotEmpty(Landroid/widget/TextView;)V
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 43
    return-void
.end method
