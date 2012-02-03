.class Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;
.super Ljava/lang/Object;
.source "UnlockTextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnlockTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/UnlockTextToSpeech;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/UnlockTextToSpeech;Lcom/android/internal/policy/impl/UnlockTextToSpeech$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;-><init>(Lcom/android/internal/policy/impl/UnlockTextToSpeech;)V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 90
    const-string v0, "UnlockTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit...TTS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLanguage:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultCountry:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mDefaultLocVariant:Ljava/lang/String;

    .line 99
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->access$102(Z)Z

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;->this$0:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->doSpeak()V

    .line 101
    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 3
    .parameter "utteranceId"

    .prologue
    .line 103
    const-string v0, "UnlockTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUtteranceCompleted...TTS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->destroy()V

    .line 105
    return-void
.end method
