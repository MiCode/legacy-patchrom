.class Lcom/android/settings/AccessibilitySettings$8;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->handleEnableAccessibilityServiceStateChange(Landroid/preference/CheckBoxPreference;)V
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
    .line 318
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$8;->this$0:Lcom/android/settings/AccessibilitySettings;

    iput-object p2, p0, Lcom/android/settings/AccessibilitySettings$8;->val$checkBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$8;->val$checkBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$8;->val$checkBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$8;->this$0:Lcom/android/settings/AccessibilitySettings;

    #calls: Lcom/android/settings/AccessibilitySettings;->persistEnabledAccessibilityServices()V
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$300(Lcom/android/settings/AccessibilitySettings;)V

    .line 323
    return-void
.end method
