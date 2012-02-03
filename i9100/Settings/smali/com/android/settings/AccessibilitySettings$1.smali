.class Lcom/android/settings/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$1;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$1;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mPowerButtonEndsCallCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$100(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$1;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$000(Lcom/android/settings/AccessibilitySettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 243
    return-void
.end method
