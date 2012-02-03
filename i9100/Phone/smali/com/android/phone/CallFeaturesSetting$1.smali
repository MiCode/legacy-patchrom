.class Lcom/android/phone/CallFeaturesSetting$1;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 571
    return-void
.end method
