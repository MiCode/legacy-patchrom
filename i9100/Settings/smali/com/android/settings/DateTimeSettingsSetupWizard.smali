.class public Lcom/android/settings/DateTimeSettingsSetupWizard;
.super Lcom/android/settings/DateTimeSettings;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 38
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setResult(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->finish()V

    .line 40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/DateTimeSettings;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 33
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mNextButton:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method
