.class Lcom/android/settings/TextToSpeechSettings$2;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TextToSpeechSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
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
    .line 646
    iput-object p1, p0, Lcom/android/settings/TextToSpeechSettings$2;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings$2;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-virtual {v0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    return-void
.end method
