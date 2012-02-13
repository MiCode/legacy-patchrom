.class public Lcom/android/phone/SimMissingPanel;
.super Lcom/android/phone/SimPanel;
.source "SimMissingPanel.java"


# instance fields
.field mButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/SimPanel;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/phone/SimMissingPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SimMissingPanel$1;-><init>(Lcom/android/phone/SimMissingPanel;)V

    iput-object v0, p0, Lcom/android/phone/SimMissingPanel;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/phone/SimPanel;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/android/phone/SimMissingPanel;->setContentView(I)V

    .line 41
    const v0, 0x7f07015d

    invoke-virtual {p0, v0}, Lcom/android/phone/SimMissingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/SimMissingPanel;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
