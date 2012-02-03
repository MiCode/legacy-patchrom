.class Lcom/android/settings/AccessibilitySettings$5;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 338
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$5;->this$0:Lcom/android/settings/AccessibilitySettings;

    iput-object p2, p0, Lcom/android/settings/AccessibilitySettings$5;->val$checkBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 340
    packed-switch p2, :pswitch_data_0

    .line 347
    const-string v0, "AccessibilitySettings"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    return v2

    .line 342
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$5;->val$checkBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$5;->val$checkBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 344
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
