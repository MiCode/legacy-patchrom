.class public Lcom/android/settings/powersavingmode/PowerSavingModeTips;
.super Landroid/app/Activity;
.source "PowerSavingModeTips.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeTips;->setContentView(I)V

    .line 29
    return-void
.end method
