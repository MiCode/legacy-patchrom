.class Lcom/android/settings/TextToSpeechSettings$5;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TextToSpeechSettings;->DeactivatePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TextToSpeechSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/settings/TextToSpeechSettings$5;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings$5;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-virtual {v0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 688
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings$5;->this$0:Lcom/android/settings/TextToSpeechSettings;

    #getter for: Lcom/android/settings/TextToSpeechSettings;->mDrivingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/TextToSpeechSettings;->access$200(Lcom/android/settings/TextToSpeechSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 689
    return-void
.end method
