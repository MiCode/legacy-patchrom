.class Lcom/android/settings/LanguageSettings$3;
.super Ljava/lang/Object;
.source "LanguageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LanguageSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LanguageSettings;

.field final synthetic val$chkPref:Landroid/preference/CheckBoxPreference;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/LanguageSettings;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/settings/LanguageSettings$3;->this$0:Lcom/android/settings/LanguageSettings;

    iput-object p2, p0, Lcom/android/settings/LanguageSettings$3;->val$chkPref:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/LanguageSettings$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/LanguageSettings$3;->val$chkPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/LanguageSettings$3;->this$0:Lcom/android/settings/LanguageSettings;

    iget-object v1, p0, Lcom/android/settings/LanguageSettings$3;->val$id:Ljava/lang/String;

    #setter for: Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/LanguageSettings;->access$002(Lcom/android/settings/LanguageSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/android/settings/LanguageSettings$3;->this$0:Lcom/android/settings/LanguageSettings;

    invoke-virtual {v0}, Lcom/android/settings/LanguageSettings;->onPause()V

    .line 320
    return-void
.end method
