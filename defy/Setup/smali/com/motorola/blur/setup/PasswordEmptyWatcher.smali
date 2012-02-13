.class public Lcom/motorola/blur/setup/PasswordEmptyWatcher;
.super Lcom/motorola/blur/setup/EmptyEditWatcher;
.source "PasswordEmptyWatcher.java"


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter "edit"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/EmptyEditWatcher;-><init>(Landroid/widget/TextView;)V

    .line 20
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onEmpty(Landroid/widget/TextView;)V
    .locals 1
    .parameter "edit"

    .prologue
    .line 28
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    return-void
.end method

.method protected onNotEmpty(Landroid/widget/TextView;)V
    .locals 1
    .parameter "edit"

    .prologue
    .line 36
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    return-void
.end method
