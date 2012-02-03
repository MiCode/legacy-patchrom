.class Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 265
    iput-object p3, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    .line 266
    return-void
.end method
