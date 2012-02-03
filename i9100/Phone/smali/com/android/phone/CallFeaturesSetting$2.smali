.class Lcom/android/phone/CallFeaturesSetting$2;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 560
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 564
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$2;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 565
    return-void
.end method
