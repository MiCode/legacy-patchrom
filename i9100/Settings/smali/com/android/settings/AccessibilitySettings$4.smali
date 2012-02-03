.class Lcom/android/settings/AccessibilitySettings$4;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->handleEnableAccessibilityStateChange(Landroid/preference/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;

.field final synthetic val$checkBoxPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$4;->this$0:Lcom/android/settings/AccessibilitySettings;

    iput-object p2, p0, Lcom/android/settings/AccessibilitySettings$4;->val$checkBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$4;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$4;->val$checkBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$4;->this$0:Lcom/android/settings/AccessibilitySettings;

    #calls: Lcom/android/settings/AccessibilitySettings;->setAccessibilityServicePreferencesState(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/AccessibilitySettings;->access$200(Lcom/android/settings/AccessibilitySettings;Z)V

    .line 292
    return-void
.end method
