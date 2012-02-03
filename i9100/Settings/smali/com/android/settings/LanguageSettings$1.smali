.class Lcom/android/settings/LanguageSettings$1;
.super Ljava/lang/Object;
.source "LanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LanguageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LanguageSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/LanguageSettings$1;->this$0:Lcom/android/settings/LanguageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/settings/LanguageSettings$1;->this$0:Lcom/android/settings/LanguageSettings;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/settings/LanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 73
    .local v0, inputMM:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 74
    const/4 v1, 0x1

    return v1
.end method
