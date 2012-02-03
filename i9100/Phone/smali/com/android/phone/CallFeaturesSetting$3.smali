.class Lcom/android/phone/CallFeaturesSetting$3;
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
    .line 549
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 551
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 554
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "proximity_sensor"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #setter for: Lcom/android/phone/CallFeaturesSetting;->proximityChecked:Z
    invoke-static {v0, v3}, Lcom/android/phone/CallFeaturesSetting;->access$002(Lcom/android/phone/CallFeaturesSetting;Z)Z

    .line 558
    return-void
.end method
