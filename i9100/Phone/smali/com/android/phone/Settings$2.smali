.class Lcom/android/phone/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Settings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    return-void
.end method
