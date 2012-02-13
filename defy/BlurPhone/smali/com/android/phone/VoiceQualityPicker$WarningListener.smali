.class Lcom/android/phone/VoiceQualityPicker$WarningListener;
.super Ljava/lang/Object;
.source "VoiceQualityPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceQualityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WarningListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceQualityPicker;


# direct methods
.method private constructor <init>(Lcom/android/phone/VoiceQualityPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/VoiceQualityPicker$WarningListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/VoiceQualityPicker;Lcom/android/phone/VoiceQualityPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/phone/VoiceQualityPicker$WarningListener;-><init>(Lcom/android/phone/VoiceQualityPicker;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialogIFace"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/phone/VoiceQualityPicker$WarningListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/VoiceQualityPicker;->isWarningShown:Z
    invoke-static {v0, v1}, Lcom/android/phone/VoiceQualityPicker;->access$702(Lcom/android/phone/VoiceQualityPicker;Z)Z

    .line 186
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogIFace"
    .parameter "which"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/phone/VoiceQualityPicker$WarningListener;->this$0:Lcom/android/phone/VoiceQualityPicker;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/VoiceQualityPicker;->isWarningShown:Z
    invoke-static {v0, v1}, Lcom/android/phone/VoiceQualityPicker;->access$702(Lcom/android/phone/VoiceQualityPicker;Z)Z

    .line 182
    return-void
.end method
