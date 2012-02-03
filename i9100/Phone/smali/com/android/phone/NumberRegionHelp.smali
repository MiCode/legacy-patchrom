.class public Lcom/android/phone/NumberRegionHelp;
.super Landroid/app/Activity;
.source "NumberRegionHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/android/phone/NumberRegionHelp;->setContentView(I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lcom/android/phone/NumberRegionHelp;->initViews()V

    .line 26
    return-void
.end method
