.class Lcom/android/settings/nfc/NfcEnabler$2$2;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcEnabler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/nfc/NfcEnabler$2;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcEnabler$2;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$2$2;->this$1:Lcom/android/settings/nfc/NfcEnabler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$2$2;->this$1:Lcom/android/settings/nfc/NfcEnabler$2;

    iget-object v0, v0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$2$2;->this$1:Lcom/android/settings/nfc/NfcEnabler$2;

    iget-object v0, v0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcEnabler;->access$300(Lcom/android/settings/nfc/NfcEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const v1, 0x7f080161

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 122
    return-void
.end method
